void parte4(){
  background(0,0);

image(arbol1,0,0);
image(arbol2,100,0);
image(Camino1,200,0);
image(Cueva_Abajo1,300,0);
image(Cueva_Arriba1,400,0);
image(FondoBosque2,800,0);
image(FondoCascada_Piedras_100px,900,0);
image(Rampa_100px,1000,0);

image(cascadaGif,1100,0);
image(estrellaGif,1200,0,100,100);
  rayo.setGain(1.5);
  rayo.play();
movieParte_4.play();
  image(movieParte_4,0,600,500,400);
 movieParte_1.loop();
}

void movieEvent4(Movie m4) {
  m4.read();
  m4.loop();
}
