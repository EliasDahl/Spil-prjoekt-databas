

class Bil{
PVector locationbil;
PVector velocity;
PVector acceleration;
float x,y;
float heading=90;
float damping = 0.995;
float r = 16;
boolean thrusting = false;
PImage bil;
int startx,starty;
Bil(){
  startx=25;
  starty=25;
  locationbil = new PVector(startx,starty);
  velocity = new PVector();
  acceleration = new PVector();
  x=25;
  y=50;
  bil = loadImage("Bil.png");
}
void update(){
  locationbil.add(velocity);
  velocity.add(acceleration);
  velocity.mult(damping);
  velocity.limit(3);
  acceleration.mult(0);
}
void applyForce(PVector force){
  PVector f = force.get();
  acceleration.add(f);
}
void turn(float a){
  heading +=a;
}
void thrust(){
  float angle = heading-PI/2;
  PVector force = new PVector(cos(angle),sin(angle));
  force.mult(0.1);
  applyForce(force);
  thrusting = true;
}

void display(){
   if(one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true||one.hitedge==true){strokeWeight(0);}
   else{strokeWeight(5);}
  stroke(0);
  pushMatrix();
  translate(locationbil.x,locationbil.y);
  rotate(heading);
  fill(255);
  imageMode(CENTER);
  bil.resize(0,75);
  if(one.hit==false&&two.hit==false&&three.hit==false&&four.hit==false&&five.hit==false&&six.hit==false&&slut.hit==false&&one.hitedge==false){
  image(bil,0,0);}
  //rect(0,0,x,y);
  popMatrix();
  
  thrusting = false;
}
}
