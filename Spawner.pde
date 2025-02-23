import java.util.ArrayList;

class Spawner extends Tile{
 
  // every arrayList corresponds to a wave
  ArrayList<Enemy> enemies1;
  ArrayList<Enemy> enemies2;
  ArrayList<Enemy> enemies3;
  ArrayList<Enemy> enemies4;
  ArrayList<Enemy> enemies5;
  
  public Spawner(){
    super();
    this.enemies1 = new ArrayList<Enemy>();
    this.enemies2 = new ArrayList<Enemy>();
    this.enemies3 = new ArrayList<Enemy>();
    this.enemies4 = new ArrayList<Enemy>();
    this.enemies5 = new ArrayList<Enemy>();
  }
  
  public Spawner(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.enemies1 = new ArrayList<Enemy>();
    this.enemies2 = new ArrayList<Enemy>();
    this.enemies3 = new ArrayList<Enemy>();
    this.enemies4 = new ArrayList<Enemy>();
    this.enemies5 = new ArrayList<Enemy>();
  }
  
  public void showEnemies(ArrayList<Enemy> enemiesList){
    for(int i = 0; i < enemiesList.size(); i++){
      enemiesList.get(i).show();  
    }
  }

  // checks if every enemy in a given wave is dead
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
  
  public void addEnemies(ArrayList<Enemy> enemiesList, Enemy enemy){
    enemiesList.add(enemy);
  }
  
}
