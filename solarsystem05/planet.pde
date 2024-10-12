class planet
{
  float dist = 10;
  float speed = 0.1;
  float dm = 10;
  color c = color(255,255,255);
  float angle = 0;
  
  planet(float _distance,float _speed,float _diameter, color _color)
  {
    this.dist = _distance;
    this.speed = _speed;
    this.dm = _diameter;
    this.c = _color;
  }
  
  void step()
  {
    this.angle=this.angle + this.speed;
  }
  
  void show()
  {
    noStroke();
    fill(this.c);
    pushMatrix();
      rotate(radians(this.angle));
      translate(0,this.dist);
      circle(0,0,this.dm);
    popMatrix();
  }
}
