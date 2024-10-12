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
  
  //earth
  rotate(radians(angle));
  translate(0,100);
  circle(0,0,30);
  
  //moon
  rotate(radians(angle/2));
  translate(0,50);
  circle(0,0,10);
  
  angle = angle + speed;
}
