// Task 4: Clock Animation
// Description: A clock with two needles. The fast needle is controlled by the mouse position, the slow needle by the mouse speed.
// Author: Alex Rudaev
// Date: 10/11/23
// Docs: https://processing.org/tutorials/gettingstarted

// Global variables
float fastNeedleAngle = 0;
float slowNeedleAngle = 0;
float fastNeedleSpeed = 0.015;
float slowNeedleSpeed = 0.001;
int fastNeedleLength, slowNeedleLength;

void setup() {
  size(640, 480);
}

void draw() {
    background(255);
    drawClock();
    updateNeedles();
    drawNeedles();
}

void drawClock() {
    int centerX = width / 2;
    int centerY = height / 2;
    float hourTickAngle = TWO_PI / 12;
  
    stroke(0);
    for (int i = 0; i < 12; i++) {
        float angle = i * hourTickAngle;
        float x0 = centerX + cos(angle) * 180;
        float y0 = centerY + sin(angle) * 180;
        float x1 = centerX + cos(angle) * 200;
        float y1 = centerY + sin(angle) * 200;
        line(x0, y0, x1, y1);
    }
}

// Update the needle angles
void updateNeedles() {
    fastNeedleAngle += fastNeedleSpeed;
    slowNeedleAngle += slowNeedleSpeed;
}

// Draw the needles
void drawNeedles() {
    stroke(255, 0, 0);
    line(centerX, centerY, centerX + cos(fastNeedleAngle) * fastNeedleLength, centerY + sin(fastNeedleAngle) * fastNeedleLength);

    stroke(0, 0, 255);
    line(centerX, centerY, centerX + cos(slowNeedleAngle) * slowNeedleLength, centerY + sin(slowNeedleAngle) * slowNeedleLength);
}

// Save the frame on mouse press
void mousePressed() {
    saveFrame("task_4_clock.tif");
}

// Update the needle length and speed on mouse move
void mouseMoved() {
    // TODO: Update the needle length and speed
}