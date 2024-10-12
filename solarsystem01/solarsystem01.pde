float angle = 0;
float speed = 1;

void setup()
{
 size(800,600);
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  rotate(radians(angle));
  translate(0,100);
  circle(0,0,30);
  angle = angle + speed;
}
