float sunOffset= -750;
float moonOffset= 750;
color sky = color(55, 240, 238);
color sun = color(248, 240, 240);
void setup() {
  
  size(1000, 1000);
}

void draw() {
  background(sky);

  translate(500, 1000);
  //sun and moon
  noStroke();
  rotate(frameCount*0.01);
  fill(246, 255, 3);
  circle(0, sunOffset, 333);
  fill(248, 240, 240);
  circle(0, moonOffset, 333);
  fill(sky);
  circle(50,moonOffset,300);
  fill(4, 89, 4);
  lerpColor(sky,sky,sky);

  resetMatrix();
  //earth
  rect(0, 600, 1000, 383, 1);
   
}
