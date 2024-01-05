//import processing.serial.*;
//Serial puerto;
//String val;
//int distancia;
//boolean cambioRealizado = false;

import spout.*;

import ddf.minim.*;
Minim minim;
AudioPlayer rayo;

import processing.video.*;
Movie movieParte_1;
Movie movieParte2_calisto;
Movie movieParte3_osa_trans;
Movie movieParte_4;
Movie titulo;

import gifAnimation.*;
Gif cascadaGif;
Gif estrellaGif;

String pantalla;

PImage estrellas, arbol1,arbol2,Camino1,Cueva_Abajo1,Cueva_Arriba1,fondo1,FondoBosque_Arbustos;
PImage FondoBosque_HojasArbol, FondoBosque2,FondoCascada_Piedras_100px,Rampa_100px;
Spout spout;

void setup(){
size (1700,900,P2D);
//String portName = Serial.list()[0];
//puerto=new Serial(this,portName,9600);
pantalla = "inicio";
//background(0,0);
spout = new Spout (this);
spout = new Spout (this);
spout.createSender ("spout processing");

minim = new Minim(this);
rayo = minim.loadFile("rayo_trueno.mp3");

movieParte_1= new Movie(this,"PARTE2_CALISTO_NUEVO.mov");
movieParte2_calisto=new Movie(this,"PARTE3_CALISTO_NUEVO.mov");
movieParte3_osa_trans=new Movie(this,"PARTE4_CALISTO_NUEVO.mov");
movieParte_4=new Movie(this,"PARTE5_CALISTO_NUEVO.mov");
titulo=new Movie(this,"PARTE1_CALISTO_NUEVO.mov");

estrellas=loadImage ("FINAL.png");
arbol1=loadImage("arbol1.png");
arbol2=loadImage("arbol2.png");
Camino1=loadImage("Camino1.png");
Cueva_Abajo1=loadImage("Cueva_Abajo1.png");
Cueva_Arriba1=loadImage("Cueva_Arriba1.png");
fondo1=loadImage("fondo1.png");
FondoBosque_Arbustos=loadImage("FondoBosque_Arbustos.png");
FondoBosque_HojasArbol=loadImage("FondoBosque_HojasArbol.png"); 
FondoBosque2=loadImage("FondoBosque2.png");
FondoCascada_Piedras_100px=loadImage("FondoCascada_Piedras_100px.png");
Rampa_100px=loadImage("Rampa_100px.png");

cascadaGif= new Gif(this,"CascadaGif.gif");
cascadaGif.loop();
estrellaGif= new Gif(this,"estrella.gif");
estrellaGif.loop();

}

void draw(){
 spout.sendTexture();

//if ( puerto.available() > 0) {  // If data is available,
//   val = puerto.readStringUntil('\n'); // read it and store it in val
//  }
  
//distancia=int(val);
// println(distancia);
// println(val);

if (pantalla == "inicio") {
    inicio();
  } else if (pantalla == "parte1") {
    parte1();
  } else if (pantalla == "parte2"){
  parte2();
  } else if (pantalla == "parte3"){
  parte3();
  } else if (pantalla == "parte4"){
  parte4();
  }
  
 // if(distancia<=3 && !cambioRealizado){
//  pasarPantalla(siguientePantalla(pantalla));
 // cambioRealizado = true;
 // }

}



void keyPressed(){  
  if (pantalla == "inicio"){
  pantalla = "parte1";
  } else if (pantalla == "parte1") {
    pantalla = "parte2"; 
}else if (pantalla == "parte2") {
    pantalla = "parte3"; 
}else if (pantalla == "parte3") {
    pantalla = "parte4"; 
}
}
