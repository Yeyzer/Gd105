void setup() {
  size(1000,1000);
  background(220);
}

void draw() {
  strokeWeight(50);
line(1024,0,0,0);
line(1000,0,1000,975);
line(1000,979,0,980);
line(0,999,0,0);
  // Draw a line from previous mouse location to current mouse location.
  line(pmouseX, pmouseY, mouseX, mouseY);
}
