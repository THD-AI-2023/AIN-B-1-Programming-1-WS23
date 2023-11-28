// # Task 5: An Explosion

// ## Overview
// Write a Processing sketch that demonstrates a simple explosion effect based on the guidelines and conditions specified below.

// ## Conditions
// - **Drawing Area**: The size of the drawing area is 640x480px.
// - **Initial State**: Initially, the drawing area is blank, either a homogeneous color or with a simple background drawing.
// - **Explosion Trigger**: On mouse click, a large number of simple shapes (preferably circles) appear at the mouse tip.
// - **Shape Behavior**: The shapes fly out in random directions from the mouse tip.
// - **Size Increase**: As long as the mouse is pressed, the shapes gradually increase in size until they reach a predetermined maximum size.
// - **Post-Release**: Once the mouse is released, the shapes maintain their size and continue their trajectory.
// - **Screenshot**: A screenshot is saved when the mouse is released.
// - **Shape Exit**: The shapes are allowed to leave the drawing area without border handling.
// - **Reset Mechanism**: Clicking the mouse again resets the explosion, clearing any shapes from the previous explosion.

// ## Additional Instructions
// - **Comments**: Properly comment your sketch (refer to `02_Comments_Variables.pdf` for guidelines).
// - **Code Style**: Follow the established code style rules for exercise performance (details in `05_CodeStyle_Debugging.pdf`).
// - **File Naming**: Name your Processing sketch `task_5_explosion.pde` and the screenshot/image `task_5_explosion.tif`.
// - **Submission**: Submit your sketch (.pde) and image (.tif) via iLearn.
// - **Due Date**: `Tuesday, 2023-11-28, 23:00`.

// Instructor: Markus Mayer  
// Contact: markus.mayer@th-deg.de  
// Date: November 14, 2023


// Global variables
ArrayList<Particle> particles;
float maxParticleSize = 20;

void setup() {
    size(640, 480);
    background(255);
    particles = new ArrayList<Particle>();
}

void draw() {
    background(255);
    for (int i = 0; i < particles.size(); i++) {
        Particle p = particles.get(i);
        p.update();
        p.display();
    }
}

void mousePressed() {
    resetExplosion();
    createParticle(mouseX, mouseY, 50);
}

void mouseReleased() {
    saveFrame("task_5_explosion.tif");
}

void resetExplosion() {
    particles.clear();
}

void createParticle(float x, float y, int count) {
    for (int i = 0; i < count; i++) {
        particles.add(new Particle(x, y));
    }
}

class Particle {
    float x, y;
    float size;
    float velocityX, velocityY;

    Particle(float x, float y) {
        this.x = x;
        this.y = y;
        this.size = random(5, maxParticleSize);
        this.velocityX = random(-5, 5);
        this.velocityY = random(-5, 5);
    }

    void update() {
        x += velocityX;
        y += velocityY;
        size += 0.1;
        size = min(size, maxParticleSize);
    }

    void display() {
        ellipse(x, y, size, size);
    }
}