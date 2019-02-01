int sensors[7]; // an array to hold sensor values
int maxcalib[7];
int mincalib[7];
unsigned int last_proportional = 0;
long integral = 0;

//pinos:

//[direção1, direção2, velocidade]
const int motorA[3] = {};
const int motorB[3] = {};
////[sensor1, sensor2, ...]
const int pinosSensores[7] = {};

int linePosition;//indica posição da linha

void setup()
{
  unsigned int counter; // used as a simple timer

  waitForRelease();
  delay(500);

  // Auto-calibration: turn right and left while calibrating the
  // sensors.
  preCalibration(maxcalib, mincalib);
  for (counter=0; counter<80; counter++)
  {
    if (counter < 20 || counter >= 60)
      setSpeeds(40, -40);
    else
      setSpeeds(-40, 40);

    // This function records a set of sensor readings and keeps
    // track of the minimum and maximum values encountered.
    calibrateLineSensors(maxcalib, mincalib);
    delay(20);
  }

  setSpeeds(0, 0);

  waitForRelease();
  delay(100);
}


void loop()
{
  // Get the position of the line.  Note that we *must* provide
  // the "sensors" argument to read_line() here, even though we
  // are not interested in the individual sensor readings.
  linePosition = readLine();

  // The "proportional" term should be 0 when we are on the line.
  int proportional = (int)linePosition - 2000;

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
  int power_difference = proportional*2/20 + integral/10000 + derivative*17/10;

  // Compute the actual motor settings.  We never set either motor
  // to a negative value.
  const int maximum = 200;
  if (power_difference > maximum)
    power_difference = maximum;
  if (power_difference < -maximum)
    power_difference = -maximum;

  if (power_difference < 0)
    setSpeeds(maximum + power_difference, maximum);
  else
    setSpeeds(maximum, maximum - power_difference);
}


void waitForRelease(){
  unsigned char button_pressed = 0;
  do{
    button_pressed = digitalRead(button);
  }while(!button_pressed);
  return;
}

void setSpeeds(int esq, int dir){
  digitalWrite(motorA[0], HIGH);
  digitalWrite(motorA[1], LOW);
  digitalWrite(motorB[0], HIGH);
  digitalWrite(motorB[1], LOW);

  analogWrite(motorA[2], esq);
  analogWrite(motorB[2], dir);
}

void preCalibration(){
  for(int i = 0; i < 7; i++){
    maxcalib[i] = 0;
    mincalib[i] = 1024;
  }
}

void calibrateLineSensors(){
  int value[7];

  for(int i = 0; i < 7; i++){
    value[i] = analogRead(pinosSensores[i]);
    if(value[i] > maxcalib[i])
      maxcalib[i] = value[i];
    if(value[i] < mincalib[i])
      mincalib[i] = value[i];
  }
}

int readLine(){
  int i = 0;
  sensors_num = 0;
  sensors_dem = 0;

  for(i = 0; i < 5; i++){
    sensors[i] = analogRead(pinosSensores[i]);
  }
  //calibração utilizando map. Valores iguais ou acima do maxcalib serão considerados 1000
  //e valores menores que o mincalib serão considerados 0
  for(i = 0; i < 5; i++){
      sensors[i] = map(sensors[i], mincalib[i], maxcalib[i], 0, 1000);
      //failsafe against values beyond expected calibrated limits
      if(sensors[i] < 0) sensors[i] = 0;
      else if(sensors[i] > 1000) sensors[i] = 1000;
  }

  for (i = 0; i < 5; i++){
    sensors_num += sensors[i]*i;
  }
  for(i = 0; i < 5; i++){
    sensors_dem += sensors[i];
  }
  return sensor_num/sensors_dem;
}
