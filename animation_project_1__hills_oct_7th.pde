
color blue = #307DCE;
color lgreen = #5CD34D;
color dgreen = #22792B;
color lblue = #87D9E3;
color yellow = #FAC02D;
int a = -200;
int b = 200;
int c = 600;
int cloud = -200;

void setup() { //happens once at beginning, no more after 
  size(800, 600);
  noStroke();
}

void draw() {  //happens throughout the sketch, 60 times/sec (action)
  background(blue); //cover in grey, to get a single circle move

  fill(lgreen);
  ellipse(a, 400, 400, 400);
  ellipse(b, 400, 400, 400);
  ellipse(c, 400, 400, 400);
  fill(dgreen);
  rect(0, 350, 800, 250);

  a = a + 2;
  b = b + 2;
  c = c + 2;

  if (a >= 1000) {
    a = -200;
  }
  if (b >= 1000) {
    b = -200;
  }
  if (c >= 1000) {
    c = -200;
  }

  fill(#87D9E3);
  ellipse(cloud, 100, 100, 100);

  cloud = cloud - 2;
}


//with setup and draw, sketch will be in active mode
