public class Ball{
  float position_x,  position_y;
  float size;
  float x, y;
  String input = " ";
  Ball(float pos_x, float pos_y, float size1){
    position_x = pos_x;
    position_y = pos_y;
    size = size1;
  }

  public void draw_ball(){
    circle(position_x,position_y,size); 
  }
  
  public void changeColor_ball(){
    delay(60);
    fill(random(0,255), random(0,255), random(0,255));
    input = " " ;
  }
  
  public void move(int x, int y){
    delay(60);
    position_x = position_x+x;
    position_y = position_y+y;
    input = " ";
    
  }
  
  public void set_ball(){
     if(keyPressed){
        if (key == 'w' && input == " "){
          move(0,-10);
        }
        
        else if (key == 's' && input == " "){
          move(0,10);
        }
  
        else if (key == 'a' && input == " "){
          move(-10,0);
        }
        else if (key == 'd' && input == " "){
          move(10,0);
        }
        
        else if (key == 'r' && input == " "){
          changeColor_ball();
        }
     }
  }
}
Ball ball ;
void setup(){
  size(900,700);
  ball = new Ball(150,300,100);
}
void draw(){
  background(#C4F9FF);
  ball.draw_ball();
  ball.set_ball();

}
