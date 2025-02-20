class Button{
  protected int x, y, width, height;
  protected color currentColor, buttonColor, pressedColor, highlightColor;
  protected boolean isPressed, isOver;
  
  public Button(){
    this.width = 0;
    this.height = 0;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(0);
    this.pressedColor = color(0);
    this.highlightColor = color(0);
    this.currentColor = buttonColor;
    this.isPressed = false;
    this.isOver = false;
  }

  public Button(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor){
    this.width = width;
    this.height = height;
    this.x = x;
    this.y = y;
    this.buttonColor = buttonColor;
    this.pressedColor = pressedColor;
    this.highlightColor = highlightColor;
    this.currentColor = buttonColor;
    this.isPressed = false;
    this.isOver = false;
  }
  
  public boolean getIsPressed(){
    return isPressed;
  }
  
  public void setIsPressed(boolean isPressed){
    this.isPressed = isPressed;
  }
  
  public boolean getIsOver(){
    return isOver;
  }
  
  public void setIsOver(boolean isOver){
    this.isOver = isOver;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
  }

  public void buttonStatus(){
    if(!mousePressed){
      setIsPressed(false);
    }
    if(mouseX >= x && mouseX <= x + width && mouseY >= y && mouseY <= y + height){
      setIsOver(true);
      if(mousePressed){
        setIsPressed(true);
      }
    }else{
      setIsOver(false);
    }
    
  }
  
  public void changeColor(){
    if(getIsPressed() && getIsOver()){
      this.currentColor = pressedColor;
    }else if(!getIsPressed() && getIsOver()){
      this.currentColor = highlightColor;
    }else{
      this.currentColor = buttonColor;
    }
  }
  
}
