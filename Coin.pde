class Coin{
  
  float x,y;
  float xsize,ysize;
  boolean coinhit;
  Coin(){
    xsize=30;
    ysize=30;
    coinhit=false;
  }
  void update(){
    if(b.locationbil.x<xsize+x+40&&b.locationbil.x>x-40&&b.locationbil.y<ysize+y+40&&b.locationbil.y>y-40&&b.locationbil.x!=b.startx){
      coinhit=true;
    }
      if(coinhit==true){
    xsize=0;
    ysize=0;
    if(keyPressed&&one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true||slut.hit==true||one.hitedge==true){
    if(key==' '){
    coinhit=false;
    xsize=30;
    ysize=30;
    }
   }
  }
 }
  
  
  void display(){
    fill(0,150);
    strokeWeight(5);
    stroke(255,190);
    rect(920,20,60,60);
    fill(255,255,0);
    strokeWeight(0);
    ellipse(x,y,xsize,ysize);
    if(coinhit==true){
      fill(255,255,0,255);
    }
    else{fill(255,255,0,100);
    }
    ellipse(950,50,50,50);
  }
}
