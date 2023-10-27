import processing.serial.*;

Serial puerto;  // Create object from Serial class
String val;     // Data received from the serial port

void setup() {
  size(400, 400);
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  puerto = new Serial(this, portName, 9600);
}

void draw() {
  background(80,20,255);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text("La distancia es: "+val, width/2, height/2);
  
  map

  if ( puerto.available() > 0) {  // If data is available,
    val = puerto.readStringUntil('\n'); // read it and store it in val
  }
  println(val); //print it out in the console
}
