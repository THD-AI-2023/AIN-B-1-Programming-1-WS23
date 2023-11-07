// Task 3: A Simple Game - Bouncing Ball (Dino Game)
// Description: A simple game where the player controls a ball and tries to avoid obstacles.
// Author: Alex Rudaev
// Date: 07/11/2023
// Docs: https://processing.org/tutorials/gettingstarted

// Ball variables
int ballX, ballY;
int ballSize = 30;
boolean isJump = false;
int jumpHeight = 0;

// Score variables
int score = 0;
int highScore = 0;

// Obstacle variables
int obstacleX, obstacleY;
int obstacleWidth, obstacleHeight;
int obstacleSpeed = 5;

// Game State variables
boolean gameOver = false;
boolean gameStarted = false;

// Setup the environment
void setup() {
    size(640, 480);
    // TODO: Initialize game variables
}

// Draw the game
void draw() {
    background(255);

    if (gameStarted) {
        // TODO: Game logic when running
    } else if (gameOver) {
        // TODO: Game Over screen logic
    } else {
        // TODO: Start screen logic
    }
}

// Handle key presses
void keyPressed() {
    // TODO: Handle key press for jump and game restart
}

// Function to draw the ball
void drawBall() {
    // TODO: Draw the ball
}

// Function to update the ball's position
void updateBall() {
    // TODO: Update the ball's position
}

// Function to draw the obstacle
void drawObstacle() {
    // TODO: Draw the obstacle
}

// Function to update the obstacle's position
void updateObstacle() {
    // TODO: Update the obstacle's position
}

// Function to update the score
void updateScore() {
    // TODO: Update the score
}

// Function to check if the ball collided with the obstacle
boolean checkCollision() {
    // TODO: Check if the ball collided with the obstacle
    return false;
}

// Function to reset the game
void resetGame() {
    // TODO: Reset the game
}