void initEncoder() {
  attachInterrupt(digitalPinToInterrupt(encoderPinD), countEncoderD, RISING);
  attachInterrupt(digitalPinToInterrupt(encoderPinE), countEncoderE, RISING);

  // initialize timer1
  TCCR1A = 0;
  TCCR1B = 0;

  TCNT1 = nAlvo;            // preload timer 65536-16MHz/PRESC/?Hz
  TCCR1B &= B11111000; //zera os tres ultimos bits
  TCCR1B |= B00000101; //prescaler = 1024
  TIMSK1 |= (1 << TOIE1);   // enable timer overflow interrupt


  Serial.print("kRoda = ");
  Serial.println(kRoda);
}

void countEncoderD() {
  nPulsosD++;
}

void countEncoderE() {
  nPulsosE++;
}

ISR(TIMER1_OVF_vect) {
  velDreal = nPulsosD * kRoda;
  velEreal = nPulsosE * kRoda;

  nPulsosD = 0;
  nPulsosE = 0;

  TCNT1 = nAlvo;    // preload timer
}

void verificaEncoderParado() {
  if (velEreal != 0 || velDreal != 0) {
    for (int i = 0; i < 9999; i++) {
      digitalWrite(pin_led, HIGH);
      delay(10);
      digitalWrite(pin_led, LOW);
      delay(10);
    }
  }
}

void verficaEncoderAndando() {
  if (velEreal == 0 || velDreal == 0) {
    for (int i = 0; i < 9999; i++) {
      digitalWrite(pin_led, HIGH);
      delay(10);
      digitalWrite(pin_led, LOW);
      delay(10);
    }
  }
}

/*
  //funcao que calcula a tensao que sera mandada para os motores
  //uitilizando as velocidades desejadas e as velocidades lidas pelo encoder
  void ajustaVelocidade(int velE, int velD) {
  float kEnc = 0.2; //constante proporcional para o erro do encoder
  // o erro do encoder sera a diferenca das velocidades considerando
  // a posicao da linha, entao por exemplo, se a linha estiver no meio,
  // o erro sera a diferenca das velocidades, buscando deixar igual.
  int erroVelE = (velE - velEreal);
  int erroVelD = (velD - velDreal);

  tensaoEsq = (velE + erroVelE)*kEnc;
  tensaoDir = (velD + erroVelD)*kEnc;
  }
*/


//PID do encoder

void ajustaVelocidade(int velE, int velD) {
  erroE = velE - velEreal;

  //  uE = uE1 + (kpEnc + kdEnc) * erroE + (kiEnc - kpEnc - 2 * kdEnc) * erroE1 + kdEnc * erroE2;
  uE = erroE * kpEnc;
  erroE2 = erroE1;
  erroE1 = erroE;
  if (velE < 0) {
    if (uE < -90) {
      Serial.print("---Warning: uE = ");
      Serial.print(uE);
      Serial.println(", locking---");
      uE = -90;
    }
  }
  else {//if velE <= 0
    if (uE > 90) {
      Serial.print("---Reversal Warning: uE = ");
      Serial.print(uE);
      Serial.println(", locking---");
      uE = 90;
    }
  }
  uE1 = uE;

  tensaoEsq = uE;


  erroD = velD - velDreal;
  //  uD = uD1 + (kpEnc + kdEnc) * erroD + (kiEnc - kpEnc - 2 * kdEnc) * erroD1 + kdEnc * erroD2;
  uD = erroD * kpEnc;
  uD1 = uD;
  erroD2 = erroD1;
  erroD1 = erroD;

  tensaoDir = uD;


  //filtro de segurança para evitar tensões acima de 255 / abaixo de -255
  //Há um aviso, via serial, caso isso ocorra.
  if (tensaoEsq > 255 || tensaoEsq < -255) {
    Serial.print("---WARNING -- tensaoEsq = ");
    Serial.print(tensaoEsq);
    Serial.println(" - Lowering Voltage---");
    if (tensaoEsq > 255) tensaoEsq = 255;
    else if (tensaoEsq < -255) tensaoEsq = -255;
  }

  if (tensaoDir > 255 || tensaoDir < -255) {
    Serial.print("---WARNING -- tensaoDir = ");
    Serial.print(tensaoDir);
    Serial.println(" - Lowering Voltage---");
    if (tensaoDir > 255) tensaoDir = 255;
    else if (tensaoDir < -255) tensaoDir = -255;
  }
}
