
//------CONSTANTES------

const int pin_linha_chegada = 8;

//------VARIÁVEIS------
int linha_chegada = 0;

int read1 = 0, lastRead = 0;//leituras de linha de chegada

int t0 = 0;//variável de temporizador

int linePosition;

void setup() {
  Serial.begin(9600);
  pinMode(linePosition, INPUT);
  pinMode(pin_linha_chegada, INPUT);
  delay(500);

  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
 

  para();

}



void loop() {
  //Aguardar botão


  //Começar corrida
  anda();

  lastRead = digitalRead(pin_linha_chegada);
  if(lastRead && linePosition >= 0 && linePosition <= 7000){//Se a corrida iniciar em cima da linha de chegada e estivermos "no caminho"
    linha_chegada += 1;
  }

  while(linha_chegada < 2){

    anda();

    //Controle simulado por potenciômetro
    linePosition = analogRead(A0);
    linePosition = map(linePosition, 0, 1024, -1000, 8000);
    Serial.print("linePosition = ");
    Serial.println(linePosition);

    Serial.print("linhaChegada = ");
    Serial.println(linha_chegada);

    //linha de chegada
    read1 = digitalRead(pin_linha_chegada);
    if(linePosition >= 0 && linePosition <= 7000){//verifica se estamos no caminho certo
      if(millis() - t0 > 2000){//verifica estouro de timer
        if(read1 != lastRead){
          if(!lastRead && read1){
            //detecta borda de subida com sucesso
            linha_chegada += 1;
            t0 = millis();//inicia timer
          }
          lastRead = read1;
        }
      }
    }
    delay(200);
  }
  //protocolo de parada
  para();
  while(1){
    delay(1000); 
  }
}


void anda()
{
  digitalWrite(6, HIGH);
  digitalWrite(7, HIGH);
}

void para()
{
 digitalWrite(6, LOW);
  digitalWrite(7, LOW);
}
