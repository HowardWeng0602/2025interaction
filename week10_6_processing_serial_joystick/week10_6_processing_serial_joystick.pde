// week10_6_processing_serial_joystick
void setup(){
  size(500, 500);
  rectMode(CENTER);
}
int x = 250, y = 400;
float dx = 0;
void draw(){
  background(#FFFFA0);
  rect(x, y, 100, 20);
  if( myPort.available() > 0 ){
    now = myPort.read();
    dx = (now-128)/10.0 // -128 ~ +127
    if(abs(dx)<0.21) dx = 0;
    println(dx);
  }
  x += dx;
 }
