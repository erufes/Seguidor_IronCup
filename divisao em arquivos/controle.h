#ifndef CONTROLE_H
#define CONTROLE_H

#include "pinagem.h"

#define VELMIN                  94   // velocidade minima
#define VELMAX                  200  // velocidade maxima

int PID(unsigned int linePosition, int last_proporcional);

//desliga os motores
void para();

void freia();

void reduzVelocidade();

void anda(int velE, int velD);

#endif