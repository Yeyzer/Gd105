// Moon Phase Calendar in Processing
// Each day represents the moon phase
float currentD = day();// Day of the month (1 to 31)
float currentM = month();
float currentY = year();
float moonPhase; // Ranges from 0 (new moon) to 1 (full moon)

void setup() {
  size(800, 400);
  background(0);
  
   
  
  // Example: Set the current day (you can change this)
  currentD = day();
  currentY = year();
  currentM = month();
  
  // Calculate moon phase (approximation)
  moonPhase = (float) currentD / 30.0; // Assuming 30 days per lunar cycle
}

void draw() {
  // Draw moon phase
  background(0);
  float moonX = map(moonPhase, 0, 1, 50, width - 50);
  float moonY = height / 2;
  float moonSize = 60;
  
   
  fill(155);
  ellipse(moonX, moonY, moonSize, moonSize);
  
  // Add labels
  fill(252,254,255);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("New Moon", 50, moonY - 40);
  text("Full Moon", width - 50, moonY - 40);
  
  // Display current day
  textSize(24);
  text( currentD, 432, height - 40);
  text( currentM, 376, height - 40);
  text( currentY, 505, height -40);
   save("frameRate//####.png");
}
