#define NUM_SENSORS             7  // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4  // average 4 analog samples per sensor reading

int sensor[NUM_SENSORS] = {A0, A1, A2, A3, A4, A5, A6};   //conferir pinagem!
const int motorEsq[3] = {7, 6, 5};
const int motorDir[3] = {9, 10, 11};  

unsigned int values[NUM_SENSORS];
int calibratedMinimum[NUM_SENSORS];
int calibratedMaximum[NUM_SENSORS];

//unsigned int last_proportional = 0;
//long integral = 0;



//***************************************************************

void setup()
{
  delay(500);

  for (int i = 0; i < 3; i++) {
    pinMode(motorEsq[i], OUTPUT);
    pinMode(motorDir[i], OUTPUT);
  }
  para();
  Serial.begin(9600);
  Serial.println("comecou calibracao!");
  for (int i = 0; i < 5; i++)
  {
    if (i % 2 == 0) {
      anda(33, -33);
    } else {
      anda(-33, 33);
    }
    for (int j = 0; j < 22 ; j++) {
      calibrate();
    }
  }

for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMinimum[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMaximum[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();

  posCalibracao();

  delay(800);
}








//***************************************************************

void anda(int velE, int velD)
{
  if (velE > 0) {
    digitalWrite(motorEsq[0], HIGH);
    digitalWrite(motorEsq[1], LOW);
    analogWrite(motorEsq[2], velE);
  } else {
    digitalWrite(motorEsq[0], LOW);
    digitalWrite(motorEsq[1], HIGH);
    analogWrite(motorEsq[2], -velE);
  }
  if (velD > 0) {
    digitalWrite(motorDir[0], HIGH);
    digitalWrite(motorDir[1], LOW);
    analogWrite(motorDir[2], velD);
  } else {
    digitalWrite(motorDir[0], LOW);
    digitalWrite(motorDir[1], HIGH);
    analogWrite(motorDir[2], -velD);
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


void calibrate(){
	int value;
	int soma = 0;
	for(int j = 0; j < NUM_SENSORS; j++){
		for(int i = 0; i < NUM_SAMPLES_PER_SENSOR){
			value = analogRead(sensor[j]);
			soma += value;
	}
	value = soma / NUM_SENSORS;
	if(value > calibratedMaximum[j])
		calibratedMaximum[j] = value;
	if(value < calibratedMinimum[j])
		calibratedMinimum[j] = value;
}

//funcao que faz o robo procurar a linha e ficar no centro
void posCalibracao() {

  unsigned int linePosition;
  
  while (linePosition < 3450 || linePosition > 3550) {
    linePosition = qtra.readLine(sensorValues);
    int erro = (int)(linePosition - 3500) / 14;
    Serial.println(erro);
    if (erro > 45) erro = 45;
    if (erro < -45) erro = -45;
    anda(erro, -erro);
  }
  para();

}
