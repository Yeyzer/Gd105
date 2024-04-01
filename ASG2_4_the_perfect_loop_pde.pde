
void setup() {
  //set the size
  size(1000, 1000);
}
void draw() {
  background(52);
  //fill statement goes in this line
  strokeWeight(5);


  //this square is for the head
  square(349, 358, 298);
  //this is for baily ears
  fill(75,16,18);
  noStroke();
  translate(499, 254);
  triangle(142, 95, 99, -69, 18, 96);
  triangle(-155, 101, -81, -69, -13, 99);
  resetMatrix();
  stroke(0);
  //this is for bailys face/ mouth
  strokeWeight(24);
  noFill();
  arc(493, 514, 237, 188, TAU * 0.01, TAU * 0.43);
  strokeWeight(48);
  // bailey puppy eyes
  ellipse(482-64, 432, 79, 79);
  ellipse(333+244, 435, 84, 79); //right eye
  //baily's nose

  square(503, 515, -9);
  //this is for bailys eyebrows
  fill(111,91,30);
  noStroke();
  translate(216, 578);

  resetMatrix();
  stroke(0);
  noStroke();
  textSize(43);
  float textOffset = -2.35;
  String message = "Hi my name is baily wanna be my friend";
  translate(-75, 763);
  for (int i = 0; i < message.length(); i++) {
    text(message.charAt(i), cos(frameCount * 0.60 + textOffset * i) * 10, sin(frameCount * 0.45 + textOffset * i) * 20);
    translate(27, 2);
     saveFrame("frames/####.png");
  }
}
