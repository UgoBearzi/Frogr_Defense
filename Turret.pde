class Turret extends Tile{
  int bulletX;
  int bulletY;
  int bulletSize, bulletDamage, bulletSpeed;
  int cost, range;
  long startTimeBullet;
  long timeBetweenShots;
  color turretColor;

  public Turret(){
    super();
    this.bulletX = 0;
    this.bulletY = 0;
    this.bulletSize = 0;
    this.bulletDamage = 0;
    this.bulletSpeed = 0;
    this.range = 0;
    this.startTimeBullet = System.currentTimeMillis();
    this.timeBetweenShots = 0;
    this.turretColor = color(0);
  }
  
  public Turret(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor, int bulletSize, int bulletDamage, int bulletSpeed, int range, long timeBetweenShots, color turretColor){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.bulletX = x + width/2;
    this.bulletY = y + width/2;
    this.bulletSize = bulletSize;
    this.bulletDamage = bulletDamage;
    this.bulletSpeed = bulletSpeed;
    this.range = range;
    this.startTimeBullet = System.currentTimeMillis();
    this.timeBetweenShots = timeBetweenShots;
    this.turretColor = turretColor;
  }

  // puts startTimeBullet to the current time to essentally reset it
  public void resetStartTimeBullet(){
    startTimeBullet = System.currentTimeMillis();
  }

  // checks if the current time minus the starting point in time is greater that the time between shots, if true it can shoot again
  public boolean canFireNextShot(){
    return System.currentTimeMillis() - startTimeBullet >= timeBetweenShots;
  }

  // checks if the enemy is inside the range of the turret
  public boolean isEnemyInside(Enemy enemy){
    return (enemy.getX() >= x-range && enemy.getY() >= y-range && (enemy.x + enemy.getEnemySize()) <= (x+range) && (enemy.getY() + enemy.getEnemySize()) <= (y+range));
  }

  // with a more accurate formula checks if the bullet is inside the enemy
  public boolean isBulletInsideEnemy(Enemy enemy){
    return (bulletX >= enemy.getX() && bulletX <= enemy.getX() + enemy.getEnemySize() || 
    enemy.getX() >= bulletX && enemy.getX() <= bulletX + bulletSize) && 
    (bulletY > enemy.getY() && bulletY < enemy.getY() + enemy.getEnemySize() || 
    enemy.getY() >= bulletY && enemy.getY() < bulletY + bulletSize);
  }


  // moves the bullet towards the enmy
  public void moveBullet(Enemy enemy){
    float deltaX = enemy.getX() - bulletX;
    float deltaY = enemy.getY() - bulletY;
    float angle = (float)Math.atan2(deltaY, deltaX);
    
    if(isEnemyInside(enemy) && enemy.getIsVisible() && canFireNextShot()){
        bulletX += bulletSpeed * Math.cos(angle);
        bulletY += bulletSpeed * Math.sin(angle);
    }

    //damages the enemy if the bullet is inside the enemy
    if(isBulletInsideEnemy(enemy) && enemy.getIsVisible()){
        enemy.setHealth(enemy.getHealth() - bulletDamage);
        bulletX = x + width/2;
        bulletY = y + width/2;
        resetStartTimeBullet();
    }
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);

    fill(100);
    rect(bulletX, bulletY, bulletSize, bulletSize);

    fill(255);
    rect(x+width/4, y+height/2, width/2, height/4);
    fill(turretColor);
    rect(x+width/4, y+height/4, width/2, height/4);
    rect(x+width/4, y+width/6, width/6, height/6);
    rect(x+width/2, y+width/6, width/6, height/6);
    fill(0);
    rect(x+width/4, y+width/6, width/8, height/8);
    rect(x+width/2, y+width/6, width/8, height/8);
    

  }
  
}