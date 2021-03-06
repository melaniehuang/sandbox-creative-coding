class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle(PVector l) {
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    lifespan = 255.0;
  }
  
  void run(){
    update();
    display();
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }
  
  void display(){
    noStroke();
    fill(175,lifespan);
    ellipse(location.x, location.y,20,20);
  }
  
  boolean isDead(){
    if (lifespan < 0.0){
      return true;
    } else {
      return false;
    }
  }
}