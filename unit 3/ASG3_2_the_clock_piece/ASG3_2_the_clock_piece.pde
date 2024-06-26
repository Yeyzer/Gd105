PVector [] stars = new PVector[300];
float sunSize = 350.0f;
float speed = 30.0f;

//you want to hide this until the hour is up
float supernova = 350.0f;
//use a boolean for this
//BOOLEAN CAN BE EITHER TRUE OR FALSE
boolean explosion;


void setup() {
  size(1000, 1000);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new PVector (random(width), random(height));
  }
}
void draw() {
  background(0);
  int s = second();
  int h = hour();
  int m = minute();
  stroke(255);
  strokeWeight(3);
  for (int i = 0; i < stars.length; i++) {
    point(stars[i].x, stars[i].y);
  }
  //sun


  float second = map(s, 0, 59, 100, 350);
  noStroke();
  fill(238, 253, 0);
  circle(477, 451, second);

  fill(255);
  textSize(67);
  text(h, 429, 444);
  text(m, 481, 444);
  text(s, 557, 444);
  text(":", 447, 444);
  text(":", 517, 444);

  //neptune
  fill(18, 0, 251);
  circle(495, 122, 187);
  // uranus
  fill(0, 240, 255);
  circle(840, 409, 184);
  //saturn
  fill(165, 175, 10);
  circle(481, 799, 254);
  //jupiter
  fill(245, 232, 90);
  circle(107, 408, 302);
  //moon
  translate(width*0.5, height*0.5);
  rotate(frameCount*0.01);

  fill(252, 254, 255);
  circle(24, 323, 39);
  circle(h, 317, m);
  println(h, m, s);
  resetMatrix();
  // supernova when the hour/minute is up
  if (explosion) {
    fill(0, 0, 0);
    circle(477, 446, supernova);
    supernova += speed;
  }


  //switches explosion on and off
  if (m == 59) {
    explosion = true;
  } else {
    explosion = false;
    supernova = 350.0f;
  }
  text("12", 514, 133);
  text("3", 840, 396);
  text("6", 486, 788);
  text("9", 107, 417);
  textAlign(CENTER, CENTER);
  save("frameRate//####.png");
}
