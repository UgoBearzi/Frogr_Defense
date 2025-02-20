enum Direction{
  UP,
  RIGHT,
  LEFT,
  DOWN
}

class Road extends Tile{
  
  Direction nextDirection;
  
  public Road(){
    super();
    this.nextDirection = Direction.RIGHT;
  }
  
  public Road(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor, Direction nextDirection){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.nextDirection = nextDirection;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
  }
  
  public boolean isEnemyInside(Enemy enemy){
    return (enemy.getX() >= x && enemy.getY() >= y && (enemy.x + enemy.getEnemySize()) <= (x + width) && (enemy.getY() + enemy.getEnemySize()) <= (y + height));
  }
  
  public void changeEnemyDirection(Enemy enemy){
    if(isEnemyInside(enemy)){
      enemy.setMovementDirection(nextDirection);
    }
  }
  
}
