float slider; //decimal
float thickness;



void setup() {
  size(800, 600);
  slider = 50;
  thickness = 1;
}

void draw() {
  //drawing line code
  stroke(0);
  strokeWeight(thickness);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  //toolbar of buttons, sliders, etc
  fill(255);
  stroke(0);
  strokeWeight(1);
  
  //toolbar
  rect(0, 0, width, 100);
  
  //slider 
  line (50, 50, 150, 50); //track
  ellipse(slider, 50, 20, 20); //knob
  
  if (mousePressed) {
    if (dist(slider, 50, mouseX, mouseY) < 20) {
      slider = mouseX;
      
      if (slider < 50) //knob cant go below minimum: use sliderY for y axis {
        slider = 50;
    }
    
    if (slider > 150) {
      slider = 150;
  }
  
}
  
thickness = map(slider, 50, 150, 1, 20);
  
  }
