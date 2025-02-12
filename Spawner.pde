import java.util.ArrayList;

class Spawner extends Tile{
 
  int spawnLocationX;
  int spawnLocationY;
  ArrayList<Enemy> spawnedEnemies;
  
  public Spawner(){
    this.width = 50;
    this.height = 50;
    this.x = 0;
    this.y = 0;
    this.buttonColor = color(250, 162, 162);
    this.pressedColor = color(184, 123, 123);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    this.spawnLocationX = x+ width/2;
    this.spawnLocationY = y + height/2;
    this.spawnedEnemies = new ArrayList<Enemy>();
  }
  
  public Spawner(int x, int y){
    this.width = 50;
    this.height = 50;
    this.x = x;
    this.y = y;
    this.buttonColor = color(250, 162, 162);
    this.pressedColor = color(184, 123, 123);
    this.highlightColor = color(209, 0, 0);
    this.currentColor = buttonColor;
    this.spawnLocationX = x+ width/2;
    this.spawnLocationY = y + height/2;
    this.spawnedEnemies = new ArrayList<Enemy>();
  }
  
  public void showEnemies(){
    for(int i = 0; i < spawnedEnemies.size(); i++){
      spawnedEnemies.get(i).show();  
    }
  }

  public void show(){
    buttonStatus();
    changeColor();
    showEnemies();
    
    fill(currentColor);
    rect(x, y, width, height);
  }
  
  public void addEnemies(Enemy enemy1, Enemy enemy2, Enemy enemy3, int numberOfEnemies){
    int randomNumber = 0;
    for(int i = 0; i < numberOfEnemies; i++){
      randomNumber = (int)(Math.random() * 3);
      switch(randomNumber){
        case 0:
          this.spawnedEnemies.add(enemy1);
          break;
        case 1:
          this.spawnedEnemies.add(enemy2);
          break;
        case 2:
          this.spawnedEnemies.add(enemy3);
          break;
      }
    }
    
  }
  
}
