//le os sensores e calcula a posicao da linha
int readLine()
{
  int linePosition = 0, on_line = 0;
  long int value;
  unsigned long avg = 0; // this is for the weighted total, which is long before division
  unsigned long sum = 0; // this is for the denominator which is <= 64000

  for (int j = 0; j < NUM_SENSORS; j++) {
    int samples = 0;
    for (int i = 0; i < NUM_SAMPLES_PER_SENSOR; i++) {
      value = analogRead(sensor[j]);
      samples += value;
    }
    value = samples / NUM_SAMPLES_PER_SENSOR;
    //calcula o valor de acordo com a calibracao
    value = ((value - calibratedMIN[j]) * 1000) / (calibratedMAX[j] - calibratedMIN[j]);

    //PARA LINHA BRANCA:
    if (!COR)
      value = 1000 - value;

    values[j] = value;
    if (values[j] < 5) values[j] = 0;
    // keep track of whether we see the line at all
    if (value > 400) {
      on_line = 1;
    }
    // only average in values that are above a noise threshold
    if (value > 50) {
      avg += (long)(value) * 1000 * j;
      sum += value;
    }
  }
  if (!on_line)
  {
    // If it last read to the left of center, return 0.
    if (lastValue < (NUM_SENSORS - 1) * 1000 / 2)
      return 0;
    // If it last read to the right of center, return the max.
    else
      return (NUM_SENSORS - 1) * 1000;
  }
  lastValue = avg / sum;
  return lastValue;
}

//confere a marcacao de chegada, se ler duas vezes o robo para por pelo menos 10 seg
void confereChegada(int linePosition) {
  if (chegada_recente > 0) {
    chegada_recente--;
    if (chegada_recente == 0) {
      if (!cancela_marcacao && (millis() - tempo_chegada) > FILTRO_TEMPO ){
        passou_chegada++;
        digitalWrite(pin_led, HIGH);
        delay(30);
        digitalWrite(pin_led, LOW);
        //Serial.println((millis() - tempo_chegada));
        tempo_chegada = millis();
      }
      cancela_marcacao = 0;
    }
  }

  if (digitalRead(pin_chegada) == COR) {
    if (!saiu && !curva_recente) {
      //if (linePosition > 1500 && linePosition < 5500)
        leu_chegada++;
    }
    else {
      //curva_recente = 0;
      cancela_marcacao = 1;
    }
  } else {
    leu_chegada = 0;
  }
  if (leu_chegada == 3)
    chegada_recente = 40;

  if (passou_chegada == 2) {
    para();
    for (int i = 0; i < 52; i++) { //parar pelo menos 10 segundos
      digitalWrite(pin_led, HIGH);
      delay(100);
      digitalWrite(pin_led, LOW);
      delay(100);
    }
    passou_chegada = 0;
  }
}

//confere a marcacao de curva
int confereCurva(int linePosition) {
  if (curva_recente > 0) {
    curva_recente--;
    if (curva_recente == 0) {
      if (!cancela_marcacao)
        return 1;
    }
  }
  if (digitalRead(pin_curva) == COR) {
    if (!saiu && !chegada_recente) { //verifica se esta seguindo a linha
      //if (linePosition > 1500 && linePosition < 5500)
        leu_curva++;
    }
    else {
      //chegada_recente = 0;
      cancela_marcacao = 1;
    }
  }
  else {
    leu_curva = 0;
  }
  if (leu_curva == 4)
    curva_recente = 40;
  else
    return 0;
}

//se nao estiver vendo a linha por um certo tempo, o robo para
void confereSaiuDaLinha(unsigned int linePosition) {
  if (linePosition == 0 || linePosition == (NUM_SENSORS - 1) * 1000) {
    saiu++;
    if (saiu > 400) {
      para();
      //ficar parado ate o botao ser apertado
      while (!digitalRead(pin_botao)) {
        delay(50);
        digitalWrite(pin_led, HIGH);
        delay(50);
        digitalWrite(pin_led, LOW);
      }
    }
  }
  else
    saiu = 0;
}
