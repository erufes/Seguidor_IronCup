unsigned int sensors[7]; // an array to hold sensor values
unsigned int maxcalib[7];
unsigned int mincalib[7];
unsigned int last_proportional = 0;
long integral = 0;

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
  unsigned int position = readLine(sensors);

  // The "proportional" term should be 0 when we are on the line.
  int proportional = (int)position - 2000;

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
  const int maximum = 200 ;
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

}

void setSpeeds(int esq, int dir){

}

void preCalibration(int* maxcalib, int* mincalib){
  for(int i = 0; i < 7; i++){
    maxcalib[i] = 0;
    mincalib[i] = 1024;
  }
}

void calibrateLineSensors(int* maxcalib, int* mincalib){
  int value[7];
  value[0] = analogRead();
  value[1] = analogRead();
  value[2] = analogRead();
  value[3] = analogRead();
  value[4] = analogRead();
  value[5] = analogRead();
  value[6] = analogRead();

  for(int i = 0; i<7; i++){
    if(value[i] > maxcalib[i])
      maxcalib[i] = value[i];
    if(value[i] < mincalib[i])
      mincalib[i] = value[i];
  }
}

unsigned int readLine(sensors){

}
