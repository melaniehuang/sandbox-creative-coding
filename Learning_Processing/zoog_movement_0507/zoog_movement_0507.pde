int zoogX;
int zoogDir = 1;
void setup(){
  background(#21EEFF);
  size(900,300);
  ellipseMode(CENTER);
}

void draw(){
  background(#21EEFF);
  
  zoogX = zoogX + 4*zoogDir;
  
  noStroke();
  fill(255);
  ellipse(zoogX,height-100,100,100);
  
  if (zoogX > width-50){
    zoogDir = -1;
  } else if (zoogX < 50){
    zoogDir = 1;
  }
}