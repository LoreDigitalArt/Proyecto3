class personajitos
{
  PImage a,b,c,d,e;
  int x,y,w,h,n;
  
  personajitos(int x_,int y_,int w_,int h_, int n_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    n = n_;
  }
  
  void Draw()
  {
    switch(n)
    {
      case 1:
      a = loadImage ("marcela.png");
      image (a,x,y,w,h);
      gf=random(20,40);
      gd=random(10,20);
      cu=15;
      break;
      
      case 2:
      b = loadImage ("luisitorey.png");
      image (b,x,y,w,h);
      gf=random(35,55);
      gd=random(20,35);
      cu=20;
      break;
      
      case 3:
      c = loadImage ("luismi.png");
      image (c,x,y,w,h);
      gf=random(40,60);
      gd=random(15,25);
      cu=30;
      break;
      
      case 4:
      d = loadImage ("mariana.png");
      image (d,x,y,w,h);
      gf=random(40,55);
      gd=random(20,35);
      cu=25;
      break;
      
      case 5:
      e = loadImage ("fanloca.png");
      image (e,x,y,w,h);
      gf=random(30,40);
      gd=random(20,30);
      cu=10;
      break;
    }
  }
  
  void Trasladar()
  {
    for (int i=0;i<=10;i++)
    {
    x=x+80;
    x=x-80;
    }
  }
}

void selectPer()
{
  noFill();
  stroke(255);
  
  //rect (70,120,85,320);
  //rect (240,120,85,320);
  //rect (400,120,85,320);
  //rect (570,120,85,320);
  //rect (750,120,85,320);
  
  if ((mouseX>70) && (mouseX<=70+85) && (mouseY>120) && (mouseY<=120+320))
  {
    j1=1;
    println (j1);
  }
  
  if ((mouseX>240) && (mouseX<=240+85) && (mouseY>120) && (mouseY<=120+320))
  {
    j1=2;
    println (j1);
  }
  
  if ((mouseX>400) && (mouseX<=400+85) && (mouseY>120) && (mouseY<=120+320))
  {
    j1=3;
    println (j1);
  }
  
  if ((mouseX>570) && (mouseX<=570+85) && (mouseY>120) && (mouseY<=120+320))
  {
    j1=4;
    println (j1);
  }
  
  if ((mouseX>750) && (mouseX<=750+85) && (mouseY>120) && (mouseY<=120+320))
  {
    j1=5;
    println (j1);
  }
}
