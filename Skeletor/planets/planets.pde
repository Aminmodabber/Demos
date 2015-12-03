
class Planet
{
  
  float depth;
  float a;
  float b;
  float d;
  PVector v;

  Moon moon;

  Planet(float d_, float b_)
  {
    d = d_;
    b = b_;
    a = 0;
    v = PVector.random3D();
    moon = new Moon(12, 5);
  }
  void update()
  {
    a += v.mag();
    moon.update();
  }

  void display()
  {
    pushMatrix();
    rotate(frameCount/30.0, 0.0, 1.0, 0.0);
    translate(width / 4, -height / 4, -depth / 4);
    noStroke();
    fill( (int)(ballHue + 0) & 100, pSat,100);
    sphere(60);
    moon.display();
    popMatrix();
    
    pushMatrix();
    rotate(frameCount/20.0, 1.0, 1.0, 0.0);
    translate(-width / 4, height / 4, depth / 4);
    noStroke();
    fill((int)(ballHue + 10) & 100, pSat, 100);
    sphere(70);
    moon.display();
    popMatrix();
    
        pushMatrix();
    rotate(frameCount/20.0, 1.0, 1.0, 0.0);
    translate(-width / 4, height / 4, depth / 4);
    noStroke();
    fill((int)(ballHue + 20) & 100, pSat, 100);
    sphere(70);
    moon.display();
    popMatrix();
    
    
    pushMatrix();
    rotate(frameCount/15.0, -1.0, -1.0, 0.0);
    translate(-width / 5, height / 5, depth / 5);
    noStroke();
    fill((int)(ballHue + 30) & 100, 100,100);
    sphere(45);
    moon.display();
    popMatrix();

    pushMatrix();
    rotate(frameCount/15.0, 0.5, 0.2, 0.0);
    translate(-width / 5, height / 5, depth / 5);
    noStroke();
    fill((int)(ballHue + 50) & 100, 100,100);
    sphere(45);
    moon.display();
    popMatrix();
    
    
        pushMatrix();
    rotate(frameCount/15.0, 0.7, -0.7, 0.0);
    translate(-width / 5, height / 5, depth / 5);
    noStroke();
    fill((int)(ballHue + 75) & 100, 100,100);
    sphere(45);
    moon.display();
    popMatrix();
    
    
    
        pushMatrix();
    rotate(frameCount/15.0, 0.5, -0.2, 0.0);
    translate(-width / 5, height / 5, depth / 5);
    noStroke();
    fill((int)(ballHue + 90) & 100, 100,100);
    sphere(45);
    moon.display();
    popMatrix();
    
  }
}

