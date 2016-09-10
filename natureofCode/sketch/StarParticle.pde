class StarParticle extends Particle {
  
  StarParticle(PVector l){
    super(l);
  }
  
  void display(){
    noStroke();
    fill(255,237,0,lifespan);
    rect(location.x,location.y,10,10);
  }
  
}