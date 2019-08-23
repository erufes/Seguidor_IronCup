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

//funcao que calcula a tensao que sera mandada para os motores
//uitilizando o erro do PID e as velocidades lidas pelo encoder
void ajustaVelocidade(int erro){
  // o erro do encoder sera a diferenca das velocidades considerando
  // a posicao da linha, entao por exemplo, se a linha estiver no meio,
  // o erro sera a diferenca das velocidades, buscando deixar igual.
  int erroEncoder = velD - (velE + kEnc*erro);
  // a ideia eh ajustar as velocidades sempre deixando uma na VELMAX
  if(erroEncoder > 0){
    tensaoDir = VELMAX - erroEncoder;
    tensaoEsq = VELMAX;
  }
  if(erroEncoder < 0){
    tensaoDir = VELMAX;
    tensaoEsq = VELMAX + erroEncoder;
  }
}
