class planet
{
  float dist = 10;
  float speed = 0.1;
  float dm = 10;
  color c = color(255,255,255);
  float angle = 0;
  boolean isMoon = false;
  
  planet(float _distance,float _speed,float _diameter, color _color,boolean _isMoon)
  {
    this.dist = _distance;
    this.speed = _speed;
    this.dm = _diameter;
    this.c = _color;
    this.isMoon = _isMoon;
  }
  
  void step()
  {
    this.angle=this.angle + this.speed;
  }
  
  void show()
  {
    noStroke();
    fill(this.c);
    if(isMoon) pushMatrix();
      rotate(radians(this.angle));
      translate(0,this.dist);
      circle(0,0,this.dm);
    if(isMoon) popMatrix();
  }
}
