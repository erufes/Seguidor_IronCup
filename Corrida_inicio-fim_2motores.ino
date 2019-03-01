#include <QTRSensors.h>

#define NUM_SENSORS             8  // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4  // average 4 analog samples per sensor reading
#define EMITTER_PIN             2  // emitter is controlled by digital pin 2

QTRSensorsAnalog qtra((unsigned char[]) {A0, A1, A2, A3, A4, A5, A7, A6},
  NUM_SENSORS, NUM_SAMPLES_PER_SENSOR, EMITTER_PIN);

unsigned int sensorValues[NUM_SENSORS];
unsigned int proportional = 0;
unsigned int last_proportional = 0;
long integral = 0;
const int motorEsq[3] = {6, 7, 5};
const int motorDir[3] = {10, 9, 11};

int pin_linha_chegada = 8;
int linha_chegada = 0;

void setup() {
  Serial.begin(9600);

  delay(500);

 for(int i = 0; i<3; i++){
  pinMode(motorEsq[i], OUTPUT);
  pinMode(motorDir[i], OUTPUT);
 }

  para();
  //calibração manual?
  for (int i = 0; i < 300; i++)
  {
    qtra.calibrate();
  }
  delay(300);

}



void loop() {
  //Aguardar botão

  //Começar corrida
  while(!linha_chegada){
  // ------CÓDIGO DE CONTROLE AQUI------
thgfbgtfrhntrghtehteh
}//in progress
}
