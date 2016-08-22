//Algorithm #3: the object accelerates towards the mouse

Mover mover;

void setup(){
  size(displayWidth, displayHeight);
  background(10,255,255);
  mover = new Mover();
}

void draw(){  
  mover.update();
  mover.display();
}