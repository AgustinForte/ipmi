// FORTE AGUSTIN - LEGAJO: 120310/0 - VIDEO: https://www.youtube.com/watch?v=R_4wLevc-5s

PImage imagen;
int rectAncho = 133; 
int rectAlto = 133; 
int filas = 3; 
int columnas = 3; 
color rectColor1, rectColor2, rectColor3;
color circleColor1, circleColor2, circleColor3;

void setup() {
  size(800, 400);
  imagen = loadImage("OPART.jpg");
  image(imagen, 0, 0);
  noStroke();
  
  // Inicializa los colores
  rectColor1 = color(40, 42, 179);
  rectColor2 = color(6, 13, 29);
  circleColor1 = color(6, 13, 29);
  circleColor2 = color(40, 42, 179);
}

void draw() {
  background(1);
  image(imagen, 0, 0);
  
  // Dibuja las filas de rectángulos y círculos
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      float posX = 400 + j * rectAncho;
      float posY = i * rectAlto;
      
      color rectColor = obtenerColorRectangulo(i, j);
      color circleColor = obtenerColorCirculo(i, j);
     // Calcula el tamaño de los círculos basado en la posición del mouse
      float distanciaMouse = dist(mouseX, mouseY, posX + rectAncho / 2, posY + rectAlto / 2);
      
      // Limita el tamaño mínimo cuando el mouse está lejos
      if (distanciaMouse > 400) {
        distanciaMouse = 400; // Limita la distancia a 400 para evitar que el tamaño siga reduciéndose
      }
      
      float tamanoCirculo = map(distanciaMouse, 0, 400, 20 , 133); // Mapea la distancia del mouse a un tamaño de círculo
      
      rectangulo(posX, posY, rectAncho, rectAlto, rectColor, circleColor, tamanoCirculo);
    }
  }
}
void rectangulo(float x, float y, float w, float h, color rectColor, color circleColor, float tamanoCirculo) {
  // Dibuja el rectángulo
  fill(rectColor);
  rect(x, y, w, h);
  
  // Dibuja el círculo con el tamaño ajustado
  fill(circleColor);
  ellipse(x + w / 2, y + h / 2, tamanoCirculo, tamanoCirculo);
}
color obtenerColorRectangulo(int fila, int columna) { //Funcion con retorno - Asigna el color de los rectangulos 
  // Define los colores de los rectángulos según su posición
  if (fila == 0 || fila == 2) {
    if (columna == 0) {
      return rectColor1;
    } else if (columna == 1) {
      return rectColor2;
    } else if (columna == 2) {
      return rectColor1;
    }
  } else if (fila == 1) {
    // Colores invertidos (FILA DEL MEDIO)
    if (columna == 0) {
      return (rectColor2);
    } else if (columna == 1) {
      return (rectColor1);
    } else if (columna == 2) {
      return (rectColor2);
    }
  }
  
  return rectColor1; // Valor por defecto
}

color obtenerColorCirculo(int fila, int columna) { //Funcion con retorno - Asigna el color de los circulos
  // Define los colores de los círculos según su posición
  if (fila == 0 || fila == 2) {
    if (columna == 0) {
      return circleColor1;
    } else if (columna == 1) {
      return circleColor2;
    } else if (columna == 2) {
      return circleColor1;
    }
  } else if (fila == 1) {
    // Colores invertidos (FILA DEL MEDIO)
    if (columna == 0) {
      return (circleColor2);
    } else if (columna == 1) {
      return (circleColor1);
    } else if (columna == 2) {
      return (circleColor2);
    }
  }
  
  return circleColor1; // Valor por defecto
}

void mousePressed() {
  // Genera colores aleatorios para los rectángulos y los círculos
  rectColor1 = color(random(255), random(255), random(255));
  rectColor2 = color(random(255), random(255), random(255));
  circleColor1 = color(random(255), random(255), random(255));
  circleColor2 = color(random(255), random(255), random(255));
}

void keyPressed() {
  // Vuelve a los colores originales
  rectColor1 = color(40, 42, 179);
  rectColor2 = color(6, 13, 29);
  circleColor1 = color(6, 13, 29);
  circleColor2 = color(40, 42, 179);
}
