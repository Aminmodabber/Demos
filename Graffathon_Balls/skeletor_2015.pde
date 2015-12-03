
import moonlander.library.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

int CANVAS_WIDTH = 1280;
int CANVAS_HEIGHT = 720;

Moonlander moonlander;
AudioPlayer song;

PImage skeletor;
PImage texmap;
PShader blur;

Intro intro;
Sperm sperm;
Tree tree;
Camera camera;
Black_hole black_hole;


int phase;
int beat;

void setup() 
{
  
  size(CANVAS_WIDTH, CANVAS_HEIGHT, P3D);
  blur = loadShader("blurts.glsl"); 
  frameRate(50);
  
  intro = new Intro();
  tree = new Tree();
  sperm = new Sperm();
  camera = new Camera();
  black_hole = new Black_hole();
  
  skeletor = loadImage("Skeletor.png");
  
  moonlander = Moonlander.initWithSoundtrack(this, "skeletor.mp3", 140, 4);
  moonlander.start();
  
}

void draw() 
{
  moonlander.update();
  phase = moonlander.getIntValue("phase");
  beat = moonlander.getIntValue("beat");
  
  noStroke();
  if(phase == 1) 
  {
    intro.play();
  }
  
  if(phase >= 2 && phase < 10)
  {
    camera.orbit();
    sperm.play();
  }
  if(phase == 99)
    background(0); 
  if(phase == 10)
  {
      camera.zoom();
      pointLight(255,255,255, 0,500,500);
      black_hole.play(); 
  }
  if(phase == 20)
  {
    camera.zoom2();
    tree.play();
  }
  if(phase == 100)
    exit();
  lights();

}
