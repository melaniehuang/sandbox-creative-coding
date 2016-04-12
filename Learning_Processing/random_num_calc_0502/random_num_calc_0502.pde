int randNum = (int) random(0,60);

if (randNum <= 25){
  println("Equal or less than 25");
} else if (randNum > 25 && randNum <= 50){
  println("Between 25 and 50");
} else if (randNum > 50) {
  println("More than 50!");
}

println(randNum);