class Tile extends Button{

  public Tile(){
    super();
  }
  
  public Tile(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
  }
  
}
