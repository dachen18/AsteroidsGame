Spaceship Andy = new Spaceship();
int DefBackground = 0;
int DetGal;
Star[] OOF;
Sun Wu = new Sun();
Asteroids[] Wuster;
public void setup() 
{
  size(1000,1000);
  background(0);
  OOF = new Star[500];
  Wuster = new Asteroids[100];
  for (int ratS = 0; ratS < OOF.length;ratS++)
  {
    OOF[ratS] = new Star();
  }
  for (int skcoR = 0;skcoR < Wuster.length;skcoR++)
  {
    Wuster[skcoR] = new Asteroids();
  }
  frameRate(120);
}
public void draw() 
{
  background(DefBackground);
  for (int ratS = 0;ratS < OOF.length;ratS++)
 {
   fill(200);
  OOF[ratS].glow();
 }
  Andy.show();
  Andy.move();
  if (DetGal == 1)
  {
    Wu.glow();
    Wu.SunRays();
  }
  //while (DefBackground > 0) //Flashes
  //{
    //DefBackground = DefBackground - 1;
  //}
  for (int skcoR = 0;skcoR < Wuster.length;skcoR++)
  {
    Wuster[skcoR].move();
    Wuster[skcoR].show();
    Wuster[skcoR].test();
  }
}

public void keyPressed()
{
  if (key == 'w') {Andy.accelerate(0.75);}
  if (key == 's') {Andy.accelerate(-0.75);}
  if (key == 'd') {Andy.turn(5);}
  if (key == 'a') {Andy.turn(-5);}
  if (key == 'e') //Hypespace
  {
   background(0);
  for (int ratS =0;ratS < OOF.length;ratS++)
  {
    OOF[ratS].ResetPos();
    Wu.ChangePos();
  }
    for(int Back = 0;Back < 255;Back = Back + 1)
    {
      //DefBackground = 255;
    }
    Andy.setX((int)(Math.random()*1000));
    Andy.getX();
    Andy.setY((int)(Math.random()*1000));
    Andy.getY();
    Andy.setDirectionX(0);
    Andy.getDirectionX();
    Andy.setDirectionY(0);
    Andy.getDirectionY();
    Andy.setPointDirection((int)(Math.random()*360));
    Andy.getPointDirection();
    background(0);
    DetGal = (int)(Math.random()*2);
  }

}