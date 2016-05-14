int w;
int h;
int i = 0;
int horizontal = 0;
PVector origin;

void setup(){
 size(1200,900);
 background(#051b48);
 rectMode(CORNERS);
 noStroke();
 
 origin = new PVector(random(10,width-10),random(10,height-10)); 
 w = 500;
 h = 120;
}

void draw(){
 i++;
 
 float wr = random(-1,1);
 float hr = random(-1,1);
 fill(#4ba8de,random(1,5));
 
 if (i%100 == 0){
  origin = new PVector(random(10,width-10),random(10,height-10));
  i = 0;
  horizontal++;
 }
 
 if (horizontal == 5){
  fill(#daf7ff,10);
  rect(origin.x, origin.y,origin.x + 300,height);
  horizontal = 0;
 }

 rect(origin.x,origin.y,origin.x - w*wr,origin.y - h*hr);
 fill(#65a7ea, random(1,5));
 rect(origin.x,origin.y,origin.x - w*wr,origin.y - h*hr);
}