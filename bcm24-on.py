#!/usr/bin/env python3

#
# Filename: bcm24-on.py
# Date: 2019.10.21
# Author: Robin Greig
# Function: Turns gpio pin 24 on
#

import RPi.GPIO as GPIO

pinNum = 24

GPIO.setwarnings(False) # stop warnings from displaying
GPIO.setmode(GPIO.BCM) # numbering scheme that represents breakout boards & broadcom pin layout
GPIO.setup(pinNum,GPIO.OUT) # sets variable pinNum to an output

GPIO.output(pinNum,GPIO.HIGH) # turn pinNum on


