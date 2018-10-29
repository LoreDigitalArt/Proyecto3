 //SONIDO
import processing.sound.*;
SoundFile file;

import processing.sound.*;

int cp=1,j1,j2,turno=1,opor=0,opor2=0,con=0,con2=0;
float gf,gd,cu,vida1=100,vida2=100;

PFont font;

pantallitas p1,p2,p3,p4,p5,p6;
personajitos a,b,c,d,e;

void setup()
{
  size (900,600);
  
  file = new SoundFile(this,"LuisMi.mp3");
  
  p1 = new pantallitas (0,0,width,height,1);
  p2 = new pantallitas (0,0,width,height,2);
  p3 = new pantallitas (0,0,width,height,3);
  p4 = new pantallitas (0,0,width,height,4);
  p5 = new pantallitas (0,0,width,height,5);
  p6 = new pantallitas (0,0,width,height,6);
  
  a = new personajitos (10,10,80,100,1);
  b = new personajitos (10,10,80,100,2);
  c = new personajitos (10,10,80,100,3);
  d = new personajitos (10,10,80,100,4);
  e = new personajitos (10,10,80,100,5);
  
  font = loadFont("font.vlw");
  
}

void draw()
{
  file.play();
  
  background (random(255),random(255),random(255));
  if (cp==1)
  {
    println ("pantalla uno");
    p1.Draw();
    noFill();
    
    if (mousePressed && (mouseX>330) && (mouseX<=330+230) && (mouseY>490) && (mouseY<=490+100))
    {
      cp=2;
    }
  }
  
  if (cp==2)
  {
    println ("pantalla dos");
    p2.Draw();
    keyPressed();
  }
  
  if (cp==3)
  {
    println ("pantalla tres");
    p3.Draw();
    keyPressed();
  }
  
  if (cp==4)
  {
    println ("pantalla cuatro");
    p4.Draw();
    
    if (j1==0 && j2==0)
    {
      selectPer();
    }
    if (j1!=0 && j2==0)
    {
      keyPressed();
    }
    
    
    if (j1!=0 && j2!=0)
    {
      cp=5;
    }
  }
  
  if (cp==5)
  {
    p5.Draw();
    combate();
    keyPressed();
    
    if (vida1<=0 || vida2<=0)
    {
      cp=6;
    }
  }
  
  if (cp==6)
  {
    p6.Draw();
    if (vida1>vida2)
    {
      fill(255);
      textFont(font);
      text("JUGADOR 1",310,350);
    }
    else if(vida2>vida1)
    {
      fill(255);
      textFont(font);
      text("JUGADOR 2",310,350);
    }
    keyPressed();
   
  }
  
  
}

void keyPressed()
{
  if (cp<=4)
  {
  switch (key)
  {
    case 'A':
    cp=3;
    break;
    
    case 'Z':
    cp=4;
    break;
    
    case 'Q':
    j2=1;
    println (j2);
    break;
    
    case 'W':
    j2=2;
    println (j2);
    break;
    
    case 'E':
    j2=3;
    println (j2);
    break;
    
    case 'R':
    j2=4;
    println (j2);
    break;
    
    case 'T':
    j2=5;
    println (j2);
    break;
    
    

  }
  }
  
  if (cp==6)
  {
    switch(key)
    {
      case '1':
    cp=1;
    turno=1;
    opor=1;opor2=1;
    con=1;con2=1;
    vida1=100;
    vida2=100;
    break;
    
    case '0':
    exit();
    break;
    }
  }
  
  if (cp==5)
 {
  if (turno==1 && key=='s'||key=='S')
 {
   vida2=vida2-gd;
   turno=2;
   con=con+1;
   println(vida2);
 }
 if (turno==1 && con<=3 && key=='d'||key=='D')
 {
   vida2=vida2-gf;
   turno=2;
   con=con+1;
   println(vida2);
 }
 if (turno==1 && key=='c'||key=='C' && opor<=3)
 {
   vida1=vida1+cu;
   turno=2;
   opor=opor+1;
   println(vida2);
 }
 
 if (turno==2 && key=='t'||key=='T')
 {
   vida1=vida1-gd;
   turno=1;
   println(vida1);
 }
 
 if (turno==2 && con2<=3 && key=='f'||key=='F')
 {
   vida1=vida1-gf;
   con2=con2+1;
   turno=1;
   println(vida1);
 }
 
 if (turno==2 && key=='v'||key=='V' && opor<=3)
 {
   vida2=vida2+cu;
   opor2=opor2+1;
   turno=1;
   println(vida1);
 }

 }
 
}
