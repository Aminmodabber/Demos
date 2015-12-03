Planet[] planets = new Planet[3];
int level = 4;
float x = 0;
float y = 0;
float z = 0;
float depth;
float xspeed = 2.2;
float yspeed = 1.5;
float zspeed = 1.0;
float r = 32.0;
float amb = 0;
int ambHue = 0;
int ambSat =0;
int pSat =99;

float ballHue = 0;
void drawPlanets(int time)
{
  if (ballHue > 100) ballHue = 0;
   ballHue += 0.1;
  
  background(ambHue,30,10+amb/2);
  x = x + xspeed;
  y = y + yspeed;
  z = z + zspeed;
  amb -= 0.1;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    xspeed = xspeed * -1;
    r = 64;
  }
  
   // Remember, || means "or."
  if ((y > height) || (y < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    yspeed = yspeed * -1;
    r = 64;
  }    
  
  if ((z > depth) || (z < 0)) {
    
   zspeed = zspeed * -1;
   r= 64;
  }
  pushMatrix();
  rotate(frameCount / 40.0, 1.0, 1.0, 0);
  translate(x, y, z);
  noStroke();
  //pointLight(ambHue, 0, 100, 0, 0, 0);
  
    if (time > iskutime ) {
      iskutime += 2000;
      amb = 40;
      ambHue = (int) random(100);
    }
    
    amb -= 2;
    //ambientLight(ambHue,30,amb);
  
  fill(12, 100, 0);
  
  sphere(150);
  for (int i = 0; i < planets.length; i++)
  {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
  camera(400.0,sin(time/6000.0)*400.0,400.0,width/2.0,height/2.0,0.0,0.0,1.0,0.0);
  
  if (time > 80000)
  {
      camera(time/2,time/2,time/2,width/2.0,height/2.0,0.0,0.0,1.0,0.0);
  }  
}

