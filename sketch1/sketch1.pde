int numCircles = 20;
Circle [] circles = new Circle [numCircles];
Face myFace = new Face(200, 200);

void setup(){
  size (400,400);
  background(122);
  
  //Looping through circles array, and creating one circle for each index, in this case 0 through 19.
  
  for (int i=0; i<numCircles; i++){
    circles[i] = new Circle(random(width), random(height));
    //Testing to see how many circles were added, easier than couting on the stage.
    println("There are now " + (i + 1) + " circles");
  }
}

void draw(){
  background(122);
  
  //Now that the circles are created, time to add them to the stage, this adds 20 circles to the stage.
  //If statements cause infinite scrolling of circles.
  for (int i = 0; i < numCircles; i++){
    circles[i].paint();
    if(circles[i].x <= 0){
      circles[i].x = 400;
    }
    
    if(circles[i].x >= width && keyCode == RIGHT){
      circles[i].x = 0;
    }
    
    if(circles[i].y <= 0){
      circles[i].y = 400;
    }
    
    if(circles[i].y >= height && keyCode == DOWN){
      circles[i].y = 0;
    }
  }
  
  //Calling the face class.
  
  myFace.paint();

//Detecting key input in the following funtion, and changing the x and y coordinates of all 20 circles at once.

//void keyPressed(){
  for (int j =0; j<numCircles; j++){
    if (keyCode == UP && keyPressed){
        circles[j].y -=10;
    }
    
    if (keyCode == DOWN && keyPressed){
        circles[j].y +=10;
    }
    
    if (keyCode == LEFT && keyPressed){
        circles[j].x -=10;
    }
    
    if (keyCode == RIGHT && keyPressed){
      circles[j].x +=10;
    }
  }
}