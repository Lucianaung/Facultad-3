void pasarPantalla(String nuevaPantalla){
   
 pantalla=nuevaPantalla;
 
}

String siguientePantalla(String pantalla) {
  switch (pantalla) {
    case "inicio":
      return "parte1";
    case "parte1":
      return "parte2";
    case "parte2":
      return "parte3";
    case "parte3":
      return "parte4";
    case "parte4":
      return "parte5";
    //case "parte5":
      //return "inicio"; // Vuelve al inicio si estás en la pantalla 6
    default:
      return "inicio";
  }
}
