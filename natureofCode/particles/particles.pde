class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle(PVector l) {
    location = l.get();
    acceleration = new PVector();
    velocity = new PVector();
    lifespan = 255;
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 20;
  }
  
  void display(){
    noStroke();
    fill(175,lifespan);
    ellipse(location.x, location.y,8,8);
  }
}