// Task 5: An Explosion
// Description: Create an explosion of particles when the mouse is pressed.
// Author: Alex Rudaev
// Date: 28/11/2023
// References: https://github.com/THD-AI-2023/AIN-B-1-Programming-1-WS23/issues/15


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

// Create an explosion on mouse pressed
void mousePressed() {
    resetExplosion();
    createParticle(mouseX, mouseY, 50);
}

// Save the frame on mouse released
void mouseReleased() {
    saveFrame("task_5_explosion.tif");
}

// Reset the explosion
void resetExplosion() {
    particles.clear();
}

// Create a particle
void createParticle(float x, float y, int count) {
    for (int i = 0; i < count; i++) {
        particles.add(new Particle(x, y));
    }
}

// Particle class
class Particle {
    float x, y;
    float size;
    float velocityX, velocityY;

    // Constructor
    Particle(float x, float y) {
        this.x = x;
        this.y = y;
        this.size = random(5, maxParticleSize);
        this.velocityX = random(-5, 5);
        this.velocityY = random(-5, 5);
    }

    // Update the particle
    void update() {
        x += velocityX;
        y += velocityY;
        size += 0.1;
        size = min(size, maxParticleSize);
    }

    // Display the particle
    void display() {
        ellipse(x, y, size, size);
    }
}