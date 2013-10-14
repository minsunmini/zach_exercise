//Find min value and max value

PImage blobImage;
float minValueX = MAX_FLOAT;
float maxValueX = MIN_FLOAT;
float minValueY = MAX_FLOAT;
float maxValueY = MIN_FLOAT;

void setup() {
  size(400, 400);
  blobImage = loadImage ("blob.png");
}

void draw() {
  loadPixels();

  blobImage.loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      float c = brightness(blobImage.pixels[loc]);

      pixels[loc] = color(c);

      /*
      if (c > 128) {
       pixels[loc] = color(255);
       //maxValue = c;
       } 
       else {
       pixels[loc] = color(0);
       //minValue = c;
       }
       */


      if (c == 255) {
        if (x < minValueX) {
          minValueX = x;
        }
        if (x > maxValueX) {
          maxValueX = x;
        }
        if (y < minValueY) {
          minValueY = y;
        }
        if (y > maxValueY) {
          maxValueY = y;
        }
      }
    }
  }
  println(minValueX+ ", " + maxValueX+", " + minValueY+", " + maxValueY);
  fill(150, 150);
  updatePixels();
  rect (minValueX, minValueY, maxValueX-minValueX, maxValueY-minValueY);

}

