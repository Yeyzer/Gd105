//this is the setup part of the code that is needed to start she se
void setup() {
  size(800, 800);
  strokeWeight(30);
}
void draw() {
  background(255);
  square(width * 0.0 + 15, height * 0.0 + 15, width * 0.5); // 1: TL
  square(width * 0.5 + 15, height * 0.0 + 15, width * 0.5); // 2: BL
  square(width * 0.0 + 15, height * 0.5, width * 0.5); // 3: TR
  square(width * 0.5 + 15, height * 0.5, width * 0.5); // 4: BR
  line(100, 32, 100, 387);
  line(200, 34, 200, 400);
  line(300, 17, 300, 391);
  // this is the box in the top left corner
  line(414, 104, 800, 100);
  line(800, 200, 413, 200);
  line(414, 300, 800, 300);
  //this is the top right corner
  line(415, 650, 545, 795);
  line(706, 400, 802, 505);
  line(800, 638, 554, 398);
  line(690, 800, 420, 528);
  line(400, 396, 800, 800);
  //this is the bottom right side of thee sketch
  line(0, 499, 100, 400);
  line(200, 402, -239, 877);
  line(400, 543, 139, 801);
  line(394, 409, -382, 1170);
  line(314, 785, 411, 667);
  // this is the bottom left side of the picture
  // this picture was made by sol LeWitt who was an
  // artist from the americas who did art during his life
  save("output.png");
  noLoop();
}
