// week07-3_arduino_blink
void setup() {
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
}

void loop() {
  for(int i=10; i<=13; i++){
  digitalWrite(13, LOW);
  digitalWrite(i-1, LOW);
  digitalWrite(i, HIGH);
  delay(500);
  }
}
