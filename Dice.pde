int dots;
void setup()
{
  noLoop();
  size(800,500);
  frameRate(20);
}
void draw()
{
  background(0);
  int sum = 0;
  for(int x = 1; x <= 600; x +=200) {
    for(int y = 1; y <= 600; y +=200){
      Die die1 = new Die(x,y);
      die1.show();
      sum+= dots;
    }
  }
  int average = sum/9;
    textSize(30);
    text("Total:",550,60);
    text(sum,650,60);
    text("Average:",550, 100);
    text(average,700,100);
}
//void mousePressed()
//{
  //redraw();
//}
class Die //models one single dice cube
{
  int myX, myY, numDie;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dots = (int)(Math.random()*6+1);
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,100,100);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if(dots == 1) {
      ellipse(myX+50,myY+50,10,10);
  }
      if(dots == 2) {
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+75,myY+75,10,10);
  }
      if(dots == 3) {
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+75,myY+75,10,10);
  }    if(dots == 4) {
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+75,10,10);
      ellipse(myX+75,myY+25,10,10);
      ellipse(myX+75,myY+75,10,10);
  }    if(dots == 5) {
      ellipse(myX+50,myY+50,10,10);
       ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+75,10,10);
      ellipse(myX+75,myY+25,10,10);
      ellipse(myX+75,myY+75,10,10);
  }    if(dots == 6) {
      ellipse(myX+75,myY+50,10,10);
       ellipse(myX+25,myY+50,10,10);
       ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25,myY+75,10,10);
      ellipse(myX+75,myY+25,10,10);
      ellipse(myX+75,myY+75,10,10);
  }
  }
}
