class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void update(){
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    float m = dir.mag();
    float mX = map(m, 0, 20, 0, 1);
    println(mX);
    
    dir.normalize();
    dir.mult(0.05);
    acceleration = dir.mult(mX);
    
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(10);
  }
  
  void display(){
    noStroke();
    fill(230,255,10,120);
    float ellipseSize = 100;
    ellipse(location.x, location.y, ellipseSize, ellipseSize);
  }
}