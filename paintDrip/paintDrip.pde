PImage img;

void setup(){
  size(1200,900);
  img = loadImage("sprite.png");
}

void draw(){
  float randH = random(-1000, height);
  float randW = random(-1000, width);
  
  float randSize = random(600, 1000);
  image(img, randW, randH, randSize, randSize);
}

//Aesthetic of code
//Processing, LCDs, vinyl prints