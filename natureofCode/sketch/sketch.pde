ParticleSystem p1;

void setup(){
  size(1200,800);
  background(10,255,255);
  p1 = new ParticleSystem();
}

void draw(){
  background(10,255,255);
  p1.addParticle();
  p1.run();
}