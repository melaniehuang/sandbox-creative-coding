class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector f){
    acceleration.add(f);
  }
  
  void edges(){
    if (location.x > width - ellipseSize/2){
      velocity.mult(-1);
    } else if (location.x < ellipseSize/2){
      velocity.mult(-1);
    }
      
    if (location.y > height - ellipseSize/2){
      velocity.mult(-1);
    } else if (location.y < ellipseSize/2){
      velocity.mult(-1);
    }
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void display(){
    noStroke();
    ellipse(location.x, location.y, ellipseSize, ellipseSize);
  }
}