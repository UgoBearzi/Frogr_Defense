int tileSize = 50;
int rows = 28;
int columns = 20;
Tile[][] tiles = new Tile[rows][columns];

FlyEnemy enemy = new FlyEnemy(0,525);
public void setup(){
  size(1600, 1000);
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      tiles[i][j] = new Tile((i*tileSize), (j*tileSize));
    }
  }
  
  for(int i = 0; i < 10; i++){
    tiles[i][10] = new Road(i*tileSize,10*tileSize, Direction.RIGHT);
  }
  
  for(int i = 10; i < 12; i++){
    tiles[9][i] = new Road(9*tileSize,i*tileSize, Direction.DOWN);
  }
  
  for(int i = 9; i < 18; i++){
    tiles[i][12] = new Road(i*tileSize,12*tileSize, Direction.RIGHT);
  }
  
  for(int i = 9; i < 13; i++){
    tiles[17][i] = new Road(17*tileSize,i*tileSize, Direction.UP);
  }
  
  for(int i = 17; i < 28; i++){
    tiles[i][9] = new Road(i*tileSize,9*tileSize, Direction.RIGHT);
  }
  
  tiles[27][9] = new Tower(27*tileSize, 9*tileSize);
  
}

public void draw(){
  background(190);
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      tiles[i][j].show();
    }
  }
  
  enemy.show();
  
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      if(tiles[i][j] instanceof Road){
        ((Road)tiles[i][j]).changeEnemyDirection(enemy);
      }
    }
  }
  ((Tower)tiles[27][9]).takeDamage(enemy);
}
