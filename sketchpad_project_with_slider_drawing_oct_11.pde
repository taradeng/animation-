//project needs a colour indicator, stamps, color selector, save, erase
color indigo = #2C2859;
color cobalt = #175473;
color turquoise = #2E9990;
color lime = #BAE67E;
color yellow = #F5FF8C;
color drawingColor = indigo;


void setup() {
  size(600, 600);
  background(250);
}


void draw() {
  //slider circle
    stroke(0);
    strokeWeight(5);
   //slider line
     line(30, 100, 30, 300);
    fill(250);
    ellipse(30, 100, 18, 18);
    
  

  println(mouseX, mouseY);

  //drawing colour buttons
  strokeWeight(4);
  stroke(0);
    if ( dist(100, 5, mouseX, mouseY) < 50 ) {
    fill(indigo - 50);
  } else {

  fill(indigo);}
  ellipse(100, 5, 100, 100);

  fill(cobalt);
  ellipse(200, 5, 100, 100);

  fill(turquoise);
  ellipse(300, 5, 100, 100);
  
  fill(lime);
  ellipse(400, 5, 100, 100);
  
  fill(yellow);
  ellipse(500, 5, 100, 100);

  //drawing line code on canvas
  strokeWeight(5);
  stroke(drawingColor);
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
void mouseReleased() {

  if (dist(100, 5, mouseX, mouseY) <= 50) {
    //background(indigo);
    drawingColor = indigo;
  }

  if (dist(200, 5, mouseX, mouseY) <= 50) {
    // background(cobalt);
    drawingColor = cobalt;
  }

  if (dist(300, 5, mouseX, mouseY) <= 50) {
    //background(turquoise);
    drawingColor = turquoise;
  }
    
    
  if (dist(400, 5, mouseX, mouseY) <= 50) {
    //background(lime);
    drawingColor = lime;
  }
  
  if (dist(500, 5, mouseX, mouseY) <= 50) {
    //background(yellow);
    drawingColor = yellow;
    
   
    
    
  }
}
