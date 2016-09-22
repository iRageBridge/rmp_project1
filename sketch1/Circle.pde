class Circle{
  float x;
  float y;
  float cWidth;
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
    cWidth = random(10,50);
  }
  
  void paint(){
    fill(0,25,0);
    ellipse(x, y, cWidth, cWidth);
  }
}