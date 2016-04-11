void setup(){
  size(600,600);
  background(200);
}

void draw(){
  blendMode(BLEND);

  strokeWeight(abs(mouseX-pmouseX)*2);
  stroke(255,237,0);
  line(pmouseX,pmouseY, mouseX, mouseY);

  noStroke();
  fill(255, 40);
  rect(0,0, width, height);
}