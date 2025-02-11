class FlyEnemy extends Enemy{
  
  public FlyEnemy(){
    this.enemySize = 30;
    this.x = 0;
    this.y = 0;
    this.speed = 5;
    this.damage = 1;
    this.health = 5;
    this.movementDirection = Direction.RIGHT;
  }
  
  public FlyEnemy(int x, int y){
    this.enemySize = 30;
    this.x = x-(enemySize/2);
    this.y = y-(enemySize/2);
    this.speed = 1;
    this.damage = 1;
    this.health = 5;
    this.movementDirection = Direction.RIGHT;
  }
  
  public void show(){
    if(!checkIfDead()){
      fill(10);
      rect(x, y, enemySize, enemySize);
      fill(255);
      rect(x-enemySize/2, y-enemySize/2, enemySize/2, enemySize/2);
      rect(x+enemySize, y-enemySize/2, enemySize/2, enemySize/2);
      move();
    }
  }
  
  public void death(){
    if(checkIfDead()){
      damage = 0;
      speed = 0;
    }
  }
  
  
  

}
