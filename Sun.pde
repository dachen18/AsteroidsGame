 class Sun
{
  protected float SunX,SunY;
  public Sun()
  {
    SunX = (float)(Math.random()*600)+200;
    SunY = (float)(Math.random()*600)+200;
  }
  public void glow()
  {
    fill(255,69,0);
    ellipse(SunX,SunY,50,50); 
  }
  public void ChangePos()
  {
    SunX = (float)(Math.random()*600)+200;
    SunY = (float)(Math.random()*600)+200;
  }
  public void SunRays()
  {
    for(int i = 0;i < 8;i++)
    {
      noStroke();
      strokeWeight(random(2.5));
      stroke(255,69,0);
      line(SunX,SunY,SunX + (float)(Math.random()*100)-50,SunY + (float)(Math.random()*100)-50);
  }
}
}