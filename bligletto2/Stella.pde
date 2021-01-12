class Stella{
  
  private float x;
  private float y;
  private float l;
  private float r;
  
  
  
  public static final color COLORE_STELLA  = #FFFF00;
  public static final color COLORE_SCIA  = #FFDD00;
  
  Stella(float x,float y,float r,float l){
    
    this.x= x;
    this.y= y;
    this.r=r;
    this.l=l;
  }
  


  public void draw(){
    
   
    
    fill(COLORE_SCIA);
    triangle(x,y-l/3,x-r*2,y-l*1.2,(x+r/2)-r*2.5,y+l/2);
    
    fill(COLORE_STELLA);
    
    triangle(x-r/2,y,x,y-l,x+r/2,y);
    triangle(x-r/2,y-y/3,x,y+l/3,x+r/2,y-y/3);
    
   
    if (x<width+r*3){     
      x++;     
    }
    else{
          
       x=0;
    }
      
  }
}
