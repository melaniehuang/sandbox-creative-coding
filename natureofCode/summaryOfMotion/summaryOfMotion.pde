Mover mover;

void setup(){
  size(1400,900,P2D);
  background(105,50,255);
  mover = new Mover();
}

void draw(){
  background(105,50,255);
  mover.update();
  mover.edges();
  mover.display();
  
  println(mover.velocity, mover.acceleration, mover.location.mag());
}