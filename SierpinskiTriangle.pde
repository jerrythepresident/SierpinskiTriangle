public void setup()
{
 size(1024, 1024);
 background(0);
}

public void draw()
{
 sierpinski(0,1024,1024);
}

public void mouseClicked() {
    fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}

public void sierpinski(int x, int y, int len) 
{
 fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  if(len<20){
 triangle(x,y,x+len,y,x+len/2,y-len);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}
