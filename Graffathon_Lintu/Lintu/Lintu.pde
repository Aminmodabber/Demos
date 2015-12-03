
import moonlander.library.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

int CANVAS_WIDTH = 1920/2;
int CANVAS_HEIGHT = 1080/2;
int pilvi;

Moonlander moonlander;
AudioPlayer song;
Kolibri kolibri;
Kolibri kolibri2;
Parvi parvi;
Parvi parvi2;
PImage skeletor;

void setup() 
{
  // Set up the drawing area size and renderer (P2D / P3D).
  size(CANVAS_WIDTH, CANVAS_HEIGHT, P3D);
  frameRate(60);
  kolibri = new Kolibri(200, 0, 0, 0);
  kolibri2 = new Kolibri(200, 0, 0, 0);
  parvi = new Parvi(0, 800, 0);
  parvi2 = new Parvi(0,800,0);
  noStroke();
  skeletor = loadImage("Skeletor.png");
  moonlander = Moonlander.initWithSoundtrack(this, "Bird.mp3", 120, 8);
  moonlander.start();
}


void draw() {

  clear();
  smooth();
  int lintujen_luonti = moonlander.getIntValue("lintujen_luonti");
  int lintujen_liike = moonlander.getIntValue("lintujen_liike");
  int pikkulinnut = moonlander.getIntValue("pikkulinnut");
  int yleiset = moonlander.getIntValue("yleiset");
  int kameraZ = moonlander.getIntValue("kameraZ");
  int kolibrin_lento = moonlander.getIntValue("kolibrin_lento");
  
  colorMode(HSB, 100);
  noStroke();
  moonlander.update();
  //Skeletor
  if (yleiset == 0)
  {
  image(skeletor, CANVAS_WIDTH/2-218, CANVAS_HEIGHT/2-261);
  textSize(32);
  fill(255);
  text("SKELETOR",CANVAS_WIDTH/2-218,CANVAS_HEIGHT/2+261);
  }
  camera(0, 0, kameraZ, 0, 0, 0, 0, -1, 0);
  if (yleiset >= 1)
  {
    kolibri.Draw();
    kolibri.Color(lintujen_luonti);
    kolibri.smallbirdmove(lintujen_liike);
    
  if (yleiset == 2)
  {
      kolibri.smallbirdfly( );
      kolibri.Color2();
      
  }
  
  if (yleiset == 3)
    {  
      parvi.Draw();
      parvi.Color();
      parvi.Move(pikkulinnut);
      kolibri.fly1(kolibrin_lento);
      kolibri.Color2();
    }
    
    if (yleiset >= 4)
    {  
      parvi2.Draw();
      parvi2.Color();
      parvi2.Move(pikkulinnut);
    }
    if (yleiset == 5)
    {

       exit(); 
    }
    if(yleiset ==6)
    {
      parvi2.Move2(pikkulinnut);
      kolibri2.Color2();
      kolibri2.smallbirdmove(lintujen_liike);
      kolibri2.Draw();
    }
  }
}



