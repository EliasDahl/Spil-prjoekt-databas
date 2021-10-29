class Particle
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
 
  Particle(PVector l) {
  }
  void run() {
    update();
    display();
  }
 
  void update() {
    if(one.hit==false&&two.hit==false&&three.hit==false&&four.hit==false&&five.hit==false&&six.hit==false&&slut.hit==false&&one.hitedge==false){
    acceleration = new PVector(0,0.05);
    velocity = new PVector(random(-5,5),random(-5,5));
    location = new PVector(b.locationbil.x,b.locationbil.y+20);
    lifespan = 200.0;}
    if(one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true||slut.hit==true||one.hitedge==true){
      strokeWeight(0);
    location.add(velocity);
    velocity.add(acceleration);
    lifespan -= 2.0;}
  }
 
  void display() {
    stroke(0,lifespan);
    fill(random(100,255),random(255),random(0),lifespan);
    ellipse(location.x,location.y,12,12);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
