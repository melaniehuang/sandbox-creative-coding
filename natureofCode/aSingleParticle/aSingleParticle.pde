Particle p;

void setup(){
  size(1200,800);
  background(10,255,255);
  p = new Particle(new PVector(width/2,10));
}

void draw(){
  background(10,255,255);
  p.run();
  
  if (p.isDead()){
    println("Particle game over");
  }
}