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
  
  // checks if the enemy is inside the Road tile
  public boolean isEnemyInside(Enemy enemy){
    return (enemy.getX() >= x && enemy.getY() >= y && (enemy.x + enemy.getEnemySize()) <= (x + width) && (enemy.getY() + enemy.getEnemySize()) <= (y + height));
  }
  
  // changes the enemy movement direction based on the direction given by the constructor
  public void changeEnemyDirection(Enemy enemy){
    if(isEnemyInside(enemy) && enemy.getIsVisible()){
      enemy.setMovementDirection(nextDirection);
    }
  }
  
}
