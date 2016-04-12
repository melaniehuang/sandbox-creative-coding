boolean lightOn = false;
boolean mouseLoc = false;

void setup(){
  size(500,500);
  background(0);
  noStroke();
}

void draw(){
  rectMode(CENTER);
  
  if (lightOn == true){
    background(180);
    fill(255,237,0);
    ellipse(width/2, height/8, 50, 50);
    
    fill(200);
    rect(width/2, height/2, 20,60);
    fill(255);
    rect(width/2, height/2+14, 12,24); 
  } else if (lightOn == false) {
    background(0);
    fill(100);
    ellipse(width/2, height/8, 50, 50);
    
    fill(100);
    rect(width/2, height/2, 20,60);
    fill(150);
    rect(width/2, height/2-14, 12,24); 
  }
 
}

void mouseClicked(){
  if (mouseX > (width/2-10) && mouseX < (width/2+10) && mouseY > (height/2-30) && mouseY < (height/2+30)){
    mouseLoc = true;
  } else {
    mouseLoc = false;
  }
  
  if (lightOn == false && mouseLoc == true){
    lightOn = true;
  } else if (lightOn == true && mouseLoc == true) {
    lightOn = false;
  }
}