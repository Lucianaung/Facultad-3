/*import processing.sound.*;

SoundFile sound;
float volume = 0.0;
float maxVolume = 0.9;
float duration = 8.0; // Duración en segundos
float startTime;
boolean isVolumeIncreasing = true;

void setup() {
  size(400, 200);
  sound = new SoundFile(this, "Sintetizadores.mp3"); // Reemplaza "nombre_del_archivo.wav" por el nombre de tu archivo de sonido
  startTime = millis();
  sound.play();
}

void draw() {
  background(255);
  
  // Calcula el tiempo transcurrido desde el inicio en segundos
  float elapsedTime = (millis() - startTime) / 1000.0;
  
  // Ajusta el volumen utilizando la función map()
 if (isVolumeIncreasing) {
    volume = map(elapsedTime, 0, duration, 0, maxVolume);
    sound.amp(volume);
  }
  
  // Dibuja un rectángulo que representa el progreso del volumen
  float rectWidth = map(volume, 0, maxVolume, 0, width);
  rect(0, 0, rectWidth, height);
  
  // Comprueba si el tiempo transcurrido ha superado la duración establecida
  if (elapsedTime >= duration) {
    if (isVolumeIncreasing) {
      isVolumeIncreasing = false; // Deja de aumentar el volumen
      //startTime = millis(); // Reinicia el tiempo para mantener el volumen constante
    } /*else {
      sound.stop(); // Detiene la reproducción del sonido
      noLoop(); // Detiene la ejecución del programa
    }
  }
}
*/
