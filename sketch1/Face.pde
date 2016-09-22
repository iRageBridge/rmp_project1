class Face{
  
  void paint(){
    paint(0,0);
  }
  
  void paint(int x, int y){
    pushMatrix();
    translate (x,y);
    fill(255,0,0);
    ellipse(200,200,100,100);
    popMatrix();
  }
}