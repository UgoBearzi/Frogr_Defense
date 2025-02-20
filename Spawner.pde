import java.util.ArrayList;

class Spawner extends Tile{
 
  ArrayList<Enemy> enemies;
  
  public Spawner(){
    super();
    this.enemies = new ArrayList<Enemy>();
  }
  
  public Spawner(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.enemies = new ArrayList<Enemy>();
  }
  
  public void showEnemies(){
    for(int i = 0; i < enemies.size(); i++){
      enemies.get(i).show();  
    }
  }

  public boolean areAllEnemiesDead(ArrayList<Enemy> enemiesList){
    boolean areAllDead = true;
    for(int i = 0; i < enemiesList.size(); i++){
      if(!enemiesList.get(i).checkIfDead()){
        areAllDead = false;
      }
    }

    return areAllDead;
  }

  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);
  }
  
  public void addEnemies(Enemy enemy){
    enemies.add(enemy);
  }
  
}
