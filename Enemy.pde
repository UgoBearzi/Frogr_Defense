abstract class Enemy{
  int x, y, enemySize;
  int speed;
  int damage;
  int health;
  Direction movementDirection;
  
  public Enemy(){
    this.enemySize = 40;
    this.x = 0;
    this.y = 0;
    this.speed = 5;
    this.damage = 1;
    this.health = 5;
    this.movementDirection = Direction.RIGHT;
  }
  public void setMovementDirection(Direction direction){
    this.movementDirection = direction;
  }
  
  public abstract void show();
  
  public void move(){
    switch(movementDirection){
      case UP:
        y -= speed;
        break;
      case RIGHT:
        x += speed;
        break;
      case LEFT:
        x -= speed;
        break;
      case DOWN:
        y += speed;
        break;
    }
  }
  
  public void takeDamage(int externalDamage){
    this.health -= externalDamage;
  }
  
  public boolean checkIfDead(){
    return health <= 0;
  }
  
  public abstract void death();

}
