//Find number of pixel's with value higher than 127

PImage dogImage;

void setup() {
  size(500, 424);
  dogImage = loadImage ("bw_dog.jpg");
}

void draw() {
  loadPixels();
  
  int totalPix = 0;

  dogImage.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      float c = brightness(dogImage.pixels[loc]);

      pixels[loc] = color(c);
      
      if (c >= 200) {
        //pixels[loc] = color(0);
        totalPix++;
      }

    }
  }
  println(totalPix);
  updatePixels();
}

