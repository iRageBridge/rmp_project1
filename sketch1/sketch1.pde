int numCircles = 20;
Circle [] circles = new Circle [numCircles];
Face myFace;

void setup(){
  size (400,400);
  background(122);
  
  myFace = new Face();
  for (int i=0; i<numCircles; i++){
    circles[i] = new Circle(random(width), random(height));
    println("This is circle: " + (i + 1));
  }
}

void draw(){
  background(122);
  
  myFace.paint();
  for (int i = 0; i < numCircles; i++){
    circles[i].paint();
  }
}

void keyPressed(){
  for (int j =0; j<numCircles; j++){
    if (keyCode == UP){
      println("UP Pressed");
        circles[j].y -=10;
    }
    
    if (keyCode == DOWN){
      println("DOWN Pressed");
        circles[j].y +=10;
    }
    
    if (keyCode == LEFT){
      println("LEFT Pressed");
        circles[j].x -=10;
    }
    
    if (keyCode == RIGHT){
      println("RIGHT Pressed");
        circles[j].x +=10;
    }
  }
}