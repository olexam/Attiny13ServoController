/* settings:
 *  Board: ATtiny13
 *  Brown-out Detection Level: "1.8V"
 *  Link Time Optimalisation: "LTO Enabled"
 *  Processor Version: "ATtiny13"
 *  Processor Speed: "9.6MHz Internal Oscillator"
 *  Programmer: "Arduino as ISP"
 */

// #include <Button.h>

#define PHR A1              // pin for photoresistor connection
#define SERVO 0             // pin for servo connection
#define BTN 1               // pin for controll button
#define PHR_SENSETIVITY 75  // Photoresistor sensitivity level, less is lower

#define OPEN 90             // servo open position
#define CLOSED 150          // servo closed position

#define PULSES 20           // number of pulses sent to servo

#define BTN_TRIGGER_MODE;   // button mode: if trigger is enabled, servo switch position on click, if not, switch position to open while button down

byte mode = CLOSED;         //mode of servo open or closed

#ifdef BTN_TRIGGER_MODE
byte last_state = 0;        //last state of button
#endif

void setup(){  
  //-----setup up all pins-----
  pinMode(PHR, INPUT_PULLUP);
  pinMode(BTN, INPUT_PULLUP);
  pinMode(SERVO, OUTPUT);
  //-----setup up all pins-----
  
  #ifdef __AVR_ATtiny13__
  analogReference(0); //this line is essential for the Attiny13
  #endif
  moveServo(CLOSED);
}


void loop(){

  if(analogRead(PHR) < PHR_SENSETIVITY) {
    pulseOut(SERVO, OPEN);
    return;
  }

#ifdef BTN_TRIGGER_MODE
  if(check_button_pressed() == 1) {
    if (mode == CLOSED) { // open
      moveServo(OPEN);
      mode = 1;
    } else if (mode == 1) { //close
      moveServo(CLOSED);
      mode=CLOSED;
    }
  }
#else
  byte btnState = !digitalRead(BTN);
  if(mode == CLOSED && btnState == 1){
    moveServo(OPEN);
    mode = OPEN;
  }
  if(mode == OPEN && btnState == 0){
    moveServo(CLOSED);
    mode=CLOSED;
  }
#endif

}

void moveServo(byte degree) {
  for(byte i = 0; i < PULSES; i++) {
    pulseOut(SERVO, degree);
  }
}

void pulseOut(byte pin, byte p){
  digitalWrite(pin, HIGH);
  delayMicroseconds(map(p, 0, 180, 544, 2400));  
  digitalWrite(pin, LOW);
  delay(10);
}

#ifdef BTN_TRIGGER_MODE
byte check_button_pressed(){
  byte rtn = 0;
  byte state = !digitalRead(BTN);
  if(state == 1 && last_state == 0){
    rtn = 1;
  }
  
  last_state = state;

  return rtn;
}
#endif