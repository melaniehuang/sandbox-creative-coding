boolean lightOn = false;

void setup(){
  size(500,500);
  background(0);
  noStroke();
}

void draw(){
  rectMode(CENTER);
  
  if (mousePressed == true){
    background(180);
    fill(255,237,0);
    ellipse(width/2, height/8, 50, 50);
    
    fill(200);
    rect(width/2, height/2, 20,60);
    fill(255);
    rect(width/2, height/2+14, 12,24); 
  } else {
    background(0);
    fill(100);
    ellipse(width/2, height/8, 50, 50);
    
    fill(100);
    rect(width/2, height/2, 20,60);
    fill(150);
    rect(width/2, height/2-14, 12,24); 
  }
 
}