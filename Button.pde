class Button{
  protected int x, y, width, height;
  protected color currentColor, buttonColor, pressedColor, highlightColor;
  protected boolean isPressed, isOver;
  
  public Button(){
    this.width = 100;
    this.height = 50;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(100,100,100);
    this.pressedColor = color(50,50,50);
    this.highlightColor = color(150,150,150);
    this.currentColor = buttonColor;
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
