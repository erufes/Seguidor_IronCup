#define NUM_SAMPLES_PER_SENSOR  4    // samples per sensor reading
#define VELMIN                  95   // velocidade minima
#define VELMAX                  150  // velocidade maxima
#define USANDO_PLACA_VERMELHA        //Se usando placa vermelha, deixe essa linha aqui. Se não, comente ela

#ifdef USANDO_PLACA_VERMELHA
#define NUM_SENSORS             8    // number of sensors used
const int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
#else
#define NUM_SENSORS             6    // number of sensors used
const int sensor[NUM_SENSORS] = {A5, A4, A3, A2, A1, A0};   //sensores de linha
#endif

const int pin_chegada = 12;           // sensor de linha de chegada
const int pin_curva = 11;              // sensor de curva
const int pin_led = 13;

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao minimos
int calibratedMAX[NUM_SENSORS];       // valores de calibracao maximos

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int leu_curva = 0;                    // qtd de vezes SEGUIDAS que o sensor de curva leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada
int lastValue;                        // ultima posicao da linha lida



void setup()
{
  delay(500);
  pinMode(pin_led, OUTPUT);
  pinMode(pin_chegada, INPUT);
  pinMode(pin_curva, INPUT);
  Serial.begin(9600); // set the data rate in bits per second for serial data transmission
  calibracao1();
  printaCalibracao();
  delay(1000);
}


void loop()
{
  int linePosition = readLine();

  for (unsigned char i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(values[i]);
    Serial.print('\t'); // tab to format the raw data into columns in the Serial monitor
  }
  Serial.print("linha: ");
  Serial.print(linePosition);
  Serial.print(" chegada: ");
  Serial.print(digitalRead(pin_chegada));
  Serial.print(" curva: ");
  Serial.print(digitalRead(pin_curva));
  Serial.println();

  delay(20);
}


//==============================================================================================

//le os sensores e calcula a posicao da linha
int readLine()
{
  int linePosition = 0, on_line = 0;
  long int value;
  unsigned long avg = 0; // this is for the weighted total, which is long before division
  unsigned long sum = 0; // this is for the denominator which is <= 64000

  for (int j = 0; j < NUM_SENSORS; j++) {
    int samples = 0;
    for (int i = 0; i < NUM_SAMPLES_PER_SENSOR; i++) {
      value = analogRead(sensor[j]);
      samples += value;
    }
    value = samples / NUM_SAMPLES_PER_SENSOR;
    //calcula o valor de acordo com a calibracao
    value = ((value - calibratedMIN[j]) * 1000) / (calibratedMAX[j] - calibratedMIN[j]);
    
    //PARA LINHA BRANCA:
    //value = 1000 - value;
    
    values[j] = value;
    if (values[j] < 5) values[j] = 0;
    // keep track of whether we see the line at all
    if (value > 400) {
      on_line = 1;
    }
    // only average in values that are above a noise threshold
    if (value > 50) {
      avg += (long)(value) * 1000 * j;
      sum += value;
    }
  }
  if (!on_line)
  {
    // If it last read to the left of center, return 0.
    if (lastValue < (NUM_SENSORS - 1) * 1000 / 2)
      return 0;
    // If it last read to the right of center, return the max.
    else
      return (NUM_SENSORS - 1) * 1000;
  }
  lastValue = avg / sum;
  return lastValue;
}

void calibracao1() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  digitalWrite(pin_led, HIGH);
  for (int i = 0; i < 4; i++)
  {
//    if (i % 2 == 0)
//      anda(VELMIN, -VELMIN - 5);
//    else
//      anda(-VELMIN - 5, VELMIN);
    for (int j = 0; j < 13 ; j++) {
      calibrate();
    }
  }
  //para();
  digitalWrite(pin_led, LOW);
}

void calibracao2() {
  for (int i = 0; i < NUM_SENSORS; i++) {
    calibratedMIN[i] = 999;
    calibratedMAX[i] = 0;
  }
  //digitalWrite(pin_led, HIGH);
  for (int i = 0; i < 3; i++) {
    while (!digitalRead(pin_curva)) {
      //anda(VELMIN, -VELMIN - 5);
      calibrate();
    }
    while (!digitalRead(pin_chegada)) {
      //anda(-VELMIN - 5, VELMIN);
      calibrate();
    }
  }
  //para();
  //digitalWrite(pin_led, LOW);
}

//le os sensores e compara com os valores maximos e minimos
//essa funcao eh rodada varias vezes na calibracao
void calibrate() {
  for (int k = 0; k < 10; k++) {
    int value;
    int soma;
    for (int j = 0; j < NUM_SENSORS; j++) {
      value = analogRead(sensor[j]);

      if (value > calibratedMAX[j])
        calibratedMAX[j] = value;
      if (value < calibratedMIN[j])
        calibratedMIN[j] = value;
    }
    delay(8);
  }
}

//printa os valores de calibracao
void printaCalibracao() {
  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMIN[i]);
    Serial.print(' ');
  }
  Serial.println();

  for (int i = 0; i < NUM_SENSORS; i++)
  {
    Serial.print(calibratedMAX[i]);
    Serial.print(' ');
  }
  Serial.println();
  Serial.println();
}
