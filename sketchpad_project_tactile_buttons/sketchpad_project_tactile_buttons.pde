color indigo = #2C2859;

color cobalt = #175473;

color turquoise = #2E9990;

color lime = #BAE67E;

color yellow = #F5FF8C;

color drawingColor = indigo;

float slider; //decimal

float thickness;

PImage lavender;

int tool = 1;
//0 pen. 1 stamp




void setup() {

  size(600, 600);

  background(250);

  slider = 50;

  thickness = 1;

  lavender = loadImage ("lavender3.jpg");
 //imageMode(CENTER);
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
  if (mousePressed && mouseY > 55) {

    if (tool == 0) {
      strokeWeight(thickness);
      stroke(drawingColor);

      line(mouseX, mouseY, pmouseX, pmouseY);
    }

    if (tool == 1) {
      image(lavender, mouseX, mouseY, thickness*10, thickness*10);
    }
  }






  //toolbar of buttons, sliders, etc

  fill(255);

  stroke(0);

  strokeWeight(1);



  //toolbar

  strokeWeight(4);

  rect(0, 500, width, 100);

  //indicator
  fill(drawingColor);
  rect(175, 525, 50, 50);
  
  //stamp

  image(lavender, 350, 525, 50, 50);




  //slider 

  line (50, 550, 150, 550); //track


  if ( dist(slider, 550, mouseX, mouseY) < 50 ) {

    fill(indigo - 50);
  } else {

    fill(255);
  }
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




  //rect clear button
  fill(255);
  rect (450, 500, 100, 75);
}

void mouseReleased() {



  //clear button



  if (mouseX > 450 && mouseX < 550 && mouseY > 500 && mouseY <575) {

    background (250);
  }


  if (dist(100, 5, mouseX, mouseY) <= 50) {

    //background(indigo);

    drawingColor = indigo;
    tool = 0;
  }



  if (dist(200, 5, mouseX, mouseY) <= 50) {

    // background(cobalt);

    drawingColor = cobalt;
    tool = 0;
  }



  if (dist(300, 5, mouseX, mouseY) <= 50) {

    //background(turquoise);

    drawingColor = turquoise;
    tool =  0;
  }





  if (dist(400, 5, mouseX, mouseY) <= 50) {

    //background(lime);

    drawingColor = lime;
    tool = 0;
  }



  if (dist(500, 5, mouseX, mouseY) <= 50) {

    //background(yellow);

    drawingColor = yellow;
    tool = 0;
  }
 if (dist(350, 525, mouseX, mouseY) < 35) {
   tool = 1;
 }
}
