float centXA;
float aDir = 1;
float aSpeed = 2;

float centXB;
float bDir = 1;
float bSpeed = 2;

float centY;

void setup(){
  size(800,300);
  background(#0000aa);
  ellipseMode(CENTER);
  smooth();
  centXA = width/2 + 100;
  centXB = width/2 - 100;
  centY = height/2;
}

void draw(){  
  background(#0000aa);
  stroke(255);
  strokeWeight(20);
  noFill();
  
  if (centXA > width/2){
    aDir = -1;
  }
  
  if (centXA < width/2-100){
    aDir = 1;
  }
    
  centXA = centXA + aSpeed * aDir;
  //ellipse(centXA,centY,50,50);
  
  if (centXB > width/2+100){
    bDir = -1;
  }
  
  if (centXB < width/2){
    bDir = 1;
  }
    
  centXB = centXB + bSpeed * bDir;
  ellipse(centXB,centY,50,50);
    
  strokeWeight(20);
  bezier(centXA, centY+80, centXA-100,centY-90, centXB, centY,centXB+30,centY-100);
  bezier(centXA+200, centY+100, centXA+10,centY+100, centXB-200, centY+200,centXA-100,centY-50);
  //line(centXA, centY-15, centXB, centY+15);
}