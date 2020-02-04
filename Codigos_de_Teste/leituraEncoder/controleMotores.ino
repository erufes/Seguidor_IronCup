void anda(int velE, int velD) {
  digitalWrite(motorEsq[0], HIGH);
  digitalWrite(motorEsq[1], LOW);
  analogWrite(motorEsq[2], velE);

  digitalWrite(motorDir[0], HIGH);
  digitalWrite(motorDir[1], LOW);
  analogWrite(motorDir[2], velD);
}

void para() {
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], LOW);
  analogWrite(motorEsq[2], 0);


  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], LOW);
  analogWrite(motorDir[2], 0);
}

void freia() {
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], HIGH);
  analogWrite(motorEsq[2], 240);
  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], HIGH);
  analogWrite(motorDir[2], 240);
  delay(150);
  para();
}
