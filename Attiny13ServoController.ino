/* settings:
 *  Board: ATtiny13
 *  Brown-out Detection Level: "1.8V"
 *  Link Time Optimalisation: "LTO Enabled"
 *  Processor Version: "ATtiny13"
 *  Processor Speed: "9.6MHz Internal Oscillator"
 *  Programmer: "Arduino as ISP"
 */

#define PHR A1   //photoresistor for set position of servo
#define SERVO 0   //pin for servo connection
#define BTN 1   //pin for mode button

byte last_state = 0;   //last state of button
byte pos = 0;   //current position of mode


void setup(){  
  //Serial.begin(9600);
  //-----setup up all pins-----
  pinMode(PHR, INPUT);
  pinMode(SERVO, OUTPUT);
  pinMode(BTN, INPUT_PULLUP);
  //-----setup up all pins-----
  
  #ifdef __AVR_ATtiny13__
  analogReference(0);//this line is essential for the Attiny13
  #endif
}


void loop(){
/*
  //-----potentiometer mode-----
  if(pos == 0){   
    int val = analogRead(PHR);   
     
    if(val < 5) val = 5;   //ignore first 10 steps
    if(val > 1018) val = 1018;   //ignore last 13 steps
    val = 180-map(val, 5, 1018, 0, 180);
    
    pulseOut(SERVO, val);
  
    if(check_change_mode() == 1) pos = 1;
  }
  //-----potentiometer mode-----
*/

  //-----auto mode-----
  for(byte a = 0; a < 180; a ++){
    pulseOut(SERVO, a);
    
    if(check_change_mode() == 1){
      pos = 2;
      break;    
    }
    delay(20);
  }
  delay(10);
  
  if(pos == 1){
    for(byte a = 180; a > 0; a --){
      pulseOut(SERVO, a);
      delay(20);
    }
    delay(10);
  }
  //-----auto mode-----

  delay(20);
}



void pulseOut(byte pin, byte p){
  digitalWrite(pin, HIGH);
  delayMicroseconds(map(p, 0, 180, 544, 2400));  
  digitalWrite(pin, LOW);
}

/*
void delay_us(int tm){
  //while(tm --){
    delayMicroseconds(tm);
  //}
}
*/

byte check_change_mode(){
  byte rtn = 0;
  byte state = !digitalRead(BTN);
  if(state == 1 && last_state == 0){
    rtn = 1;
  }
  
  last_state = state;

  return rtn;
}
