// week03_7_arduino_
void setup(){
  Serial.begin(9600);
  pinMode(8, OUTPUT)
}

void serialEvent(){
  while(Serial.available()) {
    Serial.read();
    tone(8, 800, 200);
  }
}
void loop() {
  
}