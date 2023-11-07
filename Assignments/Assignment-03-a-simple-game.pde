// Task 3: A Simple Game - Bouncing Ball (Dino Game)
// Description: A simple game where the player controls a ball and tries to avoid obstacles.
// Author: Alex Rudaev
// Date: 07/11/2023
// Docs: https://processing.org/tutorials/gettingstarted

// Define variables 
int ballX, ballY;
int ballSize = 30;
int score = 0;
int highScore = 0;
int obstacleX, obstacleY, obstacleWidth, obstacleHeight;
int obstacleSpeed;
boolean gameStarted = false;

// Setup the environment
void setup() {
    size(640, 480);
}
