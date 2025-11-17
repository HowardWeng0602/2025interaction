//week11-1_arduino_serial_joystick_x_y_to_processing_better
//week10-7_arduino_serial_joystick_x_y_to_processing

void setup(){
  Serial.begin(9600);
  pinMode(2, INPUT_PULLUP);
  pinMode(8, OUTPUT);
}
int count = 0, totalX = 0, totalY = 0;
int x0 = 512, y0 = 512;
void loop(){
  delay(30);
  int x = analogRead(A2);
  int y = analogRead(A3);
  if(count<20) {
    totalX += x;
    totalY += y;
    count++;
    x0 = totalX / count;
    y0 = totalY / count;
  } 
//Serial.write(x/4);
//Serial.write(y/4);
  if (abs(x-x0) < 15) x = 128; 
  else x = (x-x0)/4+128;
  if (abs(y-0) < 15) y = 128; 
  else y = (y-y0)/4+128;
  Serial.write(x);
  Serial.write(y);
  if(x>200) tone(8, 784, 100);
  if(x<50) tone(8, 523, 100);
  if(y>200) tone(8, 659, 100);
  if(y<50) tone(8, 500, 100); 
}

//week11-1_processing_serial_joystick_x_y_better
//修改自week10-7_processing_serial_joystick_x_y
import processing.serial.*;
Serial myPort;
void setup(){
  size(512, 512);
  myPort = new Serial(this, "COM7", 9600);

}
int  x = 128, y = 128;
void draw(){
  background(#FFFFA0);
  ellipse(x*2, y*2, 8, 8);
  if(myPort.available() > 0) {
    x = myPort.read();
    y = myPort.read();
    println("x:" + x + "y:" + y ) ; 
    
  }

}
