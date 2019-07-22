#define NUM_SENSORS             8    // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4    // samples per sensor reading
#define VELMIN                  75   // velocidade minima
#define VELMAX                  160  // velocidade maxima

int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
const int motorEsq[3] = {11, 10, 9};  // {dig, dig, pwm}
const int motorDir[3] = {5, 4, 3};    // {dig, dig, pwm}
const int pin_chegada = 2;            // sensor de linha de chegada

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao
int calibratedMAX[NUM_SENSORS];       // ^

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada

int lastValue;                        // ultima posicao da linhas
unsigned int last_proportional = 0;

//********************************************************************

void setup() {

  pinMode(pin_chegada, INPUT);
  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();

  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  for (int i = 0; i < 6; i++)
  {
    if (i % 2 == 0)
      anda(VELMIN, -VELMIN - 5);
    else
      anda(-VELMIN - 5, VELMIN);
    for (int j = 0; j < 15 ; j++) {
      calibrate();
    }
  }
  posCalibracao();
  delay(500);
}

//********************************************************************

void loop() {

  int linePosition = readLine();

  int read1 = digitalRead(pin_chegada);
  if (read1) {
    if (!saiu) //verifica se estamos no caminho certo
      leu_chegada++;
  } else
    leu_chegada = 0;
  if (leu_chegada == 7)
    passou_chegada++;
  if(passou_chegada == 2){
    para();
    delay(99999);
  }


  int proportional = (int)linePosition - 3500;
  int derivative = proportional - last_proportional;
  last_proportional = proportional;
  int power_difference = proportional * 2 / 21 + derivative * 5 / 8;
  if (power_difference > VELMAX)
    power_difference = VELMAX;
  if (power_difference < -VELMAX)
    power_difference = -VELMAX;
  if (power_difference < 0)
    anda(VELMAX + power_difference, VELMAX);
  else
    anda(VELMAX, VELMAX - power_difference);

  if (linePosition == 0 || linePosition == 7000) {
    saiu++;
    if (saiu > 200) {
      para();
      delay(99999);
    }
  }
  else
    saiu = 0;
}

//********************************************************************

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
    values[j] = value;
    if (values[j] < 5) values[j] = 0;
    // keep track of whether we see the line at all
    if (value > 200) {
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

//acionamento dos motores
void anda(int velE, int velD)
{
  if (velE >= 40) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
  } else if (velE >= 0 && velE < 40) {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], 180 + 4 * velE);
  } else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  if (velD >= 40) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], (int)(1.09 * velD));
  } else if (velD >= 0 && velD < 40) {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], (int)(1.09 * (180 + 4 * velD)));
  } else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], (int)(1.09 * (-velD)));
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
