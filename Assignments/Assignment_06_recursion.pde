// Task 06: Snowflake Variant
// Description: This sketch draws a snowflake using recursion, with properties changing based on mouse position.
// Author: Alex Rudaev
// Date: 12/12/23
// Docs: https://processing.org/tutorials/gettingstarted

// Global Variables
int maxDepth;
float branchLength;

// Set up the enviroment
void setup() {
  size(640, 480);
  background(255);
  stroke(0);
}

// Run the recursion
void draw() {
  background(255);
  translate(width/2, height/2);

  // Update parameters based on mouse position
  maxDepth = int(map(mouseX, 0, width, 3, 10));
  branchLength = map(mouseY, 0, height, 5, 150);

  drawSnowflake(0, 0, branchLength, maxDepth);
}

// Recursive function to draw the snowflake
void drawSnowflake(float x, float y, float len, int depth) {
  if (depth == 0) {
    line(x, y, x, y - len);
    return;
  }
  for (int i = 0; i < 6; i++) {
    float endX = x + cos(PI/3 * i) * len;
    float endY = y - sin(PI/3 * i) * len;
    line(x, y, endX, endY);
    drawSnowflake(endX, endY, len/3, depth - 1);
  }
}

// Save the frame on mouse press
void mousePressed() {
  saveFrame("task_6_recursion.tif");
}
