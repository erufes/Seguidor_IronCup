#define NUM_SENSORS             8  // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4  // average 4 analog samples per sensor reading
#define VELMIN 75

int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //conferir pinagem!
const int motorEsq[3] = {11, 10, 9};                        //
const int motorDir[3] = {5, 4, 3};                      //

int values[NUM_SENSORS];
int calibratedMinimum[NUM_SENSORS];
int calibratedMaximum[NUM_SENSORS];
int lastValue;


//***************************************************************

void setup()
{
  delay(500);

  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();

  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMinimum[i] = 999;
    calibratedMaximum[i] = 0;
  }

  Serial.begin(9600);
  Serial.println("comecou calibracao!");

  for (int i = 0; i < 6; i++)
  {
    //    if (i % 2 == 0) {
    //      anda(33, -33);
    //    } else {
    //      anda(-33, 33);
    //    }
    for (int j = 0; j < 15 ; j++) {
      calibrate();
    }
  }

  printaCalibracao();

  //posCalibracao();

  delay(800);
}


void loop()
{
  int lineposition = readLine();

  for (int i = 0; i < NUM_SENSORS; i++) {
    Serial.print(values[i]);
    Serial.print(" ");
  }
  Serial.print(lineposition);
  Serial.print("\n");
}





//***************************************************************

void calibrate() {
  for (int k = 0; k < 10; k++) {
    int value;
    int soma;
    for (int j = 0; j < NUM_SENSORS; j++) {
      value = analogRead(sensor[j]);

      if (value > calibratedMaximum[j])
        calibratedMaximum[j] = value;
      if (value < calibratedMinimum[j])
        calibratedMinimum[j] = value;
    }
    delay(8);
  }
}

//funcao que faz o robo procurar a linha e ficar no centro
void posCalibracao() {

  unsigned int linePosition;

  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = readLine();
    int erro = (int)(linePosition - 3500) / 14;
    Serial.println(erro);
    if (erro > 45) erro = 45;
    if (erro < -45) erro = -45;
    anda(erro, -erro);
  }
  para();
}

//printa os valores maximos e mininos da calibracao
void printaCalibracao() {
  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMinimum[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMaximum[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();
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
    value = ((value - calibratedMinimum[j]) * 1000) / (calibratedMaximum[j] - calibratedMinimum[j]);
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

void anda(int velE, int velD)
{
  if (velE > 0) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
  } else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  if (velD > 0) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], velD);
  } else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], -velD);
  }
}

void para()
{
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], LOW);
  analogWrite(motorEsq[2], 0);


  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], LOW);
  analogWrite(motorDir[2], 0);
}
