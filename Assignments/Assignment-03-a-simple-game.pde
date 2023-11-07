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

// Physics variables
int gravity = 2;
int jumpPower = 20;
int maxJumpHeight = 100;

// Setup the environment
void setup() {
    println("Game setup!");
    size(640, 480);
    ballX = 100;
    ballY = height - ballSize;
    resetGame();
}

// Draw the game
void draw() {
    background(255);

    if (gameStarted) {
        updateGame();
    } else if (gameOver) {
        displayGameOverScreen();
    } else {
        displayStartScreen();
    }
}

// Handle key presses
void keyPressed() {
    println("Key pressed: " + key);
    if (key == ' ') {
        if (!gameStarted) {
            startGame();
        } else if (!isJump && !gameOver) {
            isJump = true;
        } else if (gameOver) {
            resetGame();
        }
    }
}

// Function to draw the ball
void drawBall() {
    println("Drawing ball at: " + ballX + ", " + ballY);
    fill(0);
    ellipse(ballX, ballY - jumpHeight, ballSize, ballSize);
}

// Function to update the ball's position
void updateBall() {
    println("Updating ball position");
    if (isJump) {
        jumpHeight += jumpPower;
        jumpPower -= gravity;

        // Check if the ball has reached it's max jump height or hit the ground
        if (jumpHeight <= 0) {
            jumpHeight = 0;
            isJump = false;
            jumpPower = 20;
        }
    }
    drawBall();
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

// Function to start the game
void updateGame() {
    updateBall(); // Update the ball's position and jumping logic

    // TODO: Update obstacles
    // TODO: Check for collisions
    // TODO: Update the score
}


// Function to start the game
void displayStartScreen() {
    // TODO: Display start screen elements (text, instructions, etc.)
}

// Function to display the game over screen
void displayGameOverScreen() {
    // TODO: Display game over screen elements (score, restart instructions, etc.)
}

// Function to reset the game
void resetGame() {
    println("Game reset!");
    gameStarted = false;
    gameOver = false;
    score = 0;
    obstacleSpeed = 5;
    // TODO: Reset other necessary variables
}

// Function to start the game
void startGame() {
    println("Game started!");
    gameStarted = true;
    gameOver = false;
    // TODO: Initialize variables needed to start the game
}