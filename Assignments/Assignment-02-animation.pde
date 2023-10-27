// Task 02: Animation
// Description: A Processing sketch that draws and animates a picture
// Author: Alex Rudaev
// Date: 24/10/2023
// Docs: https://processing.org/tutorials/gettingstarted

// Define colors
color green = color(0, 255, 0);
color red = color(255, 0, 0);
color blue = color(0, 0, 255);

// Define the starting point of the shapes
int circleX, circleY, circleX2, circleY2, squareX, squareY, triangleX, triangleY;

// Movement speed
int speed = 2;

// Set up the enviroment, run the draw function and save
void setup() {
    size(640, 480);
    background(122);
    startingPoint();
}

// Animate the image
void draw() {
    // Clear the previous frame
    background(122);

    // Move the shapes
    circleX = move(circleX, speed, 640);
    circleY = move(circleY, speed, 480);
    circleX2 = move(circleX2, speed, 640);
    circleY2 = move(circleY2, speed, 480);
    squareX = move(squareX, speed, 640);
    squareY = move(squareY, speed, 480);
    triangleX = move(triangleX, speed, 640);
    triangleY = move(triangleY, speed, 480);

    // Red circle
    fill(red);
    ellipse(circleX + 320, circleY + 240, 200, 200);

    // Green circle
    fill(green);
    ellipse(circleX2 + 320, circleY2 + 240, 150, 150);

    // Blue triangle
    fill(blue);
    triangle(triangleX + 320, triangleY + 240, triangleX + 320, triangleY + 340, triangleX + 420, triangleY + 240);

    // Blue line square
    strokeWeight(5);
    noFill();
    stroke(blue);
    rect(squareX + 220, squareY + 140, 100, 100);

    // Reset the animation after 1 second
    if (circleX == 0 && circleY == 0 && circleX2 == 0 && circleY2 == 0 && squareX == 0 && squareY == 0 && triangleX == 0 && triangleY == 0) {
        delay(1000);
        startingPoint();
    }
}

// Random shape starting point
void startingPoint() {
    int i = 0, j = 640;
    circleX = (int) random(i, j);
    circleY = (int) random(i, j);
    circleX2 = (int) random(i, j);
    circleY2 = (int) random(i, j);
    squareX = (int) random(i, j);
    squareY = (int) random(i, j);
    triangleX = (int) random(i, j);
    triangleY = (int) random(i, j);
}

// Move the shape
int move(int position, int speed, int max)
{
    if (position != 0) {
        position = (position > 0) ? max(position - speed, 0) : min(position + speed, max);
    }
    return position;
}
