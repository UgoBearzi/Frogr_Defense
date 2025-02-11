class Tile extends Button{
  
  public Tile(){
    this.width = 50;
    this.height = 50;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(40, 128, 64);
    this.pressedColor = color(29, 94, 47);
    this.highlightColor = color(62, 207, 101);
    this.currentColor = buttonColor;
  }
  
  public Tile(int x, int y){
    this.width = 50;
    this.height = 50;
    this.x = x;
    this.y = y;
    this.buttonColor = color(40, 128, 64);
    this.pressedColor = color(29, 94, 47);
    this.highlightColor = color(62, 207, 101);
    this.currentColor = buttonColor;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
  }
  
}
