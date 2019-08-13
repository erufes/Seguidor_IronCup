#include "calibracao.h"
#include "leitura.h"


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