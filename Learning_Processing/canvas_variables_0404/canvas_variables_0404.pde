int canvasNumber = 3;
int gap = 10;
int canvasSize = 300;

void settings(){
  size((canvasNumber*canvasSize)+((canvasNumber+1)*gap),canvasSize+(gap*2));
  
}

void setup(){
  background(#0000aa);
  smooth();
  noLoop();
}

void draw(){
  drawCanvas();
  drawArt1();
}

void drawCanvas(){
  for( int i = 0; i < canvasNumber; i++){
    noFill();
    stroke(255);
    rect(gap+((i*canvasSize)+(gap*i)), gap, canvasSize, canvasSize);
  }
}

void drawArt1(){
  int startX = gap;
  int startY = gap;
  
  ellipseMode(CENTER);
  noStroke();
  fill(255);
  
  for ( int r = 0; r < 2; r++){
    for ( int c = 0; c < 2; c++){
      ellipse(gap+(canvasSize/4)+(canvasSize/2)*c, (height/4)+(height/4*2)*r, canvasSize/6, canvasSize/6);
    }
  }
}