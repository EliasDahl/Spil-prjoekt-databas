class Forhindringmover extends Forhindring
{
  float velocityx;
  float velocityy;
  float start;
  float slut;
Forhindringmover()
{
  super();
  velocityx=0;
  velocityy=0;
}
void update()
{
  locationx=locationx+velocityx;
  locationy=locationy+velocityy;
  if(velocityx==1||velocityx==-1){
  if(locationx<start||locationx>slut){
  velocityx=velocityx*-1;}
  }
  
  if(velocityy>0||velocityy<0){
  if(locationy==slut){
    if(l.lev2==2){
      if(velocityy<2){
    velocityy=velocityy*-2;
      }
      else{velocityy=velocityy*-1;}
    }
    else{velocityy=velocityy*-1;}
  }
  }
  if(locationy==start){velocityy=velocityy*-1;}
     if(b.locationbil.x>width||b.locationbil.y>height||b.locationbil.x<0||b.locationbil.y<0){
     hitedge=true;}
     else{hitedge=false;}
  
 if (b.locationbil.x>locationx-x&&b.locationbil.x<sizex+locationx+x&&b.locationbil.y>locationy-x&&b.locationbil.y<sizey+locationy+x){
      hit=true;}
    else{hit=false;}
    if(hit==true)
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
}
