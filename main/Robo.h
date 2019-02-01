#ifndef _ROBO_H
#define _ROBO_H

#include <iostream>

class Robo{
private:
  Tcr tcr0;
  Tcr tcr1;
  Tcr tcr2;
  Tcr tcr3;
  Tcr tcr4;
public:
  unsigned int ler_sensores(unsigned int* valores_sensor);
};

#endif
