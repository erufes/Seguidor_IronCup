#define Kp 5.0
#define Ki 1.0
#define Kd 1.0
#define DIAM_RODA 3.10
#define QUAD_ENC 3.0
#define GEARBOX 50.0
#define pin_MESQ_SPEED 5
#define pin_MESQ_FORWARD 7
#define pin_MESQ_BACKWARD 8

const double CONST_VELOC =  3141.59265359 * DIAM_RODA/(QUAD_ENC * GEARBOX);

#define pin_MDIR_SPEED 6
#define pin_MDIR_FORWARD 13
#define pin_MDIR_BACKWARD 12

#define pin_ENCODER_ESQA 2
#define pin_ENCODER_ESQB 9

#define pin_ENCODER_DIRA 3
#define pin_ENCODER_DIRB 10

uint8_t pinParaInterrupcao(uint8_t pin){
  if(pin == 2){
    return 0;
  }else{
    return 1;
  }
}

long PULSOS_ENCODER_ESQUERDA = 0;
void interrupcao_encoder_esquerda(){
  if(digitalRead(pin_ENCODER_ESQA)){
    if(digitalRead(pin_ENCODER_ESQB)){
      PULSOS_ENCODER_ESQUERDA++;
    }else{
      PULSOS_ENCODER_ESQUERDA--;
    }
  }else{
    if(digitalRead(pin_ENCODER_ESQB)){
      PULSOS_ENCODER_ESQUERDA--;
    }else{
      PULSOS_ENCODER_ESQUERDA++;
    }
  }
}

long PULSOS_ENCODER_DIREITA = 0;
void interrupcao_encoder_direita(){
  if(digitalRead(pin_ENCODER_DIRA)){
    if(digitalRead(pin_ENCODER_DIRB)){
      PULSOS_ENCODER_DIREITA--;
    }else{
      PULSOS_ENCODER_DIREITA++;
    }
  }else{
    if(digitalRead(pin_ENCODER_DIRB)){
      PULSOS_ENCODER_DIREITA++;
    }else{
      PULSOS_ENCODER_DIREITA--;
    }
  }
}


double erro_Esq_1 = 0, erro_Esq_2 = 0, erro_Dir_1 = 0, erro_Dir_2 = 0;
int u_Esq_1 = 0, u_Dir_1 = 0;
long UPULSOS_ENCODER_ESQUERDA = 0;
long UTEMPO_ESQUERDA = 0;
long UPULSOS_ENCODER_DIREITA = 0;
long UTEMPO_DIREITA = 0;

void trataVariaveisDaMemoria(){
  if(!(erro_Esq_1<255 && erro_Esq_1>-255)){
    erro_Esq_1 = 0;
  }
  if(!(erro_Esq_2<255 && erro_Esq_2>-255)){
    erro_Esq_2 = 0;
  }
  if(!(erro_Dir_1<255 && erro_Dir_1>-255)){
    erro_Dir_1 = 0;
  }
  if(!(erro_Dir_2<255 && erro_Dir_2>-255)){
    erro_Dir_2 = 0;
  }
  if(!(u_Esq_1<255 && u_Esq_1>-255)){
    u_Esq_1 = 0;
  }
  if(!(u_Dir_1<255 && u_Dir_1>-255)){
    u_Dir_1 = 0;
  }
}
void setup() {
  attachInterrupt(pinParaInterrupcao(pin_ENCODER_ESQA),interrupcao_encoder_esquerda, RISING);
  attachInterrupt(pinParaInterrupcao(pin_ENCODER_DIRA),interrupcao_encoder_direita, RISING);
  pinMode(pin_MESQ_SPEED,OUTPUT);
  pinMode(pin_MESQ_FORWARD,OUTPUT);
  pinMode(pin_MESQ_BACKWARD,OUTPUT);

  pinMode(pin_MDIR_SPEED,OUTPUT);
  pinMode(pin_MDIR_FORWARD,OUTPUT);
  pinMode(pin_MDIR_BACKWARD,OUTPUT);

   Serial.begin(9600);
}
double erro_Esq = 0.0, erro_Dir = 0.0;
int u_Esq = 0, u_Dir = 0;

void loop() {
  int pot = map(analogRead(A5),0,1023,-30,30);
  int velEsq=pot, velDir = pot;
  
   trataVariaveisDaMemoria();
  //SINAL DO CONTROLE PID DO MOTOR DA ESQUERDA
  erro_Esq = velEsq - ((PULSOS_ENCODER_ESQUERDA - UPULSOS_ENCODER_ESQUERDA) * CONST_VELOC/(millis() - UTEMPO_ESQUERDA));
  UPULSOS_ENCODER_ESQUERDA = PULSOS_ENCODER_ESQUERDA;
  UTEMPO_ESQUERDA = millis();
  
  u_Esq = u_Esq_1 + (Kp+Kd) * erro_Esq + (Ki-Kp-2*Kd) * erro_Esq_1 + Kd * erro_Esq_2;
  if(u_Esq > 255){
    u_Esq = 255;
  }else if(u_Esq < -255){
    u_Esq = -255;
  }
  erro_Esq_2 = erro_Esq_1;
  erro_Esq_1 = erro_Esq;
  u_Esq_1 = u_Esq;

  //SINAL DO CONTROLE PID DO MOTOR DA DIREITA
  erro_Dir = velDir - ((PULSOS_ENCODER_DIREITA - UPULSOS_ENCODER_DIREITA) * CONST_VELOC/(millis() - UTEMPO_DIREITA));
  UPULSOS_ENCODER_DIREITA = PULSOS_ENCODER_DIREITA;
  UTEMPO_DIREITA = millis();
  
  u_Dir = u_Dir_1 + (Kp+Kd) * erro_Dir + (Ki-Kp-2*Kd) * erro_Dir_1 + Kd * erro_Dir_2;
  if(u_Dir > 255){
    u_Dir = 255;
  }else if(u_Dir < -255){
    u_Dir = -255;
  }
  erro_Dir_2 = erro_Dir_1;
  erro_Dir_1 = erro_Dir;
  u_Dir_1 = u_Dir;

  //ATIVAR MOTORES
  if(u_Esq > 0){
    analogWrite(pin_MESQ_SPEED,u_Esq);
    digitalWrite(pin_MESQ_FORWARD,HIGH);
    digitalWrite(pin_MESQ_BACKWARD,LOW);
  }else if(u_Esq < 0){
    analogWrite(pin_MESQ_SPEED,u_Esq);
    digitalWrite(pin_MESQ_FORWARD,LOW);
    digitalWrite(pin_MESQ_BACKWARD,HIGH);
  }else{
    analogWrite(pin_MESQ_SPEED,u_Esq);
    digitalWrite(pin_MESQ_FORWARD,LOW);
    digitalWrite(pin_MESQ_BACKWARD,LOW);
  }

  if(u_Dir > 0){
    analogWrite(pin_MDIR_SPEED,u_Dir);
    digitalWrite(pin_MDIR_FORWARD,HIGH);
    digitalWrite(pin_MDIR_BACKWARD,LOW);
  }else if(u_Dir < 0){
    analogWrite(pin_MDIR_SPEED,u_Dir);
    digitalWrite(pin_MDIR_FORWARD,LOW);
    digitalWrite(pin_MDIR_BACKWARD,HIGH);
  }else{
    analogWrite(pin_MDIR_SPEED,u_Dir);
    digitalWrite(pin_MDIR_FORWARD,LOW);
    digitalWrite(pin_MDIR_BACKWARD,LOW);
  }
  
  Serial.println(pot);

}

