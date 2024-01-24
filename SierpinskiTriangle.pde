public void setup()
{
 size(512, 512);
 background(0);
 fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}

public void draw()
{
 sierpinski(0,512,512);
}

public void sierpinski(int x, int y, int len) 
{
  if(len<20){
 triangle(x,y,x+len,y,x+len/2,y-len);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}
