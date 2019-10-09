
color blue = #307DCE;
color lgreen = #5CD34D;
color dgreen = #22792B;
color lblue = #67EDBB;
color yellow = #FAC02D;
int a = -200;
int b = 200;
int c = 600;
int cloud = 1000;
int water = -100;
int water2 = -200;
int water3 = -300;
int water4 = -400;
int water5 = -500;
int water6 = -600;
int water7 = -700;
int water8 = -800;
int water9 = -900;
int water10 = 1000;
int water11 = -1100;
int water12 = -1200;
int water13 = -1300;
int water14 = -1400;
int water15 = -1500;
int water16 = -1600;
//int water17 = -1700;
int ufo1 = 1000;
int ufo2 = 1000;
int ufo3 = 1000;
int light1 = 1100;
int light2 = 900;
int light3 = 1000;
int alien;

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

  fill(lblue); 
  ellipse(water, 350, 100, 100);
  ellipse(water2, 350, 100, 100);
  ellipse(water3, 350, 100, 100);
  ellipse(water4, 350, 100, 100);
  ellipse(water5, 350, 100, 100);
  ellipse(water6, 350, 100, 100);
  ellipse(water7, 350, 100, 100);
  ellipse(water8, 350, 100, 100);
  ellipse(water9, 350, 100, 100);
  ellipse(water10, 350, 100, 100);
  ellipse(water11, 350, 100, 100);
  ellipse(water12, 350, 100, 100);
  ellipse(water13, 350, 100, 100);
  ellipse(water14, 350, 100, 100);
  ellipse(water15, 350, 100, 100);
  ellipse(water16, 350, 100, 100);
  //ellipse(water17, 350, 100, 100);

  water = water + 3;
  water2 = water2 + 3;
  water3 = water3 + 3;
  water4 = water4 + 3;
  water5 = water5 + 3;
  water6 = water6 + 3;
  water7 = water7 + 3;
  water8 = water8 + 3;
  water9 = water9 + 3;
  water10 = water10 + 3;
  water11 = water11 + 3;
  water12 = water12 + 3;
  water13 = water13 + 3;
  water14 = water14 + 3;
  water15 = water15 + 3;
  water16 = water16 + 3;
  //water17 = water17 + 3;

  if (water >= 1000) {
    water = -200;
  }
  if (water2 >= 1000) {
    water2 = -200;
  }
  if (water3 >= 1000) {
    water3 = -200;
  }

  if (water4 >= 1000) {
    water4 = -200;
  }
  if (water5 >= 1000) {
    water5 = -200;
  }
  if (water6 >= 1000) {
    water6 = -200;
  }
  if (water7 >= 1000) {
    water7 = -200;
  }
  if (water8 >= 1000) {
    water8 = -200;
  }
  if (water9 >= 1000) {
    water9 = -200;
  }

  if (water10 >= 1000) {
    water10 = -200;
  }
  if (water11 >= 1000) {
    water11 = -200;
  }
  if (water12 >= 1000) {
    water12 = -200;
  }
  if (water13 >= 1000) {
    water13 = -200;
  }
  if (water14 >= 1000) {
    water14 = -200;
  }
  if (water15 >= 1000) {
    water15 = -200;
  }
  if (water16 >= 1000) {
    water16 = -200;
  }
  // if (water17 >= 1000) {
  //water17 = -200;
  // }



  fill(yellow);
  rect(0, 350, 800, 250);


  fill(150);
  ellipse(cloud, 50, 100, 100);
  fill(235);
  ellipse(cloud, 100, 300, 100);


  cloud = cloud - 2;

  if (cloud <=-200) {
    cloud = 1000;
  }


  //light
  fill(#E53A4E);
  ellipse(light1, 100, 30, 30);
  ellipse(light2, 100, 30, 30);
  ellipse(light3, 100, 30, 30);
  light1 = light1 - 2;
  light2 = light2 - 2;
  light3 = light3 - 2;
  if (light1 <=-200) {
    light1 = 1000;
  }

  if (light2 <=-200) {
    light2 = 1000;
  }
  if (light3 <=-200) {
    light3 = 1000;
  }



  //ufo spray
  fill(235);
  ellipse(ufo1, 150, 50, 50);
  ellipse(ufo2, 250, 30, 30);
  ellipse(ufo3, 300, 20, 20);

  ufo1 = ufo1 - 2;
  ufo2 = ufo2 - 2;
  ufo3 = ufo3 - 2;

  if (ufo1 <=-200) {
    ufo1 = 1000;
  }

  if (ufo2 <=-200) {
    ufo2 = 1000;
  } 
  if (ufo3 <=-200) {
    ufo3 = 1000;
  }

  pushMatrix();
  translate(alien, 0);
  alien = alien + 5;
  if (alien > 900) alien = -600;
  alien();
  popMatrix();
}

void alien() {

  stroke(#E53A4E);
  strokeWeight(2);
  line(300, 600, 250, 550);
  line(300, 600, 350, 550);
  noStroke();

  noStroke();
  fill (#6BD885);
  ellipse (300, 600, 50, 50);
  ellipse (250, 550, 20, 20);
  ellipse (350, 550, 20, 20);

  //eyes
  fill (#E53A4E);
  ellipse (250, 550, 10, 10);
  ellipse (350, 550, 10, 10);
}


//with setup and draw, sketch will be in active mode
