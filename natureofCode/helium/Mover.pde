int ellipseSize = 80;

class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass = 1;
  
  Mover(){
    location = new PVector(width/2,height-50);
    velocity = new PVector(0,1.0);
    acceleration = new PVector(0,0.5);
  }
  
  void edges(){
    if (location.x < (ellipseSize-20)/2){
      location.x = (ellipseSize-20)/2;
    } else if (location.x > width-((ellipseSize-20)/2)){
      location.x = width-((ellipseSize-20)/2);
    }
    
    if (location.y < ellipseSize/2){
      location.y = ellipseSize/2;
      acceleration.mult(-0.1);
      velocity.mult(-0.4);
    }
  }
  
  void applyForce(PVector f){
    PVector force = PVector.div(f,mass);
    acceleration.add(force);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void display(){
    noStroke();
    fill(237,70,29);
    ellipse(location.x,location.y,ellipseSize-20,ellipseSize);
  }

}