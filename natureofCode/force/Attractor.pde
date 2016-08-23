class Attractor {
  PVector location;
  float G;
  float mass;
  
  Attractor() {
    location = new PVector(random(width), height/3);
    G = 1;
    mass = 1;
  }
  
  PVector attract(Mover m){
    //direction
    PVector force = PVector.sub(location, m.location);
    float d = force.mag();
    d = constrain(d,5,25);
    force.normalize();
    
    //Magnitude
    float strength = (G * mass * m.mass)/(d*d);
    
    // Putting mag and dir together
    force.mult(strength);
    
    return force;
  }
  
  void display(){
    noStroke();
    fill(255,230,0,200);
    ellipse(location.x, location.y, ellipseSize*mass/2, ellipseSize*mass/2);
  }
}