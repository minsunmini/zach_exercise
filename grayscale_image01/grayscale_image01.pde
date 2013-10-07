PImage dogImage;
int totalValue = 0;

void setup() {
  size(500, 424);
  dogImage = loadImage ("bw_dog.jpg");
}

void draw() {
  loadPixels();

  dogImage.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      float c = brightness(dogImage.pixels[loc]);

      pixels[loc] = color(c);
      
      totalValue += c;
      
    }
          println(totalValue);
  }
  updatePixels();
}

