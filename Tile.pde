class Tile extends Button{

  public Tile(){
    super();
  }
  //  this.buttonColor = color(40, 128, 64);
  //  this.pressedColor = color(29, 94, 47);
  //  this.highlightColor = color(62, 207, 101);
  
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
