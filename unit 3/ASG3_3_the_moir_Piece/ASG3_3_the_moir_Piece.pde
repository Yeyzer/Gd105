int numLines = 100; // Number of lines
float angleOffset = 0; // Initial angle offset

void setup() {
  size(600, 600);
   background(98,100,143);
}

void draw() {
  background(98,100,143);
  translate(width/2, height/2); // this moves the  origin to center of the canvas
  
  for (int i = 0; i < numLines; i++) {
    float angle = map(i, 78, numLines, 193, PI); // Angle for the line
    float x1 = cos(angle + angleOffset) * 232; // Starting point x
    float y1 = sin(angle + angleOffset) * 178; // Starting point y
    float x2 = cos(angle) * -24; // Ending point x
    float y2 = sin(angle) * 131; // Ending point y
    line(x1, y1, x2, y2); // Draw line
  }
  
  angleOffset += 0.06; // Increment angle offset for animation
    
}
