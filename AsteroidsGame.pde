Spaceship Andy = new Spaceship();
int DefBackground = 0;
int DetGal;
int Rot = 0;
Star[] OOF;
ArrayList <Asteroids> Wuster = new ArrayList<Asteroids>();
Sun Wu = new Sun();
boolean wIsPressed=false;
boolean aIsPressed=false;
boolean sIsPressed=false;
boolean dIsPressed=false;
//Asteroids[] Wuster;
public void setup() 
{
  size(1000,1000);
  background(0);
  OOF = new Star[500];

  for (int ratS = 0; ratS < OOF.length;ratS++)
  {
    OOF[ratS] = new Star();
  }
  for (int skcoR = 0;skcoR < 25;skcoR++)
  {
    //Wuster.add(new Asteroids());
    //Wuster[skcoR] = new Asteroids();
  }
  frameRate(144);
}
public void draw() 
{
  background(DefBackground);
  //stroke(255);
  //textSize(20);
  //text((int)Andy.getDirectionX(),900,700);
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
  while (DefBackground > 0) //Flashes
  {
    DefBackground = DefBackground - 1;
  }
  for (Asteroids Wuu : Wuster)
  {
    Wuu.show();
    Wuu.move();
  }
   if (wIsPressed == true){
    Andy.accelerate(.05);
  }
    if (sIsPressed == true){
    Andy.accelerate(-.05);
  }
  if (dIsPressed == true){
    Andy.turn(2);
}
  if (aIsPressed == true){
    Andy.turn(-2);
  }
   if (wIsPressed == false){
    Andy.accelerate(0);
  }
   if (sIsPressed == false){
    Andy.accelerate(0);
  }
}

//public void keyPressed()
//{
 // if (key == 'w') {Andy.accelerate(0.5);}
 // if (key == 's') {Andy.accelerate(-0.5);}
 // if (key == 'd') {Andy.turn(10);}
  //if (key == 'a') {Andy.turn(-10);}//Hypespace
 // if (key == 'w' && key == 'a')
 // { 
 //   Andy.turn(-10);  
  //  Andy.accelerate(0.5);
  //}
  //}
    public void keyPressed() {
  if (key == 'w') {
    wIsPressed=true;
  }
    if (key == 's') {
    sIsPressed=true;
  }
    if (key == 'd') {
    dIsPressed=true;
  }
 if (key == 'a') {
    aIsPressed=true;
  }
    if (key == 'e') 
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
//God Bless Andy
  public void keyReleased() {
    if (key == 'w') {
      wIsPressed=false;
    }
      if (key == 's') {
    sIsPressed=false;
  }
   if (key == 'd') {
    dIsPressed=false;
  }
   if (key == 'a') {
    aIsPressed=false;
  }
  }