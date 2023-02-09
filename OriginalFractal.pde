public void setup() {
  size(601, 601);
  rectMode(CENTER);

} 

public void draw() {
  background(0);
  myFractal(500, 100, 600, 150);
  
}

//int rot = 3;
public void myFractal(float xPos, float yPos, float len , float triLen) {
//float triXPos, float triYPos
  stroke(#1F51FF);
  fill(0);
  rect(300, 300, len, len);
  stroke(#DD2700);
  fill(50);
  ellipse(300, 300, len, len);
  stroke(#C10DC8);
  triangle(0, 300, 300-triLen, 300-triLen, 300-triLen, 300+triLen);
  triangle(300, 0, 300-triLen, 300-triLen, 300+triLen, 300-triLen);
  triangle(600, 300, 300+triLen, 300-triLen, 300+triLen, 300+triLen);
  triangle(300, 600, 300-triLen, 300+triLen, 300+triLen, 300+triLen);
  //rotate(PI/rot);
  if(len > 1) {
    myFractal(xPos, yPos, len/2, triLen/2);
  }
}
