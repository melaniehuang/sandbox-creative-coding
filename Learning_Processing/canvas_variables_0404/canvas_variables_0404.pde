int canvasNumber = 5;
int gap = 10;
int canvasSize = 100;
int startX;
  
void settings(){
  size((canvasNumber*canvasSize)+((canvasNumber+1)*gap),canvasSize+(gap*2));
}

void setup(){
  background(#0000aa);
  smooth();
  noLoop();
  ellipseMode(CENTER);
}

void draw(){
  drawCanvas();
  drawArt1();
  drawArt2();
  drawArt3();
}

void drawCanvas(){
  for( int i = 0; i < canvasNumber; i++){
    noFill();
    stroke(255);
    rect(gap+((i*canvasSize)+(gap*i)), gap, canvasSize, canvasSize);
  }
}

void drawArt1(){
  startX = gap;
  
  noStroke();
  fill(255);
  
  for ( int r = 0; r < 2; r++){
    for ( int c = 0; c < 2; c++){
      ellipse(startX+(canvasSize/4)+(canvasSize/2)*c, (height/4)+(height/4*2)*r, canvasSize/4, canvasSize/4);
    }
  }
}

void drawArt2(){
  startX = gap*3 + canvasSize*2;
  
  stroke(255);
  line(startX + (canvasSize/2), gap, startX + (canvasSize/2), height/2);
  line(startX, height-gap, startX + (canvasSize/2), height/2);
  line(startX+canvasSize, height-gap, startX + (canvasSize/2), height/2);
}

void drawArt3(){
  startX = gap*2 + canvasSize;
   
  fill(255);
  noStroke();
  rect(gap+startX, gap*2, canvasSize-gap*2, canvasSize-gap*2); 
  fill(#0000aa);
  ellipse(startX+canvasSize/2, height/2, canvasSize/4,canvasSize/4);
}