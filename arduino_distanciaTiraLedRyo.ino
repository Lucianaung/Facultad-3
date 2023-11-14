int sensorPin = A0;   // select the input pin for the potentiometer
int led13 = 13;      // select the pin for the LED
int luces = 10;       //Acá se elije la salida de luces
int sensorValue = 0;  // variable to store the value coming from the sensor
int retardo=300;     //retardo en milisegundos

void setup() {
  // declare the ledPin as an OUTPUT:
  pinMode(led13, OUTPUT);
  pinMode(luces, OUTPUT);
  Serial.begin(9600);
 // digitalWrite(luces, HIGH); // Arranca con las luces encendidas
}

void loop() {
  // read the value from the sensor:
  sensorValue = analogRead(sensorPin);
  
  if (sensorValue<100) {
    digitalWrite(led13, HIGH); // turn the Arduino led on
    Serial.println(sensorValue);
    //Acá habría que poner el código para que apague las luces. ejemplo: 
    digitalWrite(luces, LOW); // turn the ledPin off:
  }
  else digitalWrite(led13, LOW); // turn the Arduino led off:

  // stop the program for for <sensorValue> milliseconds:
  delay(retardo);
}

//faltaría poner un pulsador, por ejemplo, para que apague las luces