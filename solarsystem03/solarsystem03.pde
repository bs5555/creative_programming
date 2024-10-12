float angle = 0;
float speed = 1;

void setup()
{
 size(800,600);
 surface.setResizable(true);
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  
  //sun
  circle(0,0,60);
  
  pushMatrix();
    //earth
    rotate(radians(angle));
    translate(0,100);
    circle(0,0,30);
  
    //moon
    rotate(radians(angle/2));
    translate(0,50);
    circle(0,0,10);
  popMatrix();
  
  //jupiter
  rotate(radians(angle/3));
  translate(0,200);
  circle(0,0,50);
  
  angle = angle + speed;
}
