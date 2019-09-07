#define Kp 10
#define Ki 2
#define Kd 3

#define dRoda 3.10
#define CaixaRed 50.0
#define QuadEncoder 6.0

#define pin_encA 3
#define pin_encB 4

#define pin_PWM 5
#define pin_dirA 6
#define pin_dirB 7

long int pulsos = 0;
void contaPulsos(){
  if(digitalRead(pin_encA) == digitalRead(pin_encB)){
    pulsos++;
  }else{
    pulsos--;
  }
}



long int utempo = 0;
long int upulsos = 0;

double lerVelocidade(){  
  double dT = double(millis()-utempo)/1000.0;
  double dS = double(pulsos-upulsos)*dRoda*3.141592653/(CaixaRed * QuadEncoder);
  upulsos = pulsos; 
  utempo = millis();
  delay(10);
  return dS/dT;
}


double _CONTROLE_  = 0.0,
       uk1 = 0.0,
       ek1 = 0.0,
       ek2 = 0.0;
       
double _VELOCIDADE_ = 0.0;       

int PID(double setpoint){
   double vel = lerVelocidade();
   
   double ek = setpoint - vel;
   double uk = uk1 + (Kp+Kd)*ek + (Ki - Kp - 2*Kd)*ek1 + Kd*ek2;

   uk = uk > 255 ? 255 : uk < -255 ? -255 : uk;
   uk1 = uk;
   ek2 = ek1;
   ek1 = ek;

   _VELOCIDADE_ = vel;
   _CONTROLE_ = uk;
   return uk;
}

void andaRobo(int vel){
  if(vel >= 0){
    vel = vel > 255 ? 255 : vel;
    analogWrite(pin_PWM, vel);
    digitalWrite(pin_dirA, HIGH);
    digitalWrite(pin_dirB, LOW);
  }else{
    vel = -vel > 255 ? 255 : -vel;
    analogWrite(pin_PWM, vel);
    digitalWrite(pin_dirA, LOW);
    digitalWrite(pin_dirB, HIGH);
  }
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pin_PWM,OUTPUT);
  pinMode(pin_dirA,OUTPUT);
  pinMode(pin_dirB,OUTPUT);
  attachInterrupt(digitalPinToInterrupt(pin_encA), contaPulsos, CHANGE);
  delay(10);
}


void loop() {
  // put your main code here, to run repeatedly:
  int pot = map(analogRead(A0),0,1023,-30,30);
  andaRobo(PID(pot));
  Serial.print(pot);
  Serial.print('\t');
  Serial.print(_VELOCIDADE_);
  Serial.print('\t');
  Serial.print(_CONTROLE_);
  Serial.print('\n');

}
