//Road centerpoint 
int roadX=400;
int roadY=200;

//stripes
int stripeX=20;
int stripeW=20;
int stripeH=10;

//player car
int carX=10;
int carY=200;
int carW=75;
int carH=25;
int cabAX=10;
int cabAY=200;
int cabBX=25;
int cabBY=185;
int cabCX=50;
int cabCY=185;
int cabDX=70;
int cabDY=200;
int carColor=#C40000;

//rear wheel
int RwheelX=22;
int RwheelY=225;

//Front wheel
int FwheelX=72;
int FwheelY=225;

// Speed varialbles
int roadSpeed=6;
int carSpeed=3;
int carup=6;
int cardown=6;

//opponent car A
int opPosX=810;
int opPosY=205;
int opX=0;
int opY=50;
int opcabAX=0;
int opcabAY=50;
int opcabBX=opX+15;
int opcabBY=opY-15;
int opcabCX=opX+40;
int opcabCY=opY-15;
int opcabDX=opX+60;
int opcabDY=opY;
int opRwheelX=opX+12;
int opRwheelY=opY+25;
int opFwheelX=opX+62;
int opFwheelY=opY+25;

//Opponent car B
int BopPosX=1100;
int BopPosY=105;
int BopX=150;
int BopY=50;
int BopcabAX=BopX;
int BopcabAY=BopY;
int BopcabBX=BopX+15;
int BopcabBY=BopY-15;
int BopcabCX=BopX+40;
int BopcabCY=BopY-15;
int BopcabDX=BopX+60;
int BopcabDY=BopY;
int BopRwheelX=BopX+12;
int BopRwheelY=BopY+25;
int BopFwheelX=BopX+62;
int BopFwheelY=BopY+25;
int BopBackgroundX=BopX;
int BopBackgroundY=BopY-15;
int BopBackgroundW=carW;
int BopBackgroundH=carH*2;

//Opponent car C
int CopPosX=1400;
int CopPosY=239;
int CopX=250;
int CopY=50;
int CopcabAX=CopX;
int CopcabAY=CopY;
int CopcabBX=CopX+15;
int CopcabBY=CopY-15;
int CopcabCX=CopX+40;
int CopcabCY=CopY-15;
int CopcabDX=CopX+60;
int CopcabDY=CopY;
int CopRwheelX=CopX+12;
int CopRwheelY=CopY+25;
int CopFwheelX=CopX+62;
int CopFwheelY=CopY+25;
int CopBackgroundX=CopX;
int CopBackgroundY=CopY-15;
int CopBackgroundW=carW;
int CopBackgroundH=carH*2;

//Score
int initialTime;
int score = 0;

void setup() {
  size(800, 400);
}

void draw() {
  background(#FFFFFF);



  //Drawing the road
  rectMode(CENTER);
  fill(#000000);
  stroke(#000000);
  rect(roadX, roadY, 800, 100);
  rect(roadX+width, roadY, 800, 100);
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
  rect(stripeX+450, roadY, stripeW, stripeH);
  rect(stripeX+500, roadY, stripeW, stripeH);
  rect(stripeX+550, roadY, stripeW, stripeH);
  rect(stripeX+600, roadY, stripeW, stripeH);
  rect(stripeX+650, roadY, stripeW, stripeH);
  rect(stripeX+700, roadY, stripeW, stripeH);
  rect(stripeX+750, roadY, stripeW, stripeH);
  rect(stripeX+800, roadY, stripeW, stripeH);

  //second road for resetting
  fill(#000000);
  fill(#FFFFFF);
  rect(width+stripeX, roadY, stripeW, stripeH);
  rect(width+stripeX+50, roadY, stripeW, stripeH);
  rect(width+stripeX+100, roadY, stripeW, stripeH);
  rect(width+stripeX+150, roadY, stripeW, stripeH);
  rect(width+stripeX+200, roadY, stripeW, stripeH);
  rect(width+stripeX+250, roadY, stripeW, stripeH);
  rect(width+stripeX+300, roadY, stripeW, stripeH);
  rect(width+stripeX+350, roadY, stripeW, stripeH);
  rect(width+stripeX+400, roadY, stripeW, stripeH);
  rect(width+stripeX+450, roadY, stripeW, stripeH);
  rect(width+stripeX+500, roadY, stripeW, stripeH);
  rect(width+stripeX+550, roadY, stripeW, stripeH);
  rect(width+stripeX+600, roadY, stripeW, stripeH);
  rect(width+stripeX+650, roadY, stripeW, stripeH);
  rect(width+stripeX+700, roadY, stripeW, stripeH);
  rect(width+stripeX+750, roadY, stripeW, stripeH);
  rect(width+stripeX+800, roadY, stripeW, stripeH);

  // Copying the road to make multiple lanes
  copy(0, 150, 800, 100, 0, 90, 800, 100);

  copy(0, 150, 800, 100, 0, 210, 800, 100);

  //**************drawing the car****************
  rectMode(CORNER);
  fill(carColor);
  stroke(#FFFFFF);
  rect(carX, carY, carW, carH);
  fill(#000000);
  ellipse(FwheelX, FwheelY, 15, 15);
  ellipse(RwheelX, RwheelY, 15, 15);
  // car cabin
  quad(cabAX, cabAY, cabBX, cabBY, cabCX, cabCY, cabDX, cabDY);



  //*******************opponent cars*****************

  //opponent A
  stroke(0);
  rect(0, 35, 75, 50);
  fill(0, 255, 0);
  rect(opX, opY, carW, carH);
  fill(150);
  quad(opcabAX, opcabAY, opcabBX, opcabBY, opcabCX, opcabCY, opcabDX, opcabDY);
  ellipse(opFwheelX, opFwheelY, 15, 15);
  ellipse(opRwheelX, opRwheelY, 15, 15);
  copy(0, 35, 75, 50, opPosX, opPosY, carW, carH*2);

  //opponent B
  fill(0);
  rect(BopBackgroundX, BopBackgroundY, carW, carH+carH);
  fill(0, 0, 255);
  rect(BopX, BopY, carW, carH);
  fill(150);
  quad(BopcabAX, BopcabAY, BopcabBX, BopcabBY, BopcabCX, BopcabCY, BopcabDX, BopcabDY);
  ellipse(BopFwheelX, BopFwheelY, 15, 15);
  ellipse(BopRwheelX, BopRwheelY, 15, 15);
  copy(BopBackgroundX, BopBackgroundY, carW, BopBackgroundH, BopPosX, BopPosY, carW, carH*2);

  //opponent C
  fill(0);
  rect(CopBackgroundX, CopBackgroundY, carW, carH+carH);
  fill(#FFF303);
  rect(CopX, CopY, carW, carH);
  fill(150);
  quad(CopcabAX, CopcabAY, CopcabBX, CopcabBY, CopcabCX, CopcabCY, CopcabDX, CopcabDY);
  ellipse(CopFwheelX, CopFwheelY, 15, 15);
  ellipse(CopRwheelX, CopRwheelY, 15, 15);
  copy(CopBackgroundX, CopBackgroundY, carW, CopBackgroundH, CopPosX, CopPosY+1, carW, carH*2);

  //scoreboard
  fill(0);
  text(score, width-50, 20);



  //moving the road/cars & keeping score
  if (keyPressed) {
    roadX=roadX-roadSpeed;
    stripeX=stripeX-roadSpeed;
    opPosX=opPosX-carSpeed;
    BopPosX=BopPosX-carSpeed;
    CopPosX=CopPosX-carSpeed;
    score++;
    initialTime = millis();
  }

  //Resetting the road
  if (roadX<-400) {
    roadX=+400;
  }
  if (stripeX<-20) {
    stripeX=+30;
  }
  //resetting the cars
  if (opPosX<random(-10000)) {
    opPosX=+810;
  }
  if (BopPosX<random(-5000)) {
    BopPosX=+900;
  }
  if (CopPosX<random(-5000)) {
    CopPosX=+1000;
  }


  //hit detection
  if (carX+carH>opPosX && carX<opPosX+carW && carY+carH>opPosY && carY<opPosY+carH) {
    score=0;
  } else if (carX+carH>BopPosX && carX<BopPosX+carW && carY+carH>BopPosY && carY<BopPosY+carH) {
    score=0;
  } else if (carX+carH>CopPosX && carX<CopPosX+carW && carY+carH>CopPosY && carY<CopPosY+carH) {
    score=0;
  }

  //Difficulty mulitplier
  //if(score==0){
  //carSpeed=carSpeed-2;
  //roadSpeed=roadSpeed-2;
  if (score==1000) {
    carSpeed=carSpeed+2;
    roadSpeed=roadSpeed+2;
  }
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
