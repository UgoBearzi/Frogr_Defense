class Tower extends Tile{
  
  int health;
  boolean isDead;
  
  public Tower(){
    super();
    this.health = 0;
    this.isDead = false;
  }
  
  public Tower(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor, int health){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.health = health;
    this.isDead = false;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
    
    if(!isDead){
      fill(255, 228, 153);
      rect(x+width/4, y+height/4, width/2, height/2);
      fill(222, 0, 0);
      triangle(x+5, y+12, x+45, y+12, x+25, y-5);
    }
  }
  
  public boolean isEnemyInside(Enemy enemy){
    return (enemy.getX() >= x && enemy.getY() >= y && (enemy.x + enemy.getEnemySize()) <= (x + width) && (enemy.getY() + enemy.getEnemySize()) <= (y + height));
  }
  
  public void takeDamage(Enemy enemy){
    if(isEnemyInside(enemy) && enemy.getHealth() > 0 && enemy.getIsVisible()){
      health -= enemy.getDamage();
      enemy.takeDamage(100);
    }
    if(health <= 0){
      isDead = true;
    }
  }
  
}
