class Moon
{
  float depth;
  float theta;
  float diameter;
  float distance;
  PVector orbitspeed;

  Moon(float distance_, float diameter_)
  {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = PVector.random3D();
  }
  void update()
  {
    theta += orbitspeed.mag();
  }
  void display()
  {
    pushMatrix();
    rotate(frameCount/50.0, 1.0, 1.0, 0);
    translate(width / 3, 0, 0);
    fill(0, pSat, 100);
    sphere(40);
    popMatrix();
    
    pushMatrix();
    rotate(frameCount/40.0, 0.0, 1.0, 1.0);
    translate(width / 4, 0, 0);
    fill(90, pSat, 100);
    popMatrix();
    
    pushMatrix();
    rotate(frameCount/20.0, 1.0, 0.0, 1.0);
    translate(width / 5, 0, 0);
    fill(40, pSat, 100);
    sphere(10);
    popMatrix();
  }
}

