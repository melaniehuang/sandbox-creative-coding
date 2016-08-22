Mover mover;
float ellipseSize = 100;
int a = 230;

void setup(){
  size(1200,800,P2D);
  background(10,255,255);
  fill(230,255,10,100);
  mover = new Mover();
}

void draw(){  
  //background(10,255,255);

  PVector gravity = new PVector(0,0.05);
  mover.applyForce(gravity);
    
  if (mousePressed){
    PVector wind = new PVector(0.1,0.05);
    mover.applyForce(wind);
    a--;
    ellipseSize++;
  } else {
     ellipseSize--;
  }
  
  fill(a,100,255,100);
  println(a);
  
  if (a == 0){
   a = 255;
  }
  
  mover.update();
  mover.edges();
  mover.display();
  
}