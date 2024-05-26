int pantalla,contador,movi;
//Textos
String texto1 = "          Hypersphere y The wave equation son dos de las instalaciones más emblemáticas de Paul Friedlander. Ambas obras se basan en su pasión por la física cuántica y otros aspectos de las ciencias modernas.";
String texto2 = "          Se trata de una larga cuerda que gira sobre sí misma a una gran velocidad y sobre la que se proyecta la luz desde distintas frecuencias, mientras es controlada por diferentes sensores,se caracteriza por el particular tratamiento de la luz y el movimiento que configura lo que se ha denominado como esculturas lumínicas cinéticas";
String texto3 = "          Podemos definir la trayectoria de Paul Friedlander a través de la combinación de dos frentes creativos claros: la experimentación con las nuevas tecnologías y los procesos de iluminación escénica.";
//Imagenes
PImage i1;
PImage i2;
PImage i3;

void setup () {
  size (640,480);
  i1 = loadImage ("i1.png");
  i2 = loadImage ("i2.png");
  i3 = loadImage ("i3.png");
  pantalla = 1;
  contador = 0;
}
void draw () {
  background (1);
  fill (255);
  textSize (20);
  contador = frameCount;
  if (pantalla == 1 ) {
    image (i1,0,0);
    movi = -frameCount*2;
    text (texto1,movi,400);
    if (contador >=900) {
     pantalla++;
     contador = 0;
     frameCount = 0;
    }
  }
  if ( pantalla == 2 ) {
      image (i2,0,0);
      movi = -frameCount*2;
      text (texto2,movi,400);
      if (contador >=1200) {
      pantalla++;
      contador = 0;
      frameCount = 0;
      }
    }
   if ( pantalla == 3 ) {
      image (i3,0,0);
      movi = -frameCount*2;
      text (texto3,movi,400);    
  }
}
void mousePressed () { 
  if (pantalla == 3) { 
    pantalla = 1;
  }
 }
