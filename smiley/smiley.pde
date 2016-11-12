float happinessMeter = 0;
int direction = 1;

void setup(){
  size(1200,900);
  background(#FFEC15);
}

void draw(){
  background(#FFEC15);
  noStroke();
  fill(0);
  ellipse(width/4,340,40,40);
  ellipse(width/2+(width/4),340,40,40);
  
  if (happinessMeter < -400){
    direction = 1;
  } 
  
  if (happinessMeter > 0){
    direction = -1;
  } 
  
  happinessMeter = happinessMeter + direction;
  
  //map(happinessMeter, -400, 0, -1, 1);

  stroke(0);
  strokeWeight(40);
  noFill();
  bezier(width/4, 600, (width/8)*3, height-(height/8) + happinessMeter, width-((width/8)*3), height - (height/8) + happinessMeter, width/2+(width/4), 600);  
  
  println(happinessMeter);
}