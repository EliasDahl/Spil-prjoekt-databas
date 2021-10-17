Forhindring one;
Forhindring two;
Forhindringmover three;
Forhindring four;
Forhindring five;
Forhindring six;
Forhindring slut;
Coin c;
float lev;
class Level{
  float lev2;
Level(){ 
  one = new Forhindring();
  two = new Forhindring();
  three = new Forhindringmover();
  four = new Forhindring();
  five = new Forhindring();
  six = new Forhindring();
  slut = new Forhindring();
  lev=0;
  c = new Coin();
}

void update(){
  lev2=lev;
  if(keyPressed){
    if(key=='0'){lev=0;}
    if(key=='1'){lev=1;}
    if(key=='2'){lev=2;}
    if(key=='3'){lev=3;}
  }
 three.update();
 one.update();
 two.update();
 four.update();
 five.update();
 six.update();
 c.update();
 slut.update();
 if(slut.hit==true&&b.locationbil.x>0&&b.locationbil.y>0&&b.locationbil.x<width&&b.locationbil.y<height){
 if(keyPressed==true){
 lev=lev+1;
 }
 }
}

void display(){
 three.display();
 one.display();
 two.display();
 four.display();
 five.display();
 six.display();
 c.display();
 slut.display();
   }
}
