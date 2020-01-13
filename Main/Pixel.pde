class Pixel{

int x=mouseX;
int y=mouseY;
//int x = int(random(0,width));
//int y = int(random(-1,0));
boolean ground;

float s= 10;
PVector loc = new PVector(x*s,y*s);
PVector vel = new PVector(0,10);

     void update(){
     if ((loc.y >= height-200)){
       vel.mult(0);
     }
     
    
     loc.add(vel);
   }
   
   void show(){
      
     stroke(255);
     rect(loc.x,loc.y, s,s);
     
   }
   
     void collide(){ 
       
      for (Pixel pixel1: Pixels){
                 
        float d = (dist(loc.x+s/2, loc.y+s/2, pixel1.loc.x+s/2,pixel1.loc.y+s/2));
              
        if ((d <= s+0.1) && (this != pixel1) && (loc.y>100)) { 
          vel.mult(0);
          //loc.y-=pixel1.loc.y;
            }
            
            
  }
}
    

    void multi(){
     this.update();
     this.show();
    }


}
