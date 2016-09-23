class Circle{
  float x;
  float y;
  float cWidth;
  float cColour1 = random(255);
  float cColour2 = random(255);
  float cColour3 = random(255);
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
    cWidth = random(10,50);
  }
  
  void paint(){
    fill(cColour1, cColour2, cColour3);
    ellipse(x, y, cWidth, cWidth);
  }
}