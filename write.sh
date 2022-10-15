#!/bin/bash

PRG=usbtinyisp
BRD=diy_attiny:avr:attiny13_diy

arduino-cli burn-bootloader -b $BRD -P $PRG
arduino-cli compile Attiny13ServoController.ino -u -b $BRD -P $PRG
