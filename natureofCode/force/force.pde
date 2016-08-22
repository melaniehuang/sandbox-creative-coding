Mover mover;

void setup(){
  size(1200,800,P2D);
  background(10,255,255);
  mover = new Mover();
}

void draw(){  
  background(10,255,255);

  PVector gravity = new PVector(0,0.3);
  mover.applyForce(gravity);
  
  if (mousePressed){
    PVector wind = new PVector(0.2,0);
    mover.applyForce(wind);
  }
  
  mover.update();
  mover.edges();
  mover.display();
}