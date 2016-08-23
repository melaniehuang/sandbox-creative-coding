Mover mover;

void setup(){
  size(500,900);
  background(207,241,247);
  mover = new Mover();
}

void draw(){
  background(207,241,247);
  
  PVector gravity = new PVector(0,-0.04);
  mover.applyForce(gravity);
  
  if (mousePressed){
    PVector wind = new PVector(0.02,0);
    mover.applyForce(wind);
  } else {
    PVector windB = new PVector(-0.005,0);
    mover.applyForce(windB);
  }
  
  mover.update();
  mover.edges();
  mover.display();
}