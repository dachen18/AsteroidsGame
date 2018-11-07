class Star //note that this class does NOT extend Floater
{
  protected float StarX,StarY,StarSize;
  protected float StarColor;
  public Star()
  {
  StarColor = (float)(Math.random()*2.0000000);
  StarX = ((float)Math.random())*1001;
  StarY = ((float)Math.random())*1001;
  StarSize = ((float)Math.random())*8;
  }
  public void glow()
  {
  	ellipse(StarX,StarY,StarSize,StarSize);
  }
  public void ResetPos()
  {
  StarColor = (float)(Math.random()*2.0000000);
  StarX = ((float)Math.random())*1001;
  StarY = ((float)Math.random())*1001;
  StarSize = ((float)Math.random())*8;
  }

}
//class Sun extends Star
//{
  //private float SunX,SunY;
  //public Sun()
  //{
    //SunX = (float)(Math.random()*600)+200);
    //SunY = (float)(Math.random()*600)+200);
  //}
  //public void glow()
  //{
    //fill(255,69,0);
    //ellipse(SunX,SunY,30,30); 
  //}
}
