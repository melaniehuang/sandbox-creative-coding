class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;
  
  ParticleSystem(){
    origin = new PVector(width/2,height - 100);
    particles = new ArrayList<Particle>();
  }
   
  void addParticle(){
    particles.add(new Particle(origin));
  }
  
  void applyForce(PVector force){
    for (Particle p: particles){
     p.applyForce(force);  
    }
  }
  
  void run(){
    for (int i = particles.size()-1; i >= 0; i--){
      Particle p = particles.get(i);
      p.update();
      p.display();
    
      if (p.isDead()){
        particles.remove(i);
      }
    }
  }
}