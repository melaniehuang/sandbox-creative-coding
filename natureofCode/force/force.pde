Mover m;
Attractor a;
float ellipseSize = 20;

void setup() {
  size(1200, 800, P2D);
  background(10, 255, 255);
  fill(230, 255, 10, 100);
  
  m = new Mover();
  a = new Attractor();
}

void draw() {  
  background(10, 255, 255);
  
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  
  a.display();
  m.display();
}