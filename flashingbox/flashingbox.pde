color bg = color(13, 65, 250);

void setup(){
  size(1200,900);
  background(bg);
  noStroke();
}

void draw(){
  int s = second();
  background(bg);
  fill(bg);
  
  if(s%2 == 0) {
    if(on){
      fill(255);
    } else {
      fill(bg);    
      on = !on;
    }  
  }
  rect(100,100,10,20);
}