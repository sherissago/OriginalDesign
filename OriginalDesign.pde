void setup(){
  size(500,500);
  frameRate(30);
}

int mountX = 20;
int mountY = 20;
int sunX = 20;
int sunY = 20;
int cloudX;
int cloudY;

void draw(){
 background(95,158,160);
  
 mountain(-30,30);
 mountain(120,30);
 mountain(170,30);
 mountain(230,30);
 mountain(330,30);
 
 cloud(cloudX+50,cloudY+200);
 cloud(cloudX+100, cloudY+230);
 cloud(cloudX+200,cloudY+190);
 
 cloudX = cloudX +1;
 if (cloudX > 550){
   cloudX=-100;
 }
 
 //sun
 fill(218,165,32);
 ellipse(300,100,50,50);
 
}

void sky(int x, int y){
  noStroke();
  fill(245, 245, 220);
  rect(0,600,500,100);
}

void mountain(int mountX, int mountY){
  noStroke();
  fill(100,100,100);
  triangle(mountX+30,mountY+500,mountX+70,mountY+370,mountX+100,mountY+500);
  triangle(mountX+30,mountY+500,mountX+150,mountY+360,mountX+250,mountY+500);
  triangle(mountX+50,mountY+500,mountX+200,mountY+350,mountX+250,mountY+500);
  //snow
  fill(255,255,255);
  
}

void cloud(int cloudX, int cloudY){
  noStroke();
  fill(255,255,255);
  ellipse(cloudX+1,cloudY+1, 30,30);
  ellipse(cloudX+25,cloudY+1, 40,45);
  ellipse(cloudX+45,cloudY+1, 20,20);
}