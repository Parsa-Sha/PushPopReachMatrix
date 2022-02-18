// Recursive Fractal
// Using a recursive function, I made a fractal that brances out based on an angle that is calculated from mouse position
// 02/18/2022
// https://github.com/Parsa-Sha/RecursiveFractal

float theta;   

void setup() {
  size(900, 900);
  noFill();
  rectMode(CENTER);
}

void draw() {
  background(39, 66, 75);
  frameRate(30);
  stroke(255, 250, 221);
  float a = (mouseX / (float) width) * 180f;
  theta = radians(a);
  translate(width/2,height/2);
  branch(150);
}

void branch(float h) {
  h *= 0.66;

  if (h > 20) {
    pushMatrix();    
    rotate(theta);  
    rect(0, 0, -h, -h);  
    translate(0, -h); 
    branch(h);    
    popMatrix();  
    
    pushMatrix();
    rotate(-theta);
    rect(0, 0, -h, -h);
    translate(0, -h);
    branch(h);
    popMatrix();

    pushMatrix();    
    rotate(theta);  
    rect(0, 0, h, h);  
    translate(0, h); 
    branch(h);    
    popMatrix();  
    
    pushMatrix();
    rotate(-theta);
    rect(0, 0, h, h);
    translate(0, h);
    branch(h);
    popMatrix();
  }
}
