#ifndef CALIBRACAO_H
#define CALIBRACAO_H

#include "controle.h"

//a funcao de calibracao em si
void calibracao();

//le os sensores e compara com os valores maximos e minimos
//essa funcao eh rodada varias vezes na calibracao
void calibrate();

//procurar a linha e centralizar apos a calibracao
void posCalibracao();

//printa os valores de calibracao
void printaCalibracao();

#endif