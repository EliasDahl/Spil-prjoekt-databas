class Level1 extends Level{

Level1(){ 
  super();
}
  void update(){
    if(keyPressed){if(key=='1'){b.locationbil.x=500;b.locationbil.y=350;}}
    if(lev==0){
    strokeWeight(0);
    textSize(100);
    text("PRESS 1 TO START", 50, 350);
    b.velocity.x=0;
    b.velocity.y=0;
    }
  if(lev==1){
  b.startx=25;
  b.starty=25;
  one.locationx=0;
  one.locationy=150;
  one.sizex=200;
  one.sizey=320;
  one.fill=0;
  
  two.locationx=400;
  two.locationy=0;
  two.sizex=200;
  two.sizey=600;
  two.fill=0;
  
  c.x=50;
  c.y=600;
  three.velocityy=0;
  if(b.locationbil.x==25&&b.locationbil.y==25){
  three.locationx=600;
  three.locationy=300;
  three.sizex=200;
  three.sizey=300;
  three.start=0;
  three.slut=0;
  three.fill=0;
  }
  
  four.locationx=800;
  four.locationy=0;
  four.sizex=200;
  four.sizey=200;
  four.fill=0;
  
  five.sizex=0;
  five.sizey=0;
  
  six.sizex=0;
  six.sizey=0;
  
  slut.locationx=601;
  slut.locationy=0;
  slut.sizex=198;
  slut.sizey=100;
  slut.op=50;
  slut.fill=100;
  if(slut.hit==true){b.startx=50;b.starty=600;}
  }
  
  if(lev==2){
  b.startx=50;
  b.starty=600;
  one.locationx=0;
  one.locationy=450;
  one.sizex=800;
  one.sizey=100;
  one.fill=0;
  
  two.locationx=150;
  two.locationy=200;
  two.sizex=850;
  two.sizey=100;
  two.fill=0;
  
  four.locationx=150;
  four.locationy=80;
  four.sizex=200;
  four.sizey=220;
  four.fill=0;
  
  five.locationx=450;
  five.locationy=80;
  five.sizex=200;
  five.sizey=20;
  
  six.sizex=0;
  six.sizey=0;
  
  c.x=500;
  c.y=150;
  
  if(b.locationbil.x==50&&b.locationbil.y==600){
  three.velocityy=0.5;
  three.locationx=400;
  three.locationy=300;
  three.sizex=400;
  three.sizey=200;
  three.start=300;
  three.slut=500;
  three.fill=0;
  }
  
  slut.locationx=800;
  slut.locationy=0;
  slut.sizex=198;
  slut.sizey=200;
  slut.op=50;
  slut.fill=100;
    if(slut.hit==true){b.startx=900;b.starty=50;}
  }
  if(lev==3){
  b.startx=900;
  b.starty=50;
  if(b.locationbil.x==900&&b.locationbil.y==50){b.heading=85;}
  one.locationx=800;
  one.locationy=0;
  one.sizex=50;
  one.sizey=600;
  one.fill=0;
  
  two.locationx=600;
  two.locationy=100;
  two.sizex=50;
  two.sizey=600;
  two.fill=0;
  
  four.locationx=150;
  four.locationy=150;
  four.sizex=200;
  four.sizey=550;
  four.fill=0;
  
  five.locationx=450;
  five.locationy=80;
  five.sizex=200;
  five.sizey=20;
  
  six.locationx=450;
  six.locationy=200;
  six.sizex=50;
  six.sizey=400;
  
  c.x=500;
  c.y=150;
  
  if(b.locationbil.x==900&&b.locationbil.y==50){
  three.velocityy=1;
  three.locationx=70;
  three.locationy=150;
  three.sizex=20;
  three.sizey=200;
  three.start=150;
  three.slut=400;
  three.fill=0;
  }
  
  slut.locationx=0;
  slut.locationy=550;
  slut.sizex=150;
  slut.sizey=150;
  slut.op=50;
  slut.fill=100;
  
  }
  }
}
