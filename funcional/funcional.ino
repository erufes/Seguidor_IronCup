#define NUM_SAMPLES_PER_SENSOR  3     // samples per sensor reading
#define VELMIN                  45   // velocidade minima
#define VELMAX                  180   // velocidade maxima
#define COR                      0    // cor da linha(branca:0 / preta: 1)
#define USANDO_PLACA_VERMELHA        //Se usando placa vermelha, deixe essa linha aqui. Se não, comente ela

#ifdef USANDO_PLACA_VERMELHA
#define NUM_SENSORS             8    // number of sensors used
const int sensor[NUM_SENSORS] = {A7, A6, A5, A4, A3, A2, A1, A0};   //sensores de linha
#else
#define NUM_SENSORS             6    // number of sensors used
const int sensor[NUM_SENSORS] = {A5, A4, A3, A2, A1, A0};   //sensores de linha
#endif 

const int motorEsq[3] = {9, 8, 5};    // {dig, dig, pwm} //CONFERIR SE ESTA CERTO! - Foi Conferido 06/09/2019
const int motorDir[3] =  {10, 7, 6};   // {dig, dig, pwm}
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
int curva_recente = 0;
int chegada_recente = 0;
int cancela_marcacao = 0;

int tensaoEsq = 0, tensaoDir = 0;
int reduz = 0;                        // contador para deixar a velocidade reduzida
int lastValue;                        // ultima posicao da linha lida
unsigned int last_proportional = 0;

//********************************************************************

void setup() {

  setPinos();
  calibracao2();
  posCalibracao();
  delay(500);
  //Serial.begin(9600);
}

void loop() {
  
  int linePosition = readLine();

  confereChegada();

  int erro = PID(linePosition);
  
  if(confereCurva())
    cancela_marcacao = 0;
//    reduz = 50;             //tempo para velocidade ficar reduzida
//  if(reduz > 0)
//    reduzVelocidade();
  anda(250, 250);
  confereSaiuDaLinha(linePosition);
}
