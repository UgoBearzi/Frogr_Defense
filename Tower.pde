class Tower extends Tile{
  
  int health;
  boolean isDead;
  
  public Tower(){
    this.width = 50;
    this.height = 50;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(230, 228, 202);
    this.pressedColor = color(191, 187, 168);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    this.health = 2;
    this.isDead = false;
  }
  
  public Tower(int x, int y){
    this.width = 50;
    this.height = 50;
    this.x = x;
    this.y = y;
    this.buttonColor = color(230, 228, 202);
    this.pressedColor = color(191, 187, 168);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    this.health = 2;
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
    return (enemy.x >= x && enemy.y >= y && (enemy.x + enemy.enemySize) <= (x + width) && (enemy.y + enemy.enemySize) <= (y + height));
  }
  
  public void takeDamage(Enemy enemy){
    if(isEnemyInside(enemy) && enemy.health > 0){
      health -= enemy.damage;
      enemy.takeDamage(100);
    }
    if(health <= 0){
      isDead = true;
    }
  }
  
}
