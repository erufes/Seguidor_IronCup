#define NUM_SENSORS             8    // number of sensors used
#define NUM_SAMPLES_PER_SENSOR  4    // samples per sensor reading
#define VELMIN                  94   // velocidade minima
#define VELMAX                  150  // velocidade maxima

const int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
const int motorEsq[3] = {11, 10, 9};  // {dig, dig, pwm}
const int motorDir[3] = {5, 4, 3};    // {dig, dig, pwm}
const int pin_chegada = 12;            // sensor de linha de chegada
const int pin_curva = 2;//COLOCAR PINO              // sensor de curva
const int pin_led = 0;//COLOCAR PINO

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao
int calibratedMAX[NUM_SENSORS];       // ^

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int leu_curva = 0;                    // qtd de vezes SEGUIDAS que o sensor de curva leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada

int tensaoEsq = 0, tensaoDir = 0;
int reduz = 0;                        // contador para deixar a velocidade reduzida
int lastValue;                        // ultima posicao da linha lida
unsigned int last_proportional = 0;

//********************************************************************

void setup() {

  setPinos();
  calibracao();
  posCalibracao();
  delay(500);

}

void loop() {

  int linePosition = readLine();

  confereChegada();

  int erro = PID(linePosition);

  if (erro < 0) {
    tensaoEsq = VELMAX + erro;
    tensaoDir = VELMAX;
  }
  else {
    tensaoEsq = VELMAX;
    tensaoDir = VELMAX - erro;
  }
  
  if (confereCurva())
    reduz = 50;             //tempo para velo cidade ficar reduzida
  if(reduz > 0)
    reduzVelocidade();
  
  anda(tensaoEsq, tensaoDir);

  confereSaiuDaLinha(linePosition);
}
