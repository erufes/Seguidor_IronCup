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
  for (int i = 0; i < 5; i++)
  {
    if (i % 2 == 0) {
      anda(37, -33);
    } else {
      anda(-37, 33);
    }
    for (int j = 0; j < 26 ; j++) {
      qtra.calibrate();
    }
  }

  posCalibracao();

  delay(800);
}


void loop()
{

  unsigned int linePosition = qtra.readLine(sensorValues);

  int proportional = (int)linePosition - 3500;

  int derivative = proportional - last_proportional;
  integral += proportional;

  last_proportional = proportional;

  int power_difference = proportional*2/18 + integral/10000 + derivative*4/3;

  const int maximum = 160;

  if (power_difference > maximum)
    power_difference = maximum;
  if (power_difference < -maximum)
    power_difference = -maximum;

  if (power_difference < 0)
    anda(maximum + power_difference, maximum);
  else
    anda(maximum, maximum - power_difference);

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


//funcao que faz o robo girar para encontrar a linha e centralizar
void posCalibracao() {

  unsigned int linePosition;
  
  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = qtra.readLine(sensorValues);
    int erro = (int)(linePosition - 3500) / 14;
    if (erro > 45) erro = 45;
    if (erro < -45) erro = -45;
    anda(erro, -erro);
  }
  para();

}
