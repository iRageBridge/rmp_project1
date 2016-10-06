class Face{
  float x;
  float y;
  
  Face(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void paint(){
    paint(0,0);
  }
  
  void paint(int x, int y){
    pushMatrix();
    translate (x,y);
    
    //Head
    
    fill(255,200,200);
    ellipse(mouseX,mouseY,80,100);
    
    //Hair
    
    fill(0);
    arc(mouseX, mouseY-30, 80, 50, TWO_PI-PI, TWO_PI);
    
    //Beard
    
    fill(100);
    arc(mouseX, mouseY, 80, 100, 0, PI);
    
    //Left Eye
    
    fill(255,255,255);
    ellipse(mouseX-25,mouseY-20,25,25);
    
    //Left Pupil
    //If statements cause pupils to look in direction of circles.
    fill(0,0,0);
    if(keyCode == RIGHT && keyPressed){
      ellipse(mouseX-15, mouseY-20, 5,5);
    }
    
    else if(keyCode == UP && keyPressed){
      ellipse(mouseX-25, mouseY-30, 5,5);
    }
    
    else if(keyCode == DOWN && keyPressed){
      ellipse(mouseX-25, mouseY-10, 5,5);
    }
    
    else if(keyCode == LEFT && keyPressed){
      ellipse(mouseX-35, mouseY-20, 5,5);
    }
    
    else{
      ellipse(mouseX-25,mouseY-20,5,5);
    }
    
    //Right Eye
    
    fill(255,255,255);
    ellipse(mouseX+25,mouseY-20,25,25);
    
    //Right Pupil
    
    //If statements cause pupils to look in direction of circles.
    fill(0,0,0);
    if(keyCode == LEFT && keyPressed){
      ellipse(mouseX+15, mouseY-20, 5,5);
    }
    
    else if(keyCode == UP && keyPressed){
      ellipse(mouseX+25, mouseY-30, 5,5);
    }
    
    else if(keyCode == DOWN && keyPressed){
      ellipse(mouseX+25, mouseY-10, 5,5);
    }
    
    else if(keyCode == RIGHT && keyPressed){
      ellipse(mouseX+35, mouseY-20, 5,5);
    }
    
    else{
      ellipse(mouseX+25,mouseY-20,5,5);
    }
    
    
    //Mouth
    
    fill(255,100,100);
    ellipse(mouseX,mouseY+35,50,15);
    
    //Nose
    
    fill(255,0,0);
    triangle(mouseX,mouseY,mouseX-15,mouseY+10,mouseX+15,mouseY+10);
    
    popMatrix();
  }
}