void setup(){
  background(#0000aa);
  size(500,500);
  noStroke();
}

void draw(){
  FloatList carPos1 = drawCar(width/2, height/2, color(255), 100, color(200));
  println(carPos1);
  
  FloatList carPos2 = drawCar(100, 100, color(255), 40, color(200));
  println(carPos2);
  
  FloatList carPos3 = drawCar(360, 400, color(255), 200, color(200));
  println(carPos3);
}

FloatList drawCar(float xOrigin, float yOrigin, color bodyColor, int carWidth, color wheelColor){
  PVector origin = new PVector(xOrigin, yOrigin);
  FloatList originList = new FloatList(origin.x, origin.y);
  
  color carColor = bodyColor;
  int rectWidth = carWidth;
  color wheels = wheelColor;
  int offset = rectWidth/4;
  
  rectMode(CENTER);
  fill(carColor);
  rect(origin.x, origin.y, rectWidth, rectWidth/2);
  
  fill(wheels);  
  for (int i = -1; i < 2; i = i + 2){ 
    for (int j = -1; j < 2; j = j + 2){
      rect(origin.x - i*offset, origin.y - j*offset, rectWidth/4, rectWidth/8);
    }
  }
  return originList;
}