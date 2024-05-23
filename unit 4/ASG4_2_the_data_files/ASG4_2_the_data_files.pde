String[] titles = {
  "Mario Kart 8 Deluxe",
  "Animal Crossing: NH",
  "Super Smash Bros. Ultimate",
  "The Legend of Zelda: BTOW",
  "Super Mario Odyssey",
  "Pokémon Sword and Shield",
  "Pokémon Scarlet and Violet",
  "Super Mario Party", 
  "The Legend of Zelda: TOTK",
  "Super Mario Bros. U Deluxe"
};

float[] sales = {
  61.97, 45.36, 34.22, 31.85, 27.96, 26.27, 24.92, 20.66, 20.61, 17.45
};

void setup() {
  size(1800, 700);
  background(255);
  drawBarGraph();
}

void drawBarGraph() {
  float maxSales = max(sales);
  float barWidth = width / (sales.length * 2.0);
  float margin = barWidth;
  
  for (int i = 0; i < sales.length; i++) {
    float barHeight = map(sales[i], 0, maxSales, 0, height - 100);
    fill(100, 150, 250);
    rect(margin + i * 2 * barWidth, height - barHeight - 50, barWidth, barHeight);
    
    fill(0);
    textAlign(CENTER, TOP);
    textSize(10);
    text(titles[i], margin + i * 2 * barWidth + barWidth / 2, height - 45);
    
    textAlign(CENTER, BOTTOM);
    textSize(12);
    text(sales[i] + "M", margin + i * 2 * barWidth + barWidth / 2, height - barHeight - 55);
  }
  
  textSize(16);
  fill(0);
  textAlign(CENTER, TOP);
  text("Nintendo Game Sales (millions)", width / 2, 20);
}

void draw() {
  // The graph is drawn in setup(), so no need to continuously redraw.
}
