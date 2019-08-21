void initEncoder(){
  attachInterrupt(digitalPinToInterrupt(encoderPinA), countEncoderA, RISING);
  attachInterrupt(digitalPinToInterrupt(encoderPinB), countEncoderB, RISING);

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

void countEncoderA() {
  nPulsosA++;
}

void countEncoderB() {
  nPulsosB++;
}

ISR(TIMER1_OVF_vect) {
  velA = nPulsosA * kRoda;
  velB = nPulsosB * kRoda;

  nPulsosA = 0;
  nPulsosB = 0;

  TCNT1 = nAlvo;            // preload timer
}
