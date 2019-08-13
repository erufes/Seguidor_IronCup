#include "calibracao.h"
#include "leitura.h"

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao
int calibratedMAX[NUM_SENSORS];       // ^

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int leu_curva = 0;                    // qtd de vezes SEGUIDAS que o sensor de curva leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada

int tensaoEsq = 0, tensaoDir = 0;
int reduz = 0;                        // contador para deixar a velocidade reduzida
int lastValue;                        // ultima posicao da linha lida
unsigned int last_proportional = 0;

//********************************************************************

void setup() {

  setPinos();
  calibracao();
  posCalibracao();
  delay(500);

}

void loop() {

  int linePosition = readLine();

  confereChegada();

  int erro = PID(linePosition);

  if (erro < 0)
    tensaoEsq = VELMAX + erro;
  else
    tensaoDir = VELMAX - erro;

  if (confereCurva())
    reduz = 50;             //tempo para velocidade ficar reduzida
  if(reduz > 0)
    reduzVelocidade();

  anda(tensaoEsq, tensaoDir);

  confereSaiuDaLinha(linePosition);
}