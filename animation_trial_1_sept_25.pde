//variables: declare type and name: type-what info does it hold? name-name with 
//letter, numbers, underscore, dash, cant start with a number 

int y; //delcare that this contains integers

void setup() { //happens once at beginning, no more after 
  size(800, 600);
  y = 400; //initial value
}

void draw() {  //happens throughout the sketch, 60 times/sec (action)
//background(200); //cover in grey, to get a single circle move
ellipse(y, 300, 200, 200); //draw a circle
//assgined value of 400 for x 
y = 5 + y;  //plus a number adds speed, rate or size tranlation
}

//with setup and draw, sketch will be in active mode 
