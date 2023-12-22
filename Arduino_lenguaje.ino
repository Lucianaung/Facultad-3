int trigPin = 9;
int echoPin = 10;
int led = 5;

long duracion;
int distancia;
int intensidad;

bool rayoActivo = false;
long tiempoInicioRayo = 0;
long duracionRayo = 2000;  //duración del rayo en milisegundos

void setup() {
  // inicializo los pines
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(led, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  //encender el sensor, por pulsos de 10 microsegundos
  digitalWrite(trigPin, LOW);   // Nos aseguramos de que el trigger está desactivado
  delayMicroseconds(2);         // Para asegurarnos de que el trigger esta LOW
  digitalWrite(trigPin, HIGH);  // Activamos el pulso de salida
  delayMicroseconds(10);        // Esperamos 10µs. El pulso sigue active este tiempo
  digitalWrite(trigPin, LOW);   // Cortamos el pulso y a esperar el echo

  duracion = pulseIn(echoPin, HIGH);
  distancia = (duracion * 0.034) / 2;
  delay(25);
  Serial.println(distancia);
 

  if (!rayoActivo) {
  int intensidad = map(distancia, 8, 5, 50, 130);  //CHEACKEAR LA DISTANCIAS
    intensidad = constrain(intensidad, 0, 255);
    analogWrite(led,intensidad);

   
  } 
   if (distancia <= 4) {  //CHECKEAR LA DISTANCIA ACORDE
      rayoActivo = true;
      tiempoInicioRayo = millis();
  long tiempoActual = millis();
  
    if (tiempoActual - tiempoInicioRayo <= duracionRayo) {
      analogWrite(led, (random (0, 255)));
      delay(random(5,15));
}
}
}
