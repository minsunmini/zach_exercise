//Find average value of a pixel.

PImage dogImage;
float averValue;

void setup() {
  size(500, 424);
  dogImage = loadImage ("bw_dog.jpg");
}

void draw() {
  loadPixels();
  
  int totalValue = 0;

  dogImage.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      float c = brightness(dogImage.pixels[loc]);

      pixels[loc] = color(c);
      
      totalValue += c;
      
    }
      averValue = totalValue / (width*height);    
  }
  updatePixels();
  fill(averValue);
  ellipse(width/2, height/2, 100,100);
}

