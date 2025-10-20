// week07_5_arduino_analogWrite_rgb_led
void setup(){
  pinMode(3, OUTPUT);
  
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
}


void loop() {
  analogWrite(6, 0);
  analogWrite(3, 255);
  delay(500);
  analogWrite(3, 0);
  analogWrite(5, 255);
  delay(500);
  analogWrite(5,0);
  analogWrite(6, 255);
  delay(500);
  // put your main code here, to run repeatedly:

}
