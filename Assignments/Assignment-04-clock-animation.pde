void setup() {
    size(640, 480);
    // TODO: Other initializations
}

void draw() {
    background(255);
    drawClock();
    updateAndDrawNeedles();
    handleInteraction();
}

// Draw clock face and hour ticks
void drawClock() {
    // TODO: Draw clock face
}

// Update and draw the clock needles
void updateAndDrawNeedles() {
    // TODO: Update and draw needles
}

// Change parameters based on mouse position
void handleInteraction() {
    // TODO: Change parameters based on mouse position
}

void mousePressed() {
    saveFrame("task_4_clock.tif");
}
