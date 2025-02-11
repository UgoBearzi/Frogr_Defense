enum Direction{
  UP,
  RIGHT,
  LEFT,
  DOWN
}

class Road extends Tile{
  
  Direction nextDirection;
  
  public Road(){
    this.width = 50;
    this.height = 50;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(230, 228, 202);
    this.pressedColor = color(191, 187, 168);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    
    this.nextDirection = Direction.RIGHT;
  }
  
  public Road(int x, int y, Direction direction){
    this.width = 50;
    this.height = 50;
    this.x = x;
    this.y = y;
    this.buttonColor = color(230, 228, 202);
    this.pressedColor = color(191, 187, 168);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    this.nextDirection = direction;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
    
  }
  
  public boolean isEnemyInside(Enemy enemy){
    return (enemy.x >= x && enemy.y >= y && (enemy.x + enemy.enemySize) <= (x + width) && (enemy.y + enemy.enemySize) <= (y + height));
  }
  
  public void changeEnemyDirection(Enemy enemy){
    if(isEnemyInside(enemy)){
      enemy.setMovementDirection(nextDirection);
    }
  }
  
}
