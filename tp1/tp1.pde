PImage p;

void setup(){
  size (800,400);
  background (190);
  p = loadImage ("yo.png");
}

void draw(){
  image (p,0,0);
  //pecho y cuello
  fill (10);
  noStroke ();
  ellipse (600,400,410,150);
  fill (5);
  ellipse (620,345,210,100);
  fill (195,153,134);
  rect (535,270,130,80);
  ellipse (620,338,180,80);
  fill (157,119,103);
  ellipse (610,280,120,140);
  fill (144,104,86);
  ellipse (600,280,125,110);
  fill (190);
  ellipse (720,280,115,113);
  //cara
  noStroke();
  fill (195,153,134);
  ellipse (600,200,180,250); 
  ellipse (520,200,50,80);
  //pelo
   fill (98,81,79);
  ellipse (600,140,190,190); 
  fill (195,153,134);
  ellipse (600,190,190,240);
  rect (525,90,150,170);
  fill (30);
  ellipse (600,90,168,120);
  fill (195,153,134);
  ellipse (570,114,105,100);
  ellipse (630,114,105,100);
  fill (30);
  //ceja izquierda
  rect (535,135,36,13);
  triangle (535,134,520,154,535,148);
  triangle (571,134,590,150,571,148); 
  stroke (195,153,134);
  line (530,135,542,148);
  line (530,137,542,150);
  line (530,139,542,152);
  //ceja derecha
  noStroke ();
  fill (30);
  rect (625,135,36,13);
  triangle (625,134,610,152,625,148);
  triangle (661,134,678,154,661,148);
  //ojo izquierdo
  fill (195,153,134);
  stroke (105,65,55);
  ellipse (555,170,45,20);
  noStroke();
  rect (532,167,50,8);
  fill (105,65,55);
  ellipse (555,171,45,10);
  fill (220);
  stroke (20);
  ellipse (555,170,35,13);
  fill (20);
  ellipse (555,170,17,13);
  fill (255);
  circle (556,168,4);
  //ojo derecho
    fill (195,153,134);
  stroke (105,65,55);
  ellipse (644,170,50,20);
  noStroke();
  rect (616,167,55,8);
  fill (105,65,55);
  ellipse (644,171,45,10);
  fill (220);
  stroke (20);
  ellipse (644,170,35,14);
  fill (20);
  ellipse (644,170,16,14);
  fill (255);
  circle (643,168,4);
  //nariz
  fill (144,104,86);
  noStroke();
  ellipse (600,215,40,60);
  fill (180,140,120);
  ellipse (599,161,48,27);
  fill (195,153,134);
  stroke (160,120,100);
  triangle (600,190,575,220,623,220);
  triangle (600,210,576,155,620,155);
  ellipse (599,220,50,35);
  noStroke ();
  rect (585,150,29,130);
  rect (579,149,40,10);
  ellipse (600,220,48,37);
  stroke (140,100,80);
  ellipse (589,226,14,10);
  ellipse (611,226,14,10);
  noStroke ();
  fill (91,46,41);
  ellipse (589,225,12,6);
  ellipse (612,225,12,6);
  fill (195,153,134);
  ellipse (589,234,14,16);
  ellipse (611,234,14,16);
  //labios
  fill (151,86,89);
  ellipse (600,263,69,20);
  ellipse (600,259,54,20);
   fill (195,153,134);
  ellipse (600,244,25,18);
  stroke (97,56,54);
  fill (180,115,113);
  ellipse (600,269,60,13);
  noStroke ();
  ellipse (600,270,60,15);
  //oreja
  fill (195,153,134);
  ellipse (500,183,10,30);
  fill (180,140,120);
  ellipse (503,200,15,45);
  fill (162,117,98);
  ellipse (500,180,7,12);
  rect (500,200,3,15);
  stroke (162,117,98);
  line (500,215,510,225);
  
}
  
