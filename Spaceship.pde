class Spaceship extends Floater  
{   
   private int SoMany;  
   public Spaceship()
   {
      myColor = 139;
      corners = 3;
      myCenterX = myCenterY = 500;
      //ArrayList <Float> AndyX = new ArrayList <Float>();
      // ArrayList <Float> AndyY = new ArrayList <Float>();
      //AndyX.set(0,30.0);
       //AndyX.set(1,-10.0);
      // AndyX.set(2,-10.0);
       //AndyY.set(0,0.0);
      // AndyY.set(1,10.0);
      // AndyY.set(2,-10.0);
    int[] AndyX = {30,-10,-10};
    int[] AndyY = {0,10,-10};
      xCorners = AndyX;
      yCorners = AndyY;
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

   public void show ()  //Draws the floater at the current position  
  {             
    fill(0,0,139);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI],yCorners[nI]);
      //vertex(xCorners.get(nI),yCorners.get(nI));
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }  
  }   
 
