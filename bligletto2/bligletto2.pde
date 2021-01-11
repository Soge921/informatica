Albero a1,a2,t1,t2;
Stella s1;

public void setup(){
  
  size(640,360);
  a1 = new Albero(width/3,height-height/10,width/8,height-height/1.8 );
  a2 = new Albero(2*width/3,height-height/10,width/8,height-height/1.8 );
  s1 = new Stella(width/3,height-height/1.5,height-height/1.3,width/10);
}



public void draw(){
  
  background(255,0,0);
  
  a1.draw();
  a2.draw();
  s1.draw();
  
  
  
  
  
}
