#include <QTRSensors.h>
//------CONSTANTES------
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

const int pin_linha_chegada = 8;

//------VARIÁVEIS------
int linha_chegada = 0;

int read = 0, lastread = 0;//leituras de linha de chegada

int t0 = 0;//variável de temporizador

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
  last_read = digitalRead(pin_linha_chegada);

  while(){//loop de corrida
    // ------CÓDIGO DE CONTROLE AQUI------
    //------CÓDIGO DE CONTROLE AQUI------ FIM

    //colocar filtro de curva aqui
    read = digitalRead(pin_linha_chegada);
    if(linePosition >= 0 && linePosition <= 7000){//verifica se estamos no caminho certo
      if(millis() - t0 > 2000){//verifica estouro de timer
        if(read != lastread){
          if(!last_read && read){
            //detecta borda de subida com sucesso
            linha_chegada = 1;
            t0 = millis();//inicia timer
          }
          last_read = read;
        }
      }
    }
  }
  //protocolo de parada
}
