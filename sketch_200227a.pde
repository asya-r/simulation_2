import java.lang.Math;

float height_ = 5;
float angle_ = (float)(30 * Math.PI / 180);
float speed_ = 10;
float g = 9.81; 
float scale = 20;

int window_width = 640;
int window_height = 360;
int time = millis();

void setup(){
// Sets the screen to be 640 pixels wide and 360 pixels high
size(640, 360);

// Set the background to black and turn off the fill color
background(255, 250, 222);
noFill();

// The two parameters of the point() method each specify coordinates.
// The first parameter is the x-coordinate and the second is the Y 
//stroke(255);
// Coordinates are used for drawing all shapes, not just points.
// Parameters for different functions are used for different purposes.
// For example, the first two parameters to line() specify 
// the coordinates of the first endpoint and the second two parameters 
// specify the second endpoint
//stroke(0, 153, 255);
point(630, 340);
//line(0, height*0.33, width, height*0.33);

// By default, the first two parameters to rect() are the 
// coordinates of the upper-left corner and the second pair
// is the width and height
stroke(216, 71, 47);
//rect(width*0.25, height*0.1, width * 0.5, height * 0.8);


}

void draw(){
  textSize(32);
  //text("word", 10, 30); 
  fill(0, 102, 153);
//  for (int i = 0; i < 200; i++){
//  float t = i * 0.03;
//  float x = speed_ * cos(angle_) * t * scale;
//  float y = window_height - (height_ + speed_ * sin(angle_) * t - g * t * t / 2) * scale;
//  point(x, y);

//}
int i = 0;
while (true){
    if (millis() > time + 100){
    time = millis();
    text("dd", 10, 30);
    float t = i * 0.03;
    float x = speed_ * cos(angle_) * t * scale;
    float y = window_height - (height_ + speed_ * sin(angle_) * t - g * t * t / 2) * scale;
    point(x, y);
    i += 1;
  }
}

}
