PImage img;

void setup(){
  size(1000,1000);
  img = loadImage("sprite.png");
}

void draw(){
  float randH = random(-1000, height);
  float randW = random(-1000, width);
  
  float randSize = random(600, 1000);
  image(img, randW, randH, randSize, randSize);
}