PImage img;
int which;
int timer;
void setup()
{
  img = loadImage("IMG00000.bmp");
  size(img.width*3, img.height*3);
  size(displayWidth,displayHeight);
}
void draw()
{
  if (which < 10)
  {
    img = loadImage("IMG0000" + which + ".bmp");
  }
  else if (which >= 10 && which < 100)
  {
    img = loadImage("IMG000" + which + ".bmp");
  }
  else
  {
    img = loadImage("IMG00" + which + ".bmp");
  }
  image(img, 0, 0,displayWidth, displayHeight/(300/169));
  if(timer  < millis())
  {
  which++;
  timer+=70;
  }
  if (which > 171)
  {
    which = 0;
  }
}

