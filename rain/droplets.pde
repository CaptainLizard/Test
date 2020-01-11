class drop{
float x= random(-width/2,width/2);
float y = random(-700,-200);
float z=random(0,30);
float yspeed=map(z,0,30,5,15);

PVector vel;
PVector loc;
PVector grav;

void update(){
 //z=random(0,30);
 y+=yspeed;
 
 if (y > height) {
 y = 0;
 yspeed=map(z,0,30,5,20);
 
 }

}

void display(){
  float len = map(z,0,30,5,15);
  float thickness = map(z,0,30,1,4);
  strokeWeight(thickness);
  stroke(255);
 line(x,y,z,x,y+len,z);

}
}
