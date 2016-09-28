class Face{
  
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
    
    //Left Pupil
    
    fill(255,255,255);
    ellipse(mouseX-25,mouseY-20,25,25);
    
    //Left Eye
    
    fill(0,0,0);
    ellipse(mouseX-25,mouseY-20,5,5);
    
    //Right Pupil
    
    fill(255,255,255);
    ellipse(mouseX+25,mouseY-20,25,25);
    
    //Right Eye
    
    fill(0,0,0);
    ellipse(mouseX+25,mouseY-20,5,5);
    
    //Mouth
    
    fill(255,100,100);
    ellipse(mouseX,mouseY+35,50,15);
    
    //Nose
    
    fill(255,0,0);
    triangle(mouseX,mouseY,mouseX-15,mouseY+10,mouseX+15,mouseY+10);
    
    popMatrix();
  }
}