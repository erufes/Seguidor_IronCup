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

void reduzVelocidade() {
  if (reduz > 30) {
    tensaoDir = 0;
    tensaoEsq = 0;
  }
    else {
    tensaoDir -= (reduz * 2);
    tensaoEsq -= (reduz * 2);
  }
  reduz--;
}

int PID(unsigned int linePosition) {
  int proportional = (int)linePosition - ((NUM_SENSORS-1)*1000)/2; //erro proporcional = 'posição atual da linha' - 'posição central'
  int derivative = proportional - last_proportional;
  last_proportional = proportional;
  int erro = proportional * 2 / 9
  + derivative * 5 / 4 ; //p = 15
  if (erro > VELMAX)
    erro = VELMAX;
  if (erro < -VELMAX)
    erro = -VELMAX;
  if(erro < 0){
    tensaoEsq = VELMAX + erro;
    tensaoDir = VELMAX;
  }
  else{
    tensaoEsq = VELMAX;
    tensaoDir = VELMAX - erro;
  }
  return erro;
}

//acionamento dos motores
void anda(int velE, int velD)
{
  //Serial.print("velE: ");
  if (velE >= VELMIN) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
    //Serial.print(velE);
  } else if (velE >= 0 && velE < VELMIN) {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], (250 - 6 * velE));
    //Serial.print(-(250 - 5 * velE));
  } else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  //Serial.print("  ");
  //Serial.print("velD: ");
  if (velD >= VELMIN) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], velD);
    //Serial.println(velD);
  } else if (velD >= 0 && velD < VELMIN) {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2],(250 - 6 * velD));
    //Serial.println(-(250 - 5 * velD));
  } else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], -velD);
  }
}

void andaPure(int velE, int velD)
{
  //Serial.print("velE: ");
  if (velE >= 0) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
    //Serial.print(velE);
  } 
  else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  //Serial.print("  ");
  //Serial.print("velD: ");
  if (velD >= 0) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], velD);
    //Serial.println(velD);
  }
  else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], -velD);
  }
}

//desliga os motores
void para()
{
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], LOW);
  analogWrite(motorEsq[2], 0);


  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], LOW);
  analogWrite(motorDir[2], 0);
}
