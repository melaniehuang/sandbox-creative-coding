ArrayList<Particle> particles;

void setup(){
  size(1200,800);
  background(10,255,255);
  particles = new ArrayList<Particle>();
}

void draw(){
  background(10,255,255);
  particles.add(new Particle());
  
  for (int i = particles.size()-1; i >= 0; i--){
    Particle p = particles.get(i);
    p.update();
    p.display();
    
    if (p.isDead()){
      particles.remove(i);
    }
  }
}