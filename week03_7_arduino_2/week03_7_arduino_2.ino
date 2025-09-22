// week03_7_arduino_2
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