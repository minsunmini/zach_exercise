//Find average x and y coordinate for the white pixel

PImage blobImage;
float averXval;
float averYval;

void setup() {
  size(400, 400);
  blobImage = loadImage ("blob.png");
}

void draw() {
  loadPixels();

  int totalXcoor = 0;
  int totalYcoor = 0;
  int totalWhitePix = 0;

  blobImage.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      float c = brightness(blobImage.pixels[loc]);

      pixels[loc] = color(c);

      if (c == 255) {
        totalXcoor += x;
        totalYcoor += y;
        totalWhitePix ++;
      }
    }
  }
  averXval = totalXcoor / totalWhitePix;
  averYval = totalYcoor / totalWhitePix;
  println(totalWhitePix);
  println(totalWhitePix+ ", " + averXval+", " + averYval);
  updatePixels();

  fill(255, 0, 0);
  noStroke();
  ellipse(averXval, averYval, 10, 10);
}

