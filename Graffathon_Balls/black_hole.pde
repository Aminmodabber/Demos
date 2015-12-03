class Black_hole{Black_hole(){}void play()
{background(0);pushMatrix();for(float r=1;r<100;r+=2){
fill(r*20,5);if(beat==3){noFill();stroke(180);}
sphere(r);translate(0,0,r/20);}
popMatrix();}}

