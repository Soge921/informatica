class Stella{
  
  private float x;
  private float y;
  private float h;
  private float w;
  
  
  
  public static final color COLORE_STELLA  = #FFFF00;
  public static final color COLORE_SCIA  = #FFDD00;
  
  Stella(float x,float y,float w,float h){
    
    this.x= x;
    this.y= y;
    this.w=w;
    this.h=h;
  }
  


  public void draw(){
    
   
    
    fill(COLORE_SCIA);
    triangle(x,y-h/3,x-w*2,y-h*1.2,(x+w/2)-w*2.5,y+h/2);
    
    fill(COLORE_STELLA);
    
    triangle(x-w/2,y,x,y-h,x+w/2,y);
    triangle(x-w/2,y-y/3,x,y+h/3,x+w/2,y-y/3);
    
   
    if (x<640+w*3){     
      x++;     
    }
    else{
          
       x=0;
    }
      
  }
}
