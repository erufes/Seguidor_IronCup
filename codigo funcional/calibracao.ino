void calibracao() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  for (int i = 0; i < 4; i++)
  {
    if (i % 2 == 0)
      anda(VELMIN, -VELMIN - 5);
    else
      anda(-VELMIN - 5, VELMIN);
    for (int j = 0; j < 15 ; j++) {
      calibrate();
    }
  }
  para();
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

  unsigned int linePosition;

  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = readLine();
    int erro = (int)(linePosition - 3500) / 2;
    if (erro > VELMIN) erro = VELMIN + 5;
    if (erro < -VELMIN) erro = -VELMIN - 5;
    anda(erro, -erro);
  }
  para();

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
