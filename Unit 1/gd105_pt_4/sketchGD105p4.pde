void setup() {
  size(1000, 400);
  strokeWeight(20);
}
void draw() {
  background(1);
  textSize(31);
  stroke(209, 6, 6);
  line(3, 192, 995, 193);
  rotate(0.5);
  text("174 St", 81, 116);
  text("freeman St", 120, 61);
  text("Simpson St", 212, 11);
  text("intervale Av", 287, -35);
  text("Prospect Av", 381, -87);
  text("Jackson Av", 482, -140);
  text("3 Av-149 Street", 530, -196);
  text("149 St Grand Concourse", 570, -278);
  //the second part is the actual train dots
  stroke(63, 63, 194);
  circle(272, 73, 10);
  circle(372, 20, 10);
  circle(450, -21, 10);
  circle(553, -80, 10);
  circle(181, 122, 10);
  circle(633, -129, 10);
  circle(740, -189, 10);
  circle(888, -268, 10);
  rotate(-0.5);
  //train line number is next
  stroke(251, 5, 5);
  textSize(34);
  text("2", 253, 202);
  circle(83, 327, 105);

  `println("the mouse is at (" + mouseX + ", " + mouseY + ")");
}
