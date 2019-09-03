void initEncoder(){
  attachInterrupt(digitalPinToInterrupt(encoderPinD), countEncoderD, RISING);
  attachInterrupt(digitalPinToInterrupt(encoderPinE), countEncoderE, RISING);

  // initialize timer1
  TCCR1A = 0;
  TCCR1B = 0;

  TCNT1 = nAlvo;            // preload timer 65536-16MHz/PRESC/?Hz
  TCCR1B &= B11111000; //zera os tres ultimos bits
  TCCR1B |= B00000101; //prescaler = 1024
  TIMSK1 |= (1 << TOIE1);   // enable timer overflow interrupt
  
  
  //Serial.print("kRoda = ");
  //Serial.println(kRoda);
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

//funcao que calcula a tensao que sera mandada para os motores
//uitilizando as velocidades desejadas e as velocidades lidas pelo encoder
void ajustaVelocidade(int velE, int velD){
  // o erro do encoder sera a diferenca das velocidades considerando
  // a posicao da linha, entao por exemplo, se a linha estiver no meio,
  // o erro sera a diferenca das velocidades, buscando deixar igual.
  int erroVelE = (velE - velEreal) * kEnc;
  int erroVelD = (velD - velDreal) * kEnc;
  
    tensaoDir = velE + erroVelE;
    tensaoEsq = velD + erroVelD;
}

/*
 * 
 * //PID do encoder
void ajustaVelocidade(int velE, int velD){

  int proporcionalE = velE - velEreal;
  int derivativeE = proporcionalE - lastProporcionalE;
  lastProporcionalE = proporcionalE;

  int proporcionalD = velD - velDreal;
  int derivativeD = proporcionalD - lastProporcionalD;
  lastProporcionalD = proporcionalD;

  int erroVelE = proporcionalE * kpEnc + derivativeE * kdEnc;
  int erroVelD = proporcionalD * kpEnc + derivativeD * kdEnc;
  
  tensaoDir = velE + erroVelE;
  tensaoEsq = velD + erroVelD;
}
*/
