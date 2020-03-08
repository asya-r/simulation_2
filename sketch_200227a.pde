import java.lang.Math;

// parameters
float height_ = 5;
float angle_ = (float)(40 * Math.PI / 180);
float speed_ = 10;


float g = 9.81; 
float scale = 20;

int window_width = 640;
int window_height = 360;
int time = millis();
int i = 0;
boolean pause = false;

void setup(){
size(640, 360);
background(255, 255, 255);
noFill();
point(630, 340);
stroke(0, 0, 0);
}

void graph(){
    textSize(32);
  fill(0, 102, 153);

  if (millis() > time + 100 && !pause){
    time = millis();
    fill(255, 255, 255);
    rect(0,0, 200, 60);
    fill(0, 0, 0);
    text(i, 10, 30);
    float t = i * 0.03;
    float x = speed_ * cos(angle_) * t * scale;
    float y = window_height - (height_ + speed_ * sin(angle_) * t - g * t * t / 2) * scale;
    point(x, y);
    i += 1;
  }
  if (keyPressed){
    if (key == 'p'){
      if (pause){
        pause = false;
      }
      else{
        pause = true;
      }
    }
  }
}

void draw(){

  graph();

}
