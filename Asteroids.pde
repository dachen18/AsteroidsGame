class Asteroids extends Floater
{
	protected float RandRot;
   protected float Moving;
    private int AstC1X,AstC2X,AstC3X,AstC4X,AstC1Y,AstC2Y,AstC3Y,AstC4Y,AstMidX,AstMidY;
    private int AstC;
	Asteroids()
	{
    AstC = ((int)(Math.random()*4)+4);
    myColor = 215;
    AstC1X = ((int)(Math.random()*-5)-10);//Neg X Pos Y
    AstC2X = ((int)(Math.random()*5)+10); //Pos X and Y
    AstC3X = ((int)(Math.random()*5)+10); //Pos X Neg Y
    AstC4X = ((int)(Math.random()*-5)-10); // Neg X Neg Y
    AstMidX = (AstC2X + AstC3X)/2;
    AstMidY = (AstC2Y + AstC3Y)/2;
    AstC1Y = ((int)(Math.random()*5)+10);
    AstC2Y = ((int)(Math.random()*5)+10);
    AstC3Y = ((int)(Math.random()*-5)-10);
    AstC4Y = ((int)(Math.random()*-5)-10);
      myDirectionX = ((Math.random()*15)-7.5);
      myDirectionY = ((Math.random()*15)-7.5);
      corners = 5;
      myCenterX = Math.random()*1001;
      myCenterY = Math.random()*1001;
    int[] WusterX = {AstC1X,AstC2X,0,AstC3X,AstC4X};
    int[] WusterY = {AstC1Y,AstC2Y,0,AstC3Y,AstC4Y};
     xCorners = WusterX;
     yCorners = WusterY;
		  RandRot = 0;
      Moving = (float)Math.random()*10;
	}
   public void move()
   {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
   }
   public void setX(int x) {myCenterX = x;}
   public int getX(){return (int)myCenterX;}
   public void setY(int y) {myCenterY = y;}   
   public int getY() {return (int)myCenterY;}
   public void setDirectionX(double x) {myDirectionX = x;} 
   public double getDirectionX()  {return myDirectionX;}
   public void setDirectionY(double y) {myDirectionY = y;}
   public double getDirectionY() {return myDirectionY;}
   public void setPointDirection(int degrees) {myPointDirection = degrees;}
   public double getPointDirection() {return myPointDirection;}
}