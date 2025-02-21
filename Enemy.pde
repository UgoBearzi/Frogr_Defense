abstract class Enemy{
  protected int x, y, enemySize;
  protected int speed;
  protected int damage;
  protected int health;
  protected int reward;
  protected boolean isVisible;
  protected Direction movementDirection;
  
  public Enemy(){
    this.enemySize = 0;
    this.x = 0;
    this.y = 0;
    this.speed = 0;
    this.damage = 0;
    this.health = 0;
    this.reward = 0;
    this.isVisible = false;
    this.movementDirection = Direction.RIGHT;
  }
  
  public Enemy(int enemySize, int x, int y, int speed, int damage, int health, int reward){
    this.enemySize = enemySize;
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.damage = damage;
    this.health = health;
    this.reward = reward;
    this.isVisible = false;
    this.movementDirection = Direction.RIGHT;
  }

  public int getEnemySize(){
    return enemySize;
  }

  public void setEnemySize(int enemySize){
    this.enemySize = enemySize;
  }

  public int getX(){
    return x;
  }

  public void setX(int x){
    this.x = x;
  }

  public int getY(){
    return y;
  }

  public void setY(int y){
    this.y = y;
  }

  public int getSpeed(){
    return speed;
  }

  public void setSpeed(int speed){
    this.speed = speed;
  }

  public int getDamage(){
    return damage;
  }

  public void setDamage(int damage){
    this.damage = damage;
  }

  public int getHealth(){
    return health;
  }

  public void setHealth(int health){
    this.health = health;
  }

  public int getReward(){
    return reward;
  }

  public void setReward(int reward){
    this.reward = reward;
  }

  public boolean getIsVisible(){
    return isVisible;
  }

  public void setIsVisible(boolean isVisible){
    this.isVisible = isVisible;
  }

  public Direction getMovementDirection(){
    return movementDirection;
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
    health -= externalDamage;
  }
  
  public boolean checkIfDead(){
    return health <= 0;
  }

}
