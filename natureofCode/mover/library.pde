class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void checkEdges(){
    if (location.x > width){
      location.x = 0;
    } else if (location.x < 0){
      location.x = width;
    }
      
    if (location.y > height){
      location.y = 0;
    } else if (location.y < 0){
      location.y = height;
    }
  }
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
  }
  
  void display(){
    noStroke();
    fill(230,255,10,100);
    float ellipseSize = random(100,120);
    ellipse(location.x, location.y, ellipseSize, ellipseSize);
  }
}