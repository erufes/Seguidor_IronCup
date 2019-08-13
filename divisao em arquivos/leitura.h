#ifndef LEITURA_H
#define LEITURA_H

#include "pinagem.h"

#define NUM_SENSORS             8    // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4    // samples per sensor reading

//le os sensores e calcula a posicao da linha
int readLine();

void confereSaiuDaLinha(unsigned int linePosition);

void confereChegada();

int confereCurva();

#endif