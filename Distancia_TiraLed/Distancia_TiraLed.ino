const int trigPin = 9;
const int echoPin = 10;
const int ledPin = 12;  // Cambia el número del pin según la conexión real de tu tira LED
int maxDistance = 100;  // Distancia máxima de medición en cm
int minDistance = 20;   // Distancia a la que quieres reducir la intensidad

void setup() {
  Serial.begin(9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(ledPin, OUTPUT);
}

void loop() {
  long duration, distance;
  
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  duration = pulseIn(echoPin, HIGH);
  
  distance = (duration * 0.034) / 2;  // Calibración para la velocidad del sonido
  
  Serial.print("Distancia: ");
  Serial.println(distance);

  delay(100);
  
  if (distance <= 50) {
    analogWrite(ledPin, map(distance, 0, 50, 0, 50));
  } else {
    analogWrite(ledPin, 0);  // LED a máxima intensidad si la distancia es mayor que minDistance
  }

  /*  if (distance <= 30) {
    analogWrite(ledPin, map(distance, 15, 30, 0, 140));
  } else {
    analogWrite(ledPin, 0);  // LED a máxima intensidad si la distancia es mayor que minDistance
  }

    if (distance <= 15) {
    analogWrite(ledPin, map(distance, 4, 15, 0, 255));
  } else {
    analogWrite(ledPin, 0);  // LED a máxima intensidad si la distancia es mayor que minDistance
  }*/
}