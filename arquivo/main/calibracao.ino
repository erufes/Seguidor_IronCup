void calibracao1() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  digitalWrite(pin_led, HIGH);
  for (int i = 0; i < 4; i++)
  {
    if (i % 2 == 0)
      anda(VELMIN, -VELMIN - 5);
    else
      anda(-VELMIN - 5, VELMIN);
    for (int j = 0; j < 13 ; j++) {
      calibrate();
    }
  }
  para();
  digitalWrite(pin_led, LOW);
}

void calibracao2() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  digitalWrite(pin_led, HIGH);
  for (int i = 0; i < 3; i++) {
    while (!digitalRead(pin_curva)) {
      anda(VELMIN, -VELMIN - 5);
      calibrate();
    }
    while (!digitalRead(pin_chegada)) {
      anda(-VELMIN - 5, VELMIN);
      calibrate();
    }
  }
  para();
  digitalWrite(pin_led, LOW);
}

//com encoder
void calibracao3(){
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  digitalWrite(pin_led, HIGH);
  for (int i = 0; i < 3; i++) {
    while (!digitalRead(pin_curva)) {
      ajustaVelocidade(1, -1);
      anda(tensaoEsq, tensaoDir);
      calibrate();
    }
    while (!digitalRead(pin_chegada)) {
      ajustaVelocidade(-1, 1);
      anda(tensaoEsq, tensaoDir);
      calibrate();
    }
  }
  para();
  digitalWrite(pin_led, LOW);
}

//le os sensores e compara com os valores maximos e minimos
//essa funcao eh rodada varias vezes na calibracao
void calibrate() {
  for (int k = 0; k < 10; k++) {
    int value;
    int soma;
    for (int j = 0; j < NUM_SENSORS; j++) {
      value = analogRead(sensor[j]);

      if (value > calibratedMAX[j])
        calibratedMAX[j] = value;
      if (value < calibratedMIN[j])
        calibratedMIN[j] = value;
    }
    delay(8);
  }
}

//procurar a linha e centralizar apos a calibracao
void posCalibracao() {
  
  verificaEncoderParado(); 

  unsigned int linePosition;

  //enquanto a posição da linha for aproximadamente no centro  (aproximadamente = +-50)
  while (linePosition < (((NUM_SENSORS - 1) * 1000) / 2) - 50 || linePosition > (((NUM_SENSORS - 1) * 1000) / 2) + 50) {
    linePosition = readLine();
    int erro = (int)(linePosition - ((NUM_SENSORS - 1) * 1000) / 2) / 2; //erro = 'posição da linha atual' - 'posição central'
    if (erro > VELMIN) erro = VELMIN + 5;
    if (erro < -VELMIN) erro = -VELMIN - 5;
    anda(erro, -erro);
  }
  para();
  //ficar parado ate o botao ser apertado
  while(!digitalRead(pin_botao)){
    delay(50);
    digitalWrite(pin_led, HIGH);
    delay(50);
    digitalWrite(pin_led, LOW);  
  }
}

//printa os valores de calibracao
void printaCalibracao() {
  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMIN[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMAX[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();
}
