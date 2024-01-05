void inicio(){
 
background(0,0);

//image(arbol1,0,0);
//image(arbol2,100,0);
//image(Camino1,200,0);
//image(Cueva_Abajo1,300,0);
//image(Cueva_Arriba1,400,0);
//image(FondoBosque2,800,0);
//image(FondoCascada_Piedras_100px,900,0);
//image(Rampa_100px,1000,0);

image (estrellas, 1600,0,100,100);

//image(cascadaGif,1100,0);
image(estrellaGif,1200,0,100,100);

//movieParte_1.play();
// image(movieParte_1,0,200,500,400);
//movieParte2_calisto.play();
// image(movieParte2_calisto,500,200,500,400);
// movieParte3_osa_trans.play();
//  image(movieParte3_osa_trans,900,200,500,400);
//movieParte_4.play();
//  image(movieParte_4,0,600,500,400);


titulo.play();
image(titulo,500,600,500,400);

}

void movieEvent5(Movie m5) {
  m5.read();
  m5.loop();
}
