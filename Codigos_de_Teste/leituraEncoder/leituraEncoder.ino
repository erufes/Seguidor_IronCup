/*
  Breno Odnan
  ERUS - Equipe de RObótica da UFES

  Código  padrão para teste de leitura de encoders

  Crédito a RobotFreak pelo código exemplo de uso de timers
  more infos: http://www.letmakerobots.com/node/28278

  Status: Funcional
*/
//Variáveis de Contagem de pulsos

const byte encoderPinA = 2;
const byte encoderPinB = 3;

volatile long int nPulsosA = 0;
volatile long int nPulsosB = 0;


//Variáveis de temporização:
long int N_OVF = 65535L;                  //número máximo de pulsos contados pelo timer (16 bits)
long int tAlvo = 40L;                      //tempo a se cronometrar, em segundos
long int FREQ_CLK = 16000000L;          //frequencia do clock
long int PRESC = 1024L;                   //Valor do prescaler
long int nAlvo = N_OVF -  (FREQ_CLK / PRESC) * ((float)tAlvo / 1000); //número de pulsos a se cronometrar


//Variáveis para cálculo de velocidade
volatile int velA = 0;
volatile int velB = 0;

const int nDentes = 10;
const float Diametro = 3.19;//em cm
const float kRoda = (1000 * PI * Diametro) / (nDentes*tAlvo); //tAlvo em ms

//teste extra - botao
const int buttonPin = 4;
int state = 0;

//Variáveis de acionamento dos motores
const int motorEsq[3] = {8, 9, 5};    // {dig, dig, pwm}
const int motorDir[3] = {7, 10, 6};   // {dig, dig, pwm}

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

  pinMode(buttonPin, INPUT);

  Serial.begin(9600);
  Serial.print("kRoda = ");
  Serial.println(kRoda);
}


int i = 0;
void loop() {
  //teste do botão
  state = digitalRead(buttonPin);
  if (state) {
    i++;
    Serial.println("---------------");
    Serial.println(i);
    Serial.print(velA);
    Serial.print("   ");
    Serial.println(velB);
  }
  //Teste do encoder de fato
  anda(255, 255);

  //em rpm
  Serial.print((velA/(PI * Diametro))*60);
  Serial.print("   ");
  Serial.println((velB/(PI * Diametro))*60);

  //em cm/s
  
  //Serial.print(velA);
  //Serial.print("   ");
  //Serial.println(velB);
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
