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

void setup()
{
  delay(500);
  
 for(int i = 0; i<3; i++){
  pinMode(motorEsq[i], OUTPUT);
  pinMode(motorDir[i], OUTPUT);
 }
  
  para();
  for (int i = 0; i < 300; i++)
  {
    qtra.calibrate();
  }
  delay(300);
}


void loop()
{
  // read calibrated sensor values and obtain a measure of the line position from 0 to 7000
  // To get raw sensor values, call:
  //  qtra.read(sensorValues); instead of unsigned int position = qtra.readLine(sensorValues);
  unsigned int linePosition = qtra.readLine(sensorValues);

  // The "proportional" term should be 0 when we are on the line.
  int proportional = (int)linePosition - 3500;

  // Compute the derivative (change) and integral (sum) of the
  // position.
  int derivative = proportional - last_proportional;
  integral += proportional;

  // Remember the last position.
  last_proportional = proportional;

  // Compute the difference between the two motor power settings,
  // m1 - m2.  If this is a positive number the robot will turn
  // to the right.  If it is a negative number, the robot will
  // turn to the left, and the magnitude of the number determines
  // the sharpness of the turn.  You can adjust the constants by which
  // the proportional, integral, and derivative terms are multiplied to
  // improve performance.
  int power_difference = proportional/28;// + integral/50000 + derivative/100;

  // Compute the actual motor settings.  We never set either motor
  // to a negative value.
  int maximum = 130;

  if (power_difference > maximum)
    power_difference = maximum;
  if (power_difference < -maximum)
    power_difference = -maximum;

  if (power_difference < 0)
    anda(maximum + power_difference, maximum);
  else
    anda(maximum, maximum - power_difference);
}

//quando eh preciso fazer uma curva mais fechada o motor vai dar uma leve re na roda interna
void anda(int velE, int velD) 
{
  if (velE > 20){
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
  }else{
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], 20);
  }
  if (velD > 20){
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], velD);
  }else{
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], 20);
  }   
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
