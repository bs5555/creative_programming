void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(color(255,255,255,10));
  rect(0,0,width,height);
  stroke(0);
  line(random(width),random(height),mouseX,mouseY);
}
