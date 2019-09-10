#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

const char* ssid = "ERUS-2.4Ghz";
const char* password = "ultrabots4";

IPAddress ip(172,20,74,223);
//IPAddress gateway(172,20,74,103);
IPAddress gateway(172,20,74,0);
IPAddress subnet(255,255,254,0);

ESP8266WebServer server(80);

int MAX=0;
const uint8_t BUFFER_SIZE = 20;
uint8_t size = 0;
char buffer[BUFFER_SIZE];
int i=0;

String recebidos[1000];

void serialEvent(){
  while (Serial.available()){ // Enquanto houverem bytes disponíveis;
    char c = Serial.read(); // Lê byte do buffer serial;
    switch(c) {
      case '\n':
        if (size == 0) return;
        buffer[size] = 0;
        size = 0;
        if (!strcmp(buffer,"teste")) recebidos[i];
        else {
          recebidos[MAX] = buffer;
          MAX++;
        }
        break;
      // Adiciona carácter ao buffer se não estiver cheio.
      default:
        if (size < BUFFER_SIZE-1) {
          buffer[size] = c;
          ++size;
        }
    }
  }
}

void handleRoot() {
  String textoHTML;

  textoHTML = "Valor recebido: ";
  for(i=0; i<=MAX; i++){
    textoHTML += recebidos[i];
    textoHTML += "<br>"; 
    //Serial.println(recebidos[i]);
  }
  server.send(200, "text/html", textoHTML);
}

void handleNotFound(){
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}

void setup(void){
  
  Serial.begin(9600);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  WiFi.config(ip, gateway, subnet);
  //Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    //Serial.print(".");
  }
  //Serial.println("");
  //Serial.print("Connected to ");
  //Serial.println(ssid);
  //Serial.print("IP address: ");
  //Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
   // Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/inline", [](){
    server.send(200, "text/plain", "this works as well");
  });

  server.onNotFound(handleNotFound);

  server.begin();
  //Serial.println("HTTP server started");
}

void loop(void){
  server.handleClient();
  serialEvent();
}
