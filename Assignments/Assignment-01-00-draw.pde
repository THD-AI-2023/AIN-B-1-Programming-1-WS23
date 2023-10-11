// Task 01: Drawing
// Description: A Processing sketch that draws a design or picture
// Author: Alex Rudaev
// Date: 11/10/2023
// Docs: https://processing.org/reference/

// Set up the enviroment
size(640, 480);
background(122);

// Draw the image

// Red circle
fill(255, 0, 0);
ellipse(320, 240, 200, 200);

// Green circle
fill(0, 255, 0);
ellipse(320, 240, 150, 150);

// Blue triangle
fill(0, 0, 255);
triangle(320, 240, 320, 340, 420, 240);

// Blue line square
strokeWeight(5);
noFill();
stroke(0, 0, 255);
square(320-100, 240-100, 100);

// Save the image
save("task_01_drawing.tif");
