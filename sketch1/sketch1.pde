float [][] allCircles = new float [20][];
float [] circle = new float [3];

void setup(){
  size (400,400);
  background(122);
}

void draw(){
  background(122);
  fill (0,25,0);
  for (int i = 0; i < 20; i++){
    float circlePosX = random(width);
    float circlePosY = random(height);
    float circRadius = random(100);
    circle[0] = circlePosX;
    circle[1] = circlePosY;
    circle[2]= circRadius;
    allCircles[i] = circle;
    ellipse(allCircles[i][0], allCircles[i][1], circRadius, circRadius);
  }
}