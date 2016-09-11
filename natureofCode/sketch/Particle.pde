class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle(PVector l){
    acceleration = new PVector(0,-0.01);
    velocity = new PVector(random(-0.1, 0.1),0.001);
    location = l.get();
    lifespan = random(100,150); 
  }
  
  void applyForce(PVector f){
    acceleration.add(f);
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
  }
  
  void display(){
    noStroke();
    fill(255,lifespan);
    float eSize = map(lifespan, 0, 150, 40, 60); 
    ellipse(location.x,location.y, eSize, eSize);
  }
  
  boolean isDead(){
    return lifespan < 0;
  }
}