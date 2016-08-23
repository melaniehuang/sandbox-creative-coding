Mover[] movers;
float ellipseSize = 20;

void setup() {
  size(1200, 800, P2D);
  background(10, 255, 255);
  fill(230, 255, 10, 100);
  movers = new Mover[5];
  
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {  
  background(10, 255, 255);

  for (Mover m: movers){
    PVector gravity = new PVector(0, 0.3);
    gravity.mult(m.mass);
    m.applyForce(gravity);
        
    //PVector wind = new PVector(0.5, 0);
    //m.applyForce(wind);      
    
    //Let's apply friction!
    if (mousePressed){
      PVector friction = m.velocity.get();
      friction.normalize();
      friction.mult(-1);
      float c = 0.3;
      friction.mult(c);
      m.applyForce(friction);
    }
    
    m.update();
    m.edges();
    m.display();  
  }
}