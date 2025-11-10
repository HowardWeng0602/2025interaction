// week10_2_arduino_pin2_switch_tone
void setup(){}
  pinMode(2, INPUT_PULLUP);

}

void loop(){
  if(digitalRead(2)==LOW){
    tone(8, 523, 100);
    delay(100);
    tone(8, 784, 100);
    delay(100);
  }
}
