//this piece is for my album cover
//the artist name is Y-boogie
//the name of the cover is called gamer boy tunes
void setup() {
  size(1000, 1000);
  strokeWeight(50);
}
void draw() {
  stroke(0);
  background(7, 18, 83);
  line(100, 200, 180, 316); //the letter y
  line(246, 201, 180, 316);//the letter y
  line(178, 405, 180, 316);//the letter y
  line(269, 199, 477, 203);//the letter e
  line(298, 310, 393, 311);//the leter e
  line(468, 407, 265, 403);//the letter e
  line(276, 202, 267, 395);//the letter e
  line(144, 609, 66, 484);// the letter y
  line(143, 611, 227, 485);//the letter y
  line(142, 585, 144, 716);//the letter y
  //this last part of this code
  line(501, 523, 272, 516);//the letter o
  line(253, 769, 269, 521);//the letter o
  line(507, 777, 253, 769);//the letter o
  line(510, 759, 501, 527);//the letter o
  //this part is for the giant cookie
  noStroke();
  fill(79, 41, 17);
  circle(753, 679, 438 );
  fill(0, 9, 36);
  circle(654, 640, 46 );
  fill(8, 0, 0);
  circle(860, 568, -33 );
  fill(8, 0, 0);
  circle(652, 770, -54 );
  fill(0, 3, 0);
  circle(879, 740, 66 );
  circle(738, 516, 74 );
  circle(753, 694, 40 );
  textSize(80);
  text("The ", 588, 109);
  text("BIG ", 778, 167);
  text("Cookie  ", 592, 252);
  text("Delema ", 699, 343);
  println("the mouse is at (" + mouseX + ", " + mouseY + ")");
}
