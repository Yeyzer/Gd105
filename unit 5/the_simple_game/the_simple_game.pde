float playerX, playerY; // Player's position
float playerSize = 20;  // Player's size
boolean gameWon = false;

void setup() {
  size(800, 800);
  playerX = 50; // Starting position
  playerY = 50;
}

void draw() {
  background(22,23,39);
  
  // Draw maze lines
  stroke(83);
 
  // Square 1
  line(100, 0, 98, 316);
  line(200, 30, 204, 393);
  line(300, 0, 300, 345);
  line(397, 100, 396, 307);
  // Square 2
  line(400, 100, 711, 102);
  line(445, 199, 803, 196);
  line(397, 307, 692, 307);
  // Box 3
  line(690, 307, 691, 393);
  line(0, 389, 691, 394);
  line(75, 474, 804, 479);
  line(0, 538, 748, 540);
  line(0, 655, 765, 659);
  line(73, 603, 803, 602);
  line(799, 738, 95, 740);
  line(96, 740, 91, 805);

  // Draw goal circle
  fill(0, 255, 0);
  ellipse(760, 760, 30, 30);

  // Draw player
  fill(243, 9, 9);
  ellipse(playerX, playerY, playerSize, playerSize);

  // Check if player reached the goal
  if (dist(playerX, playerY, 760, 760) < (playerSize + 30) / 2) {
    gameWon = true;
    fill(0, 255, 0);
    textAlign(CENTER);
    textSize(32);
    text("You Win!", width / 2, height / 2);
    noLoop(); // Stop the draw loop
  }
}

void keyPressed() {
  if (!gameWon) {
    float newX = playerX;
    float newY = playerY;
    
    if (keyCode == UP) {
      newY -= 5;
    } else if (keyCode == DOWN) {
      newY += 5;
    } else if (keyCode == LEFT) {
      newX -= 5;
    } else if (keyCode == RIGHT) {
      newX += 5;
    }
    
    // Check for collisions
    if (!isColliding(newX, newY)) {
      playerX = newX;
      playerY = newY;
    }
  }
}

boolean isColliding(float x, float y) {
  if (x - playerSize / 2 < 0 || x + playerSize / 2 > width || 
      y - playerSize / 2 < 0 || y + playerSize / 2 > height) {
    return true; // Invisible barrier around the outside
  }

  // Check for collisions with maze lines
  if (lineIntersection(100, 0, 98, 316, x, y, playerSize) || 
      lineIntersection(200, 30, 204, 393, x, y, playerSize) ||
      lineIntersection(300, 0, 300, 345, x, y, playerSize) ||
      lineIntersection(397, 100, 396, 307, x, y, playerSize) ||
      lineIntersection(400, 100, 711, 102, x, y, playerSize) ||
      lineIntersection(445, 199, 803, 196, x, y, playerSize) ||
      lineIntersection(397, 307, 692, 307, x, y, playerSize) ||
      lineIntersection(690, 307, 691, 393, x, y, playerSize) ||
      lineIntersection(0, 389, 691, 394, x, y, playerSize) ||
      lineIntersection(75, 474, 804, 479, x, y, playerSize) ||
      lineIntersection(0, 538, 748, 540, x, y, playerSize) ||
      lineIntersection(0, 655, 765, 659, x, y, playerSize) ||
      lineIntersection(73, 603, 803, 602, x, y, playerSize) ||
      lineIntersection(799, 738, 95, 740, x, y, playerSize)) {
    return true;
  }
  return false;
}

boolean lineIntersection(float x1, float y1, float x2, float y2, float px, float py, float size) {
  float minX = min(x1, x2);
  float maxX = max(x1, x2);
  float minY = min(y1, y2);
  float maxY = max(y1, y2);
  
  if (px + size / 2 > minX && px - size / 2 < maxX && py + size / 2 > minY && py - size / 2 < maxY) {
    return true;
  }
  return false;
}
