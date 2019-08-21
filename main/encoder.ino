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
  velD = nPulsosD * kRoda;
  velE = nPulsosE * kRoda;

  nPulsosD = 0;
  nPulsosE = 0;

  TCNT1 = nAlvo;            // preload timer
}

void ajustaVelocidade(int erro){
  int erroEncoder = velD - (velE + kEnc*erro);
  if(erroEncoder > 0){
    tensaoDir = VELMAX - erroEncoder;
    tensaoEsq = VELMAX;
  }
  if(erroEncoder < 0){
    tensaoDir = VELMAX;
    tensaoEsq = VELMAX + erroEncoder;
  }
}
