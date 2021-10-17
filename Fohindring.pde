class Forhindring
{
  float locationx, locationy, sizex, sizey;
  float x;
  boolean hit;
  int time;
  int timeDelay;
  float fill;
  float op;
  boolean hitedge;
Forhindring()
{
  x=15;
  op=255;
  fill=0;
}


void update()
{
   if(b.locationbil.x>width||b.locationbil.y>height||b.locationbil.x<0||b.locationbil.y<0){
     hitedge=true;}
     else{hitedge=false;}
    if (b.locationbil.x>locationx-x&&b.locationbil.x<sizex+locationx+x&&b.locationbil.y>locationy-x&&b.locationbil.y<sizey+locationy+x){
      hit=true;}
    else{hit=false;}
    
    if(hit==true||hitedge==true)
    {
    b.velocity.x=0;
    b.velocity.y=0;
    b.acceleration.x=0;
    b.acceleration.y=0;
     if(keyPressed)
     {
       if(key==' ')
       {
    b.locationbil.x=b.startx;
    b.locationbil.y=b.starty;
    b.heading=90;
       }
      }
    }
}
void display()
{
  rectMode(CORNER);
  stroke(255);
  strokeWeight(5);
  fill(20,op);
  rect(locationx,locationy,sizex,sizey);
  if(hit==true||hitedge==true||one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true||slut.hit==true){
  textSize(100);
  fill(255,50);
  rect(170,260,670,100,100);
  fill(0);
  text("PRESS SPACE",200,350);}
}
}
