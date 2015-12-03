class Camera 
{
  float rotation= 0;
  float ypos= 0;
  float xpos= 0;
  float zpos= 0;
  float count = 0;
  float zoom = 0;
    
  Camera()
  {
  }
  
  void orbit()
  {
    float orbitRadius= 400;
    float ypos= 0;
    float xpos= cos(radians(rotation))*orbitRadius;
    float zpos= sin(radians(rotation))*orbitRadius;
    
    camera(xpos, ypos, zpos, 0, 0, 0, 0, -1, 0);
    rotation+=2;
    if (phase == 4)
      rotation = 0;
  }
  void stay()
  {
    float orbitRadius= 300;
    float ypos= 0;
    float xpos= 0;
    float zpos= orbitRadius;
    
    camera(xpos, ypos, zpos, 0, 0, 0, 0, -1, 0);
  }
   void zoom()
  {
    float orbitRadius= 290;
    float ypos= 0;
    float xpos= 0;
    float zpos= orbitRadius-zoom;
    camera(xpos, ypos, zpos, 0, 0, 0, 0, -rotation, 0);
    zoom++;
   
  }
  void zoom2()
  {
    float orbitRadius= 100;
    float ypos= 0;
    float xpos= 0;
    float zpos= orbitRadius-zoom;
    camera(xpos, ypos, zpos, 0, 0, 0, 0, -rotation, 0);
    zoom++;
   
  }

}
