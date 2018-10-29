
class pantallitas
{
  int x,y,w,h,d;
  PImage p1,p2,p3,p4,p5,p6,p7;
  
  pantallitas(int x_,int y_,int w_,int h_, int d_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    d = d_;
  }
  
  void Draw()
  {
    switch (d)
    {
      case 1:
      p1 = loadImage ("pantalla1.png");
      image (p1,x,y,w,h);
      break;
      
      case 2:
      p2 = loadImage ("pantalla2.jpg");
      image (p2,x,y,w,h);
      break;
      
      case 3:
      p3 = loadImage ("pantalla3.jpg");
      image (p3,x,y,w,h);
      break;
      
      case 4:
      p4 = loadImage ("pantalla4a.jpg");
      image (p4,x,y,w,h);
      break;
      
      case 5:
      p5 = loadImage ("pantalla5.jpg");
      image (p5,x,y,w,h);
      break;
      
      case 6:
      p6 = loadImage ("pantalla6.jpg");
      image (p6,x,y,w,h);
      break;
    }
  }
}

void combate()
{
  switch (j1)
  {
    case 1:
    pushMatrix();
    translate(20,-10);
    scale(4,4);
    a.Draw();
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    translate(20,-5);
    scale(4,4);
    b.Draw();
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    translate(25,-2);
    scale(4,4);
    c.Draw();
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    translate(25,-2);
    scale(4,4);
    d.Draw();
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    translate(25,-2);
    scale(4,4);
    e.Draw();
    popMatrix();
    break;
  }
  switch (j2)
  {
    case 1:
    pushMatrix();
    translate(460,-10);
    scale(4,4);
    a.Draw();
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    translate(460,-5);
    scale(4,4);
    b.Draw();
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    translate(460,-2);
    scale(4,4);
    c.Draw();
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    translate(460,-2);
    scale(4,4);
    d.Draw();
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    translate(460,-2);
    scale(4,4);
    e.Draw();
    popMatrix();
    break;
  }
  
  noStroke();
  fill (255);
  rect (200,40,vida1*2,40);
  rect (665,40,vida2*2,40);
}
