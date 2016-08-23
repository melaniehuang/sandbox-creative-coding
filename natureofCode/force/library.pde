class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover() {
    location = new PVector(random(width), height/3);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
  }
  
  void edges(){
    if (location.x > width - ellipseSize/2){
      location.x = width - ellipseSize/2;
      velocity.x *= -1;
    } else if (location.x < ellipseSize/2){
      velocity.x *= -1;
      location.x = ellipseSize/2;
    }
    
    if (location.y > height - ellipseSize/2){
      velocity.y *= -1;
      location.y = height - ellipseSize/2;
    } 
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector f){
    PVector force = PVector.div(f,mass);
    acceleration.add(force);
  }
  
  void display(){
    noStroke();
    fill(255,230,0,200);
    ellipse(location.x, location.y, ellipseSize*mass, ellipseSize*mass);
  }
}