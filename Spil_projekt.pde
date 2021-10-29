import de.bezier.data.sql.*;
import controlP5.*;

ControlP5 cp5;
String Name = "Name";

Level l;
Level1 lev1;
Bil b;
Particle[]p = new Particle[40];
PImage baggrund;
String mode = "";
SQLite db;
int Highscore;
int ID;
String sql;
void setup()
{
  PFont font = createFont("arial",20);

  cp5 = new ControlP5(this);

  int y = 20;
  int spacing = 60;
    cp5.addTextfield(Name)
       .setPosition(20,y)
       .setSize(100,40)
       .setFont(font)
       .setFocus(true)
       .setColor(color(255,0,0))
       ;
     y += spacing;
  textFont(font);
  size(1000,700);
  l = new Level();
  lev1 = new Level1();
  b = new Bil();
  for (int i=0;i<p.length;i++){
  p[i]=new Particle(new PVector(width/2,10));}
  baggrund = loadImage("rainbow.png");
  ID=1;
}

void draw()
{
  if(mode == "Select") 
{
  println("Select:");
  GetData();
  mode="";
}
  background(150);
  imageMode(CORNER);
  image(baggrund,0,0);
  b.update();
  b.display();
  b.thrust();
   for (int i=0;i<p.length;i++){
     if(one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true||slut.hit||one.hitedge==true){
     p[i].display();}
      p[i].update();
   }
  l.update();
  l.display();
  lev1.update();
  lev1.display();
  if(keyPressed){
    if(key=='s')
    {
      b.turn(0.05);
    }
    if(key=='a')
    {
      b.turn(-0.05);
    }
  }
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}
void keyPressed(){
if(key==' '){
if(one.hit==true||two.hit==true||three.hit==true||four.hit==true||five.hit==true||six.hit==true){
  Highscore=Highscore+1;
  mode="Select";}
  }
  if(key=='1'){Highscore=-1;}
}

void GetData()
{
//Connect to database
 db = new SQLite( this, "PersonDatabase.sqlite" );
  
  //If connection is succesfull
 if ( db.connect() )
 {
     if(keyPressed==true){
   if(mode == "Select");{
   sql = "UPDATE Person SET Highscore = '"+ Highscore + "',Name = '"+ Name + "' WHERE ID =" + ID;
   db.execute(sql);

   }
 }
   //Start kode for select
     //Make Select query
      db.query( "SELECT ID, Name, Highscore FROM Person;" );
      //Run through recordset using next()
      while (db.next())
      {
        //Print the data to the log window. 
        println("ID: " + db.getInt("ID") + " \t, Name: " + db.getString("Name") + " \t, Deaths: " + db.getInt("Highscore"));
      }
   //Slut kode for select
   
   
  }
  else
  {
    //Display error trying to get data from DB
    println("Error DB");
  }
  db.close();
}
