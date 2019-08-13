#ifndef PINAGEM_H
#define PINAGEM_H

const int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
const int motorEsq[3] = {11, 10, 9};  // {dig, dig, pwm}
const int motorDir[3] = {5, 4, 3};    // {dig, dig, pwm}
const int pin_chegada = 12;           // sensor de linha de chegada
const int pin_curva = 2;              // sensor de curva
//const int pin_led = ;

void setPinos();

#endif