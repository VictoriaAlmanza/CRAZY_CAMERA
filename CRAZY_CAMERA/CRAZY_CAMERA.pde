import processing.video.*;
Capture video;

PFont letra1;
PFont letra2;
int pantalla;



void setup(){
  size(640,480);
  background(0);
  
 letra1= createFont("GloriaHallelujah.ttf", 40);
 letra2=createFont("Sunflower-Light,ttf", 12);
  
  println(Capture.list());
  video = new Capture(this, 320, 240);
  video.start();
  
  
 
 
}
void draw(){
 
   image(video,0,0,mouseX,mouseY);
   image(video,0,240);
   image(video,320,0);
   image(video,320,240,mouseX,mouseY);
   
  textFont(letra1);
  text("CRAZY",220,250);
  text("CAMERA",260,290);
  textFont(letra2);
  text("Mueve el mouse",10,12);
  text("Da click",580,12);
   
  tint(mouseX, mouseY, 255); 
  
  if(mousePressed){
    filter(INVERT);
    }
   
} 

void  captureEvent(Capture video){
 video.read();
}