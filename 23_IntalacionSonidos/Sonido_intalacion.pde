import processing.sound.*; //cambiar el formato de los audios a wav para que sean más rapidos

SoundFile fondo, baseTambor, baseSuspenso, sintetizadores, combate, latidos;

String estado;
float volumen1, volumen2, volumen3;
float iniciaTiempo;
boolean volumenAum1 = true;
boolean volumenAum2 = true;

void setup() {
  size(600, 600);

  fondo = new SoundFile (this, "BaseFondo.wav");
  baseTambor = new SoundFile (this, "BaseTambores.wav");
  baseSuspenso = new SoundFile (this, "BaseSuspenso.wav");
  sintetizadores = new SoundFile (this, "Sintetizadores.wav");
  combate = new SoundFile (this, "Combate.wav");
  latidos = new SoundFile (this, "Latidos.wav");

  estado = "Inicial";

  fondo.loop();
  fondo.amp(0.03);

  iniciaTiempo = millis();
  textSize(12);
  fill(0);
}

void draw() {
  // Calcula el tiempo transcurrido desde el inicio en segundos
  float medirTiempo = (millis() - iniciaTiempo) / 1000.0;

  if (estado == "bloque1") {
    if (volumenAum1) {
      volumen1 = map(medirTiempo, 0, 3, 0, 0.02);
      latidos.amp(volumen1);
    }

    if (medirTiempo >= 3) {
      if (volumenAum1) {
        volumenAum1 = false; // Deja de aumentar el volumen
      }
    }
  }

  if (estado == "bloque2") {
    if (volumenAum2) {
      volumen2 = map(medirTiempo, 0, 5, 0, 0.1);
      volumen3 = map(medirTiempo, 0, 5, 0, 0.02);
      sintetizadores.amp(volumen2);
      latidos.amp(volumen3);
    }

    if (medirTiempo >= 5) {
      if (volumenAum2) {
        volumenAum2 = false; // Deja de aumentar el volumen
      }
    }
  }
}

void keyPressed() { //agregar otra condiciones para que al volver a clickar no se agreguen mas sonido
  if (key == '1') { //SENSOR 1
    estado = "bloque1";
    text("bloque1_Activado", 50, 250);

    baseTambor.play();
    baseTambor.loop();
    baseTambor.amp(0.1);

    baseSuspenso.play();
    baseSuspenso.loop();
    baseSuspenso.amp(0.3);

    combate.play();
    combate.loop();
    combate.amp(0.05);

    latidos.loop();
  }

  if (key == '2') { //SENSOR 2
    estado = "bloque2";
    text("bloque2_Activado", 100, 250);

    latidos.loop();
    sintetizadores.loop();
  }

  if (key == '3') { // REINICIAR
    estado = "bloque3";
  }
}
