int carX=-75;
int carY=100;
int carW=75;
int carH=25;
//Car cabin
int cabAX=-75;
int cabAY=100;
int cabBX=-60;
int cabBY=85;
int cabCX=-35;
int cabCY=85;
int cabDX=-15;
int cabDY=100;
//Rear wheel
int RwheelX=-65;
int RwheelY=125;
//Front wheel
int FwheelX=-10;
int FwheelY=125;
//Road centerpoint
int roadX=200;
int roadY=100;
//stripes
int stripeX=20;
int stripeW=20;
int stripeH=10;
//Car speed
int carforward=2;
int carup=4;
int cardown=4;


void setup() {
  size(400, 200);
}

void draw() {
  background(#FFFFFF);

  //drawing the road
  rectMode(CENTER);
  fill(#000000);
  rect(roadX, roadY, 400, 100);
  fill(#FFFFFF);
  rect(stripeX, roadY, stripeW, stripeH);
  rect(stripeX+50, roadY, stripeW, stripeH);
  rect(stripeX+100, roadY, stripeW, stripeH);
  rect(stripeX+150, roadY, stripeW, stripeH);
  rect(stripeX+200, roadY, stripeW, stripeH);
  rect(stripeX+250, roadY, stripeW, stripeH);
  rect(stripeX+300, roadY, stripeW, stripeH);
  rect(stripeX+350, roadY, stripeW, stripeH);
  rect(stripeX+400, roadY, stripeW, stripeH);

  //CAR
  rectMode(CORNER);
  fill(#C40000);
  rect(carX, carY, carW, carH);


  //instructions
  fill(#000000);
  textSize(10);
  text("Use spacebar to move car forward.", 0, 10);
  text("Use the arrow keys to move the car up and down.", 0, 20);

  //moving the car
  if (keyPressed)
    carX=carX+carforward;


  //resetting the car
  if (carX>width+75)
    carX=-75;

  //wheels
  ellipse(FwheelX, FwheelY, 15, 15);
  ellipse(RwheelX, RwheelY, 15, 15);
  if (keyPressed)
    FwheelX=FwheelX+carforward;
  if (keyPressed)
    RwheelX=RwheelX+carforward;

  //resetting the wheels
  if (FwheelX>width+140)
    FwheelX=-10;
  if (RwheelX>width+85)
    RwheelX=-65;

  //Car Cabin
  stroke(#FFFFFF);
  quad(cabAX, cabAY, cabBX, cabBY, cabCX, cabCY, cabDX, cabDY);
  if (keyPressed)
    cabAX=cabAX+carforward;
  if (keyPressed)
    cabBX=cabBX+carforward;
  if (keyPressed)
    cabCX=cabCX+carforward;
  if (keyPressed)
    cabDX=cabDX+carforward;

  //Resetting the cabin
  if (cabAX>width+75)
    cabAX=-75;
  if (cabBX>width+90)
    cabBX=-60;
  if (cabCX>width+115)
    cabCX=-35;
  if (cabDX>width+135)
    cabDX=-15;
}
//Making the whole car move up and down
void keyPressed() {
  if (keyCode==UP) {
    carY=carY-carup;
    RwheelY=RwheelY-carup;
    FwheelY=FwheelY-carup;
    cabAY=cabAY-carup;
    cabBY=cabBY-carup;
    cabCY=cabCY-carup;
    cabDY=cabDY-carup;
  } else if (keyCode==DOWN) {
    carY=carY+cardown;
    RwheelY=RwheelY+cardown;
    FwheelY=FwheelY+cardown;
    cabAY=cabAY+cardown;
    cabBY=cabBY+cardown;
    cabCY=cabCY+cardown;
    cabDY=cabDY+cardown;
  }
}
