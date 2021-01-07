int N = 0;

public void settings(){
  size(640, 360);  //dimensione finestra 
}

public void setup(){
  background(255,0,0);

}

public void draw(){
   background(255,0,0);
  
  fill(255,255,0);
  textSize(60);
  text("Buone Feste",100,180);
  
  fill(150,80,0);
  
  rect(500, 300, 55, 80, 3, 6, 12, 18);
  
  fill(50,200,50);
  
  triangle(450, 300, 600, 300, 530, 80);
  
  fill(255,255,0);
   pushMatrix();
  translate(width*0.83, height*0.25);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 30, 5); 
  popMatrix();
  
  if(N<100){
     fill(255,255,255);
    circle(random(0,640),random(0,360),10);
    circle(random(0,640),random(0,360),10);
    circle(random(0,640),random(0,360),10);
    circle(random(0,640),random(0,360),10);
    circle(random(0,640),random(0,360),10);
  }
    
}

void star(float x, float y, float raggio1, float raggio2, int Npunti) {
  float angolo = TWO_PI / Npunti;
  float MetaAngolo = angolo/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angolo) {
    float sx = x + cos(a) * raggio2;
    float sy = y + sin(a) * raggio2;
    vertex(sx, sy);
    sx = x + cos(a+MetaAngolo) * raggio1;
    sy = y + sin(a+MetaAngolo) * raggio1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
