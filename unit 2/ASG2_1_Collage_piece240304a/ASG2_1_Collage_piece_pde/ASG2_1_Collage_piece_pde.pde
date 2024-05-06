PImage yeyzer;
PImage yoshi;
PImage toad;
PImage mario;
PImage luigi;
PImage peach;
PImage dog1;
PImage dog2;
void setup () {
  size (1000, 1000) ;
  yeyzer=loadImage("yeyzer.jpg");
  yoshi=loadImage("yoshi.png");
  toad =loadImage("toad.png");
  mario=loadImage("mario.png");
  luigi=loadImage("luigi.png");
  peach=loadImage("peach.png");
  dog1 =loadImage("dog1.png");
  dog2 =loadImage("dog2.png");
}
void draw () {
 
  
  background(160);
  image(yeyzer, 323, -30);
  image(yoshi, 752, -6);
  image(toad, 35, 268);
  image(mario, 47, 692);
  image(luigi, 72, -5);
  image(peach, 779, 296);
  image(dog1, 670, 645);
  image(dog2, 241, 656);
  strokeWeight(23);
  line(1, 192, 270, 192);
  line(-3, 640, 1000, 652);
  line(269, 0, 266, 1000);
  line(697, 0, 700, 1000);
  line(696, 250, 1010, 250);
  save("output.png");

}
