/*
  Breno Odnan
  ERUS - Equipe de RObótica da UFES

  Código final para leitura de encoders

  Crédito a RobotFreak pelo código exemplo de uso de timers
  more infos: http://www.letmakerobots.com/node/28278

  Status: Funcional

  
*/
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

const int motorEsq[3] = {9, 8, 5};    // {dig, dig, pwm} //CONFERIR SE ESTA CERTO! - Foi Conferido 06/09/2019
const int motorDir[3] = {10, 7, 6};   // {dig, dig, pwm}
const int pin_chegada = 12;           // sensor de linha de chegada
const int pin_curva = 11;              // sensor de curva
const int pin_led = 13;               // led para indicar estados/erros
const int pin_botao = 4;              // botao para acionar o robo

int values[NUM_SENSORS];              // leituras atuais dos sensores
int calibratedMIN[NUM_SENSORS];       // valores de calibracao minimos
int calibratedMAX[NUM_SENSORS];       // valores de calibracao maximos

int saiu = 0;                         // indica se o robo nao esta na linha
int leu_chegada = 0;                  // qtd de vezes SEGUIDAS que o sensor de chegada leu preto
int leu_curva = 0;                    // qtd de vezes SEGUIDAS que o sensor de curva leu preto
int passou_chegada = 0;               // qtd de vezes que passou a marcacao de chegada

int tensaoEsq = 0, tensaoDir = 0;
int reduz = 0;                        // contador para deixar a velocidade reduzida
int lastValue;                        // ultima posicao da linha lida
unsigned int last_proportional = 0;
//Variáveis de Contagem de pulsos

const byte encoderPinA = 2;
const byte encoderPinB = 3;
volatile long int nPulsosA = 0;
volatile long int nPulsosB = 0;


//Variáveis de temporização:
long int N_OVF = 65535L;                  //número máximo de pulsos contados pelo timer (16 bits)
long int tAlvo = 50L;                      //tempo a se cronometrar, em segundos
long int FREQ_CLK = 16000000L;          //frequencia do clock
long int PRESC = 1024L;                   //Valor do prescaler
long int nAlvo = N_OVF -  (FREQ_CLK / PRESC) * ((float)tAlvo / 1000); //número de pulsos a se cronometrar


//Variáveis para cálculo de velocidade
volatile int velA = 0;
volatile int velB = 0;

const int nDentes = 10;
const float Diametro = 2.33;//em cm
const float kRoda = (1000 * PI * Diametro) / (nDentes*tAlvo); //tAlvo em ms

void setup() {
  attachInterrupt(digitalPinToInterrupt(encoderPinA), countEncoderA, RISING);
  attachInterrupt(digitalPinToInterrupt(encoderPinB), countEncoderB, RISING);

  // initialize timer1
  TCCR1A = 0;
  TCCR1B = 0;

  TCNT1 = nAlvo;            // preload timer 65536-16MHz/PRESC/?Hz
  TCCR1B &= B11111000; //zera os tres ultimos bits
  TCCR1B |= B00000101; //prescaler = 1024
  TIMSK1 |= (1 << TOIE1);   // enable timer overflow interrupt

  Serial.begin(9600);
  Serial.print("kRoda = ");
  Serial.println(kRoda);
  setPinos();
}

void loop() {
  anda(255, 255);
  Serial.print(60 * (velA/(PI * Diametro)));
  Serial.print("  ");
  Serial.println(60 * (velB/(PI * Diametro)));
  delay(100);
}

void countEncoderA() {
  nPulsosA++;
}

void countEncoderB() {
  nPulsosB++;
}

ISR(TIMER1_OVF_vect) {
  velA = nPulsosA * kRoda;
  velB = nPulsosB * kRoda;

  nPulsosA = 0;
  nPulsosB = 0;

  TCNT1 = nAlvo;            // preload timer
}
