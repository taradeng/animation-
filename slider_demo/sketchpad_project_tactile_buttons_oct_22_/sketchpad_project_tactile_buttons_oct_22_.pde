color indigo = #2C2859;
color cobalt = #175473;
color turquoise = #2E9990;
color lime = #BAE67E;
color yellow = #F5FF8C;
color drawingColor = indigo;
float slider; //decimal
float thickness;


void setup() {
  size(600, 600);
  background(250);
  slider = 50;
  thickness = 1;
}


void draw() {

  //drawing colour buttons
  strokeWeight(4);
  stroke(0);
  if ( dist(100, 5, mouseX, mouseY) < 50 ) {
    fill(indigo - 50);
  } else {

    fill(indigo);
  }
  ellipse(100, 5, 100, 100);

  if ( dist(200, 5, mouseX, mouseY) < 50 ) {
    fill(cobalt + 50);
  } else {
    fill(cobalt);
  }
  ellipse(200, 5, 100, 100);

  if ( dist(300, 5, mouseX, mouseY) <50 ) {
    fill(turquoise + 50);
  } else {
    fill(turquoise);
  }
  ellipse(300, 5, 100, 100);
  
if ( dist(400, 5, mouseX, mouseY) < 50 ) {
  fill(lime - 50);
} else {
  fill(lime);
}
  ellipse(400, 5, 100, 100);

 if ( dist(500, 5, mouseX, mouseY) < 50 ) {
  fill(yellow - 50);
 } else {
  fill(yellow);
 }
  ellipse(500, 5, 100, 100);
 

  //drawing line code on canvas
  strokeWeight(thickness);
  stroke(drawingColor);
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

 
     //toolbar of buttons, sliders, etc
  fill(255);
  stroke(0);
  strokeWeight(1);
  
  //toolbar
  strokeWeight(4);
  rect(0, 500, width, 100);
  
  //slider 
  line (50, 550, 150, 550); //track
  ellipse(slider, 550, 20, 20); //knob
  
  if (mousePressed) {
    if (dist(slider, 550, mouseX, mouseY) < 20) {
      slider = mouseX; 
      
      if (slider < 50) //knob cant go below minimum: use sliderY for y axis {
        slider = 50;
    }
    
    if (slider > 150) {
      slider = 150;
  }
  thickness = map(slider, 50, 150, 1, 20);
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
