ParticleSystem p1;

void setup(){
  size(1200,800,P2D);
  background(29,29,29);
  p1 = new ParticleSystem();
}

void draw(){
  background(29,29,29);
  p1.addParticle();
  p1.run();
}