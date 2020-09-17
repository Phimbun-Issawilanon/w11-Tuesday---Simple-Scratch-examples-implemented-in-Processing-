public class Ball{
  float position_x,  position_y;
  float size;
  float unit ;
  String input = " ";
  Ball(float pos_x, float pos_y, float size1){
    position_x = pos_x;
    position_y = pos_y;
    size = size1;
  }

  public void draw_ball(){
    circle(position_x,position_y,size); 
  }
  
  
  public void set_ball(){
     if(keyPressed){
        if (key == 'w' && input == " "){
          unit = -10;
          
        }
        
        else if (key == 's' && input == " "){
          unit = 10;
          
        }
  
        else if (key == 'a' && input == " "){
          unit = -10;
          
        }
        else if (key == 'd' && input == " "){
          unit = 10;
          
        }
        
        else if (key == 'r' && input == " "){
          
          
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
