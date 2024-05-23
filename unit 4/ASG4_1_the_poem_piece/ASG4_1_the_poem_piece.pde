// Define an array of words for the magnetic poem
//
String[] words = {
  "The", "feeling", "of", "friendship", "from", "the", "start",
  "Is", "that", "special", "feeling", "in", "your", "heart",
  "A", "feeling", "from", "deep", "down", "inside",
  "A", "feeling", "that", "no", "one", "should", "hide",
  "A", "friend", "is", "there", "through", "good", "and", "bad",
  "They", "make", "you", "happy", "when", "you're", "sad",
  "they", "brighten", "up", "your", "darkest", "day",
  "Just", "by", "the", "simple", "thing's", "they", "say",
  "Now", "friendship", "can't", "be bought", "or", "sold",
  "It", "may", "get", "tarnished", "and", "may", "get", "old",
  "You", "can", "overcome", "your", "greatest", "fear",
  "Just", "look", "around", "and", "it", "is", "there",
  "Now", "friendship's", "one", "and", "only", "cost",
  "Is", "to", "make", "sure", "that", "it's", "never", "lost"
};

// Define a Word class to represent each word in the poem
class Word {
  String text;
  float x, y;
  boolean isDragging;
  float offsetX, offsetY;
  
  Word(String text, float x, float y) {
    this.text = text;
    this.x = x;
    this.y = y;
    this.isDragging = false;
  }
  
  void display() {
    fill(255);
    rect(x, y, textWidth(text) + 10, 20, 5);
    fill(0);
    textAlign(LEFT, TOP);
    text(text, x + 5, y + 5);
  }
  
  boolean contains(float px, float py) {
    return px >= x && px <= x + textWidth(text) + 10 && py >= y && py <= y + 20;
  }
  
  void startDragging(float mx, float my) {
    offsetX = mx - x;
    offsetY = my - y;
    isDragging = true;
  }
  
  void stopDragging() {
    isDragging = false;
  }
  
  void updatePosition(float mx, float my) {
    if (isDragging) {
      x = mx - offsetX;
      y = my - offsetY;
    }
  }
}

// Declare an array to store Word objects
Word[] wordObjects;

void setup() {
  size(800, 600);
  wordObjects = new Word[words.length];
  
  // Create Word objects for each word in the array
  for (int i = 0; i < words.length; i++) {
    float randomX = random(width - textWidth(words[i]) - 10);
    float randomY = random(height - 20);
    wordObjects[i] = new Word(words[i], randomX, randomY);
  }
}

void draw() {
  background(220);
  
  // Display all the words
  for (Word word : wordObjects) {
    word.display();
  }
}

void mousePressed() {
  //  if the mouse is pressed on any word then words can be moved
  for (Word word : wordObjects) {
    if (word.contains(mouseX, mouseY)) {
      word.startDragging(mouseX, mouseY);
      break; // Exit the loop after finding the first word under the mouse
    }
  }
}

void mouseDragged() {
  for (Word word : wordObjects) {
    word.updatePosition(mouseX, mouseY);
  }
}

void mouseReleased() {
  // mouse released = no movement of words 
  for (Word word : wordObjects) {
    word.stopDragging();
  }
}
