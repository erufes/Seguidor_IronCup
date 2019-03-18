#include <QTRSensors.h>

#define NUM_SENSORS             8  // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4  // average 4 analog samples per sensor reading
#define EMITTER_PIN             2  // emitter is controlled by digital pin 2

QTRSensorsAnalog qtra((unsigned char[]) {
  A0, A1, A2, A3, A4, A5, A7, A6
},
NUM_SENSORS, NUM_SAMPLES_PER_SENSOR, EMITTER_PIN);

unsigned int sensorValues[NUM_SENSORS];
unsigned int last_proportional = 0;
long integral = 0;
const int motorEsq[3] = {7, 6, 5};    //tem que ver a pinagem!
const int motorDir[3] = {9, 10, 11};

void setup()
{
  delay(500);

  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();
  Serial.begin(9600);
  Serial.println("comecou calibracao!");
  for (int i = 0; i < 5; i++)
  {
    if (i % 2 == 0) {
      anda(40, -40);
    } else {
      anda(-40, 40);
    }
    for (int j = 0; j < 30 ; j++) {
      qtra.calibrate();
    }
  }


  //PRINTA VALORES DE CALIBRACAO

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(qtra.calibratedMinimumOn[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(qtra.calibratedMaximumOn[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();

  posCalibracao();

  delay(800);
}


void loop()
{

  unsigned int linePosition = qtra.readLine(sensorValues);

  for (unsigned char i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(sensorValues[i]);
    Serial.print('\t');
  }
  Serial.println(linePosition);

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


//funcao que faz o robo girar para encontrar a linha e centralizar
void posCalibracao() {

  unsigned int linePosition;
  
  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = qtra.readLine(sensorValues);
    int erro = (linePosition - 3500) / 9;
    if (erro > 150) erro = 150;
    if (erro < -150) erro = -150;
    anda(erro, -erro);
  }


}
