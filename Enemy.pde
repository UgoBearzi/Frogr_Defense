public class Enemy{
  protected int x, y, enemySize;
  protected int speed;
  protected int damage;
  protected int health;
  protected int reward;
  protected boolean isVisible;
  protected Direction movementDirection;
  protected color enemyColor;
  
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
    this.enemyColor = color(0);
  }
  
  public Enemy(int enemySize, int x, int y, int speed, int damage, int health, int reward, color enemyColor){
    this.enemySize = enemySize;
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.damage = damage;
    this.health = health;
    this.reward = reward;
    this.isVisible = false;
    this.movementDirection = Direction.RIGHT;
    this.enemyColor = enemyColor;
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
  
  public void move(){
    switch(movementDirection){
      case UP:
        y -= getSpeed();
        break;
      case RIGHT:
        x += getSpeed();
        break;
      case LEFT:
        x -= getSpeed();
        break;
      case DOWN:
        y += getSpeed();
        break;
    }
  }

  //for some reason it dosent work if i use setHealth(extenalDamage)
  public void takeDamage(int externalDamage){
    health -= externalDamage;
  }
  
  public boolean checkIfDead(){
    return getHealth() <= 0;
  }

  public void show(){   
    if(!checkIfDead()){
      setIsVisible(true);
      fill(enemyColor);
      rect(getX(), getY(), getEnemySize(), getEnemySize());
      fill(255);
      rect(getX()-getEnemySize()/2, getY()-getEnemySize()/2, getEnemySize()/2, getEnemySize()/2);
      rect(getX()+getEnemySize(), getY()-getEnemySize()/2, getEnemySize()/2, getEnemySize()/2);
      move();
    }else{
      setIsVisible(false);
    }
  }

}
