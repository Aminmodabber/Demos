/*
 * This is basecode for 2D demo development.
 * TODO: write doc
 */
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
PFont introFont;
  
PImage skeletor;

// All these you can change!
// If you want to change the screen size, modify these,
// but keep width > height so my buggy scaling code works :P
int CANVAS_WIDTH = 800;
int CANVAS_HEIGHT = 600;

// You can skip backwards/forwards in you demo by using the 
// arrow keys; this controls how many milliseconds you skip
// at one push.
int SONG_SKIP_MILLISECONDS = 2000;

// Don't change
float ASPECT_RATIO = (float)CANVAS_WIDTH/CANVAS_HEIGHT;

// Audio
Minim minim;
AudioPlayer song;

// Syncdata
float[] exampleSync = new float[1000];

void setup() 
{
  // GENERAL SETUP
  size(1280, 720, P3D);
  smooth(level);
  frameRate(60.0);
  noStroke();
  fill(255);
  setupAudio();
  
  colorMode(HSB, 100);
  
  introFont = loadFont("EurostileBold-80.vlw");
  textFont(introFont);
  
  ellipseMode(CENTER);

  // SETUP PLANETS
  for (int i = 0; i < planets.length; i++)
  {
    planets[i] = new Planet(30 + i*25, 12);
  }
  
  // SETUP BALLS  
  setCube();
  
  // SETUP AUDIO
  for (int x = 0; x < 1000; x++)
    exampleSync[x] = (580+ 233.3333333333333 * x);

skeletor = loadImage("skeletor.jpg");

}

void draw() 
{
  //resetMatrix();
  //scale(CANVAS_WIDTH/2.0/ASPECT_RATIO, -CANVAS_HEIGHT/2.0);
  //clear();
  
    
  drawDemo(song.position());
  
}

