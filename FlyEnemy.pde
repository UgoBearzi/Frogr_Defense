class FlyEnemy extends Enemy{
  
  public FlyEnemy(){
    super();
  }
  
  public FlyEnemy(int enemySize, int x, int y, int speed, int damage, int health, int reward){
    super(enemySize, x, y, speed, damage, health, reward);
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
  
  
  

}
