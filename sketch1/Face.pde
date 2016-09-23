class Face{
  
  void paint(){
    paint(0,0);
  }
  
  void paint(int x, int y){
    pushMatrix();
    translate (x,y);
    fill(255,0,0);
    ellipse(mouseX,mouseY,100,100);
    fill(0,255,0);
    ellipse(mouseX-25,mouseY-20,25,25);
    fill(0,255,0);
    ellipse(mouseX+25,mouseY-20,25,25);
    fill(0,255,0);
    triangle(mouseX,mouseY,mouseX-15,mouseY+10,mouseX+15,mouseY+10);
    popMatrix();
  }
}