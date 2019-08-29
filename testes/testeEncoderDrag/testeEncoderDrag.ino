// se for usar o led, coloca o pino certo e descomenta o pedaço do loop.
// esse codigo eh para testar o encoder na pista de drag,
// testar e ajustar o valor de kEnc,
// será que haverá necessidade de mudar as constantes do PID também?

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

const int motorEsq[3] = {11, 10, 9};  // {dig, dig, pwm}
const int motorDir[3] = {5, 4, 3};    // {dig, dig, pwm}
const int pin_chegada = 12;            // sensor de linha de chegada
const int pin_curva = 2;//COLOCAR PINO              // sensor de curva
//const int pin_led = 0;//COLOCAR PINO

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

//Variáveis de Contagem de pulsos
const byte encoderPinD = 2;
const byte encoderPinE = 3;
volatile long int nPulsosD = 0;
volatile long int nPulsosE = 0;

//Variáveis de temporização:
long int N_OVF = 65535L;                  //número máximo de pulsos contados pelo timer (16 bits)
long int tAlvo = 1000L;                      //tempo a se cronometrar, em segundos
long int FREQ_CLK = 16000000L;          //frequencia do clock
long int PRESC = 1024L;                   //Valor do prescaler
long int nAlvo = N_OVF -  (FREQ_CLK / PRESC) * ((float)tAlvo / 1000); //número de pulsos a se cronometrar

//Variáveis para cálculo de velocidade
volatile int velD = 0;
volatile int velE = 0;
const int nDentes = 10;
const float Diametro = 2.33;//em cm
const float kRoda = (1000 * PI*Diametro) / (nDentes*tAlvo); //tAlvo em ms
const float kEnc = 0; //constante proporcional para o erro do encoder

//********************************************************************

void setup() {

  setPinos();
  calibracao2();
  posCalibracao();
  delay(500);

}

void loop() {

  int linePosition = readLine();

  confereChegada();

  int erro = PID(linePosition);

  ajustaVelocidade(erro);

  //
  //  if(digitalRead(pin_curva))
  //  digitalWrite(pin_led, HIGH);
  //  else
  //  digitalWrite(pin_led, LOW);
  //

  anda(tensaoEsq, tensaoDir);

  confereSaiuDaLinha(linePosition);
}
