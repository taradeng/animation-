int x, y;
int red = 255;
int green = 255;
int blue = 255;

void setup() {
  size(800, 600);
  x = y = 300;
  noFill();
  stroke(0);
  strokeWeight(4);
}

void draw() {
  background(red, green, blue);

  //RED BUTTON

  if ( dist(400, 150, mouseX, mouseY) < 50) {
    fill (255, 0, 0);
  } else {
    fill(100, 0, 0);
  }
 

  ellipse(400, 150, 100, 100);
  
  //GREEN BUTTON
  if ( dist(400, 300, mouseX, mouseY) < 50 ) {
    fill(0, 255, 0);
  } else {
    fill(0, 100, 0);
  }
  ellipse(400, 300, 100, 100); 

  //BLUE BUTTON
  if ( dist(400, 450, mouseX, mouseY) < 50 ) {
    fill(0, 0, 255);
  } else {
    fill(0, 0, 100);
}
ellipse(400, 450, 100, 100);
}


void mouseReleased(){
  //clicking on the redbutton
  if (dist(400, 150, mouseX, mouseY) < 50) {
    red = 255;
    green = 0;
    blue = 0;
  }
  
  //clicking on the greenbutton
  if (dist(400, 300, mouseX, mouseY) < 50) {
    red = 0;
    green = 255;
    blue = 0;
  }
  
  //clicking on the bluebutton
  if (dist(400, 450, mouseX, mouseY) < 50) {
    red = 0;
    green = 0;
    blue = 255;
  }
}
