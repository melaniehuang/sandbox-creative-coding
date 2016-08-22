Particle p;

void setup(){
  size(1200,800);
  p = new Particle(new PVector(width/2,10));
}

void draw(){
  background(255);
  p.run();
  if (p.isDead()){
    println("I died :/");
  }
}