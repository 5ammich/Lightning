int startX = 350;
int startY = 0;
int endX = 350;
int endY = 0;
int lightningColor;
int lightningColor1;
int lightningColor2;
double yes;
boolean hm = true;
boolean gameStart = false;
int playerX = -1000;
int playerY = -1000;
float smol = 0.03;
boolean lose;
int score = 0;

void setup()
{
  size(700,500);
  strokeWeight(5);
  background(0,0,0);
  //frameRate(5);

}
void draw(){
  fill(0,0,0,10);
  rect(-100,-100,1000,800);

  Lightning();

  fill(255,0,0);
  textSize(25);
  text("SCORE:", 500, 50);
  text(score, 600,50);
  System.out.println(score);
  fill(255,255,255);
  noStroke();
  Player();
}
void Lightning(){
  fill(211,211,211);
  ellipse(350,15,100,50);
  ellipse(380,15,70,30);
  ellipse(320,15,70,30);
  lightningColor = ((int)(Math.random()*255)+1);
  lightningColor1 = ((int)(Math.random()*255)+1);
  lightningColor2 = ((int)(Math.random()*255)+1);
  stroke(lightningColor,lightningColor1,lightningColor2);
  while(endY <= 500){
    endY = startY + (int)((Math.random()*8)+1);
    endX = startX + (int)((Math.random()*60)-30);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  if ((endY > 450) && (lose == false)){
    if ((playerX < 750) && (playerX > -50) && (playerY == 450)){
      score = score + 1;
    }
  }
  }
  if (startY < 10){
    fill(255,0,0);
    line(startX,startY,startX,startY + 1000);
  }
}




void Player(){
  yes = (Math.random());
  if (hm == true){
    if (yes < smol){
      startX = 350;
      startY = 0;
      endX = 350;
      endY = 0;
    }

  }
  if (gameStart == true){
    playerX = (int)((Math.random()*500)+50);
    playerY = 450;
    gameStart = false;
  }
  rect(playerX,playerY,30,30);
  if (lose == false){
  if (playerX < 0){
    playerX = 670;
  }
  if (playerX > 670){
    playerX = 0;
  }
  }
  if ((endX > playerX - 15) && (endX < playerX + 15) && (endY > 450)){
    lose = true;
    playerX = -1000;
    System.out.println(lose);
    fill(255,255,255);
    textSize(50);
    text("YOU LOSE", 20, 50);
  }

}
public void keyPressed(){
  if (key == ' '){
    startX = 350;
    startY = 0;
    endX = 350;
    endY = 0;
  }
  if (key == 'j' || key == 'J'){
    gameStart = true;
    System.out.println(gameStart);
    lose = false;
    score = 0;
  }
  if (key == 'a' || key == 'A'){
    playerX = playerX - 15;
  }
  if (key == 'd' || key == 'D'){
    playerX = playerX + 15;
  }
  if (key == 'l' || key == 'L'){
    smol = 0.5;
  }
}
public void mousePressed(){

    startX = 350;
    startY = 0;
    endX = 350;
    endY = 0;
 
}
