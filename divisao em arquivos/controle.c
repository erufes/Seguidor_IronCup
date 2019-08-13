#include "controle.h"

int last_proportional = 0;
int tensaoEsq = 0, tensaoDir = 0;
int reduz = 0;                        // contador para deixar a velocidade reduzida

int PID(unsigned int linePosition) {
  int proportional = (int)linePosition - 3500;
  int derivative = proportional - last_proportional;
  last_proportional = proportional;
  int erro = proportional * 2 / 21 + derivative * 5 / 8;
  if (erro > VELMAX)
    return VELMAX;
  if (erro < -VELMAX)
    return -VELMAX;
  return erro;
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

void freia() {
  digitalWrite(motorEsq[0], LOW);
  digitalWrite(motorEsq[1], HIGH);
  analogWrite(motorEsq[2], 240);
  digitalWrite(motorDir[0], LOW);
  digitalWrite(motorDir[1], HIGH);
  analogWrite(motorDir[2], 240);
  delay(500);
  para();
}

void reduzVelocidade() {
  if (reduz > 30) {
    tensaoDir = 0;
    tensaoEsq = 0;
  }
  else {
    tensaoDir -= (reduz * 2);
    tensaoEsq -= (reduz * 2);
  }
  reduz--;
}

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