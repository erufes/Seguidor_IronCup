void setPinos() {
  pinMode(pin_chegada, INPUT);
  pinMode(pin_curva, INPUT);
  pinMode(pin_led, OUTPUT);
  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();
}
