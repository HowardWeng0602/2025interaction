//week06_3_Example_Analysis_PitchDetection

import processing.sound.*;

PitchDetector pitchDetector;
int i;

void setup(){
  size(640, 320);
  background(0);
  
  pitchDetector = new PitchDetector(this);
  // capture audio input
  
}

void draw(){
  
