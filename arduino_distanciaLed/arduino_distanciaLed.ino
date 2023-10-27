int trigPin = 9;
int echoPin = 10;

int led1 = 7;
int led2 = 6;
int led3 = 5;


long duracion;
int distancia;

void setup() {
  // inicializo los pines
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);


  Serial.begin(9600);
}

void loop() {
  //encender el sensor, por pulsos de 10 microsegundos
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duracion = pulseIn(echoPin, HIGH);
  distancia = (duracion * 0.034) / 2;
  delay(25);

  if (distancia <= 15) {
    digitalWrite(led1, HIGH);
  } else {
    digitalWrite(led1, LOW);
  }

  if (distancia <= 10) {
    digitalWrite(led2, HIGH);
  } else {
    digitalWrite(led2, LOW);
  }

  if (distancia <= 5) {
    digitalWrite(led3, HIGH);
  } else {
    digitalWrite(led3, LOW);
  }

  Serial.println(distancia);
}
