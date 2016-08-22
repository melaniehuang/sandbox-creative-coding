Mover mover;

void setup(){
  size(1200,800);
  background(10,255,255);
  mover = new Mover();
}

void draw(){  
  mover.update();
  mover.checkEdges();
  mover.display();
}