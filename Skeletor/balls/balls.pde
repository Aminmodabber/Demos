float bgHue = 50;

void drawBalls(int time) {

  bgHue += 0.1;
  ballHue += 1;

  
  if (bgHue > 100)
    bgHue = 0;
    
  background((int)bgHue, 100, 20);


  if (movedFrames >= 0) { // Asking if counter started
    int suunta;   
    if (movedFrames <= fr*TIME_CONSTANT/2)
      suunta = 1;
    else suunta = -1;

    for (Ball ball : balls)
      ball.kiihdyta(suunta);

    movedFrames++;
    if (movedFrames > fr*TIME_CONSTANT)
      movedFrames = -1;
   }

    for (Ball ball : balls)
    {  
      ball.decay();
      ball.hueChange();
    }

    for (Ball ball : balls) 
    {
      ball.display();
    }
    
    if(time < (32345 + BALLSDELAY))
      camera(sin(time/6000.0)*200.0,sin(time/6000.0)*200.0,(cos(time/6000.0)+cos(time/6000.0))*100.0,0,0,0,0,1,0);
    else
      camera(sin((32345 + BALLSDELAY)/6000.0)*200.0, sin((32345 + BALLSDELAY)/6000.0)*200.0 , (time - (32345 + BALLSDELAY))/5.00 + (cos((32345 + BALLSDELAY)/6000.0)+cos((32345 + BALLSDELAY)/6000.0))*100.0,0,0,200,0,1,0);

  fill(100);

}
ArrayList<Ball> balls;

float merge_speed = 0;
float TIME_CONSTANT = 2;
float fr = 10;
int movedFrames = -1;
int diamMovedFrames = -1;

class Ball {

  PVector p; // Paikkavektori
  PVector v; // Nopeus
  PVector a; // Kiihtyvyys

  float base_diam;
  float diam;

  int up, exp_up;
  int c;

  Ball(PVector p_) 
  {

    p = p_;
    v = new PVector();
    a = new PVector();

    base_diam = 8;
    diam = base_diam;

    up = 1;
    exp_up = 1;
    c= (int)random(100);
  }

  void laskeArvot(PVector kohde, float suuruus) 
  {

    a = kohde;

    a.sub(p);
    a.mult(4*suuruus);
    a.div( ((fr*TIME_CONSTANT)*(fr*TIME_CONSTANT)) );
    v = new PVector(0, 0, 0);
  }

  void kiihdyta(int suunta) 
  {

    if (suunta == 1)
      v.add(a);
    else
      v.sub(a);

    p.add(v);
  }



  /*
  void explode() {
   
   if (exp >= 1 && exp_up == 1)
   exp_up = 0;
   if (exp <= 0.1 && exp_up == 0)
   exp_up = 1;
   
   if (exp_up == 1)
   exp_v += exp_a;
   else
   exp_v -= exp_a;
   
   exp += exp_v;
   
   }
   */

  void decay() {
    if (diam > base_diam)
      diam -= 0.5;
  }

  void hit(float strength) {
    diam += strength;
  }

  void hueChange() {
    c++;
    if (c>100) c = 0;
  }

  void display() {
    pushMatrix();
    translate(p.x, p.y, p.z);
    fill(color(c, 255, 255));
    sphere(diam);
    popMatrix();
  }
}

void hitBalls(float strength){
  for(Ball ball:balls)
    ball.hit(strength);
}

void setCube() {
  balls = new ArrayList<Ball>();
  for (int i=0;i<8;i++)
    for (int j=0;j<8;j++)
      for (int k=0;k<8;k++)
        balls.add( new Ball( new PVector( 35+i*100+random(3) - 500, 35+j*100+random(3)- 500, 35+k*100+random(3)) ) ) ;
}

