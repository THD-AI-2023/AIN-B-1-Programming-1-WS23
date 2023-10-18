// Set up the enviroment, run the draw function and save
void setup() {
  size(600, 400);
  background(122, 122, 122);
  drawFace();
  save("exercise_01_02_not_smiling.tif");
}

// Draw the face
void drawFace() {
  int white = 255;
  int black = 0;
  int centerX = width/2;
  int centerY = height/2;
  
  fill(white);
  stroke(white);
  ellipse(centerX, centerY, 300, 300);
  
  // Change color to black
  fill(black);
  stroke(black);
 
  // Draw eyes
  ellipse(centerX - 80, centerY - 50, 50, 50);
  ellipse(centerX + 80, centerY - 50, 50, 50);
  
  // Draw mouth
  rect(centerX - 100, centerY + 50, 200, 50);
  
  // Draw hat
  triangle(
  centerX - 200, centerY - 100,
  centerX, centerY - 200,
  centerX + 200, centerY - 100);
}


