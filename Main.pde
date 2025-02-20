int tileSize = 50;
int rows = 28;
int columns = 20;

int wave = 1;
boolean isWaveOn;

Tile[][] tiles = new Tile[rows][columns];
Spawner spawner = new Spawner(tileSize, tileSize, 0, 10*tileSize, color(247, 143, 87), color(161, 53, 53), color(247, 87, 87));


LabeledButton waveButton = new LabeledButton(100,50, 1450, 900, color(79, 214, 0), color(93, 255, 0), color(57, 156, 0), "Start Wave");
Menu menu = new Menu("Frogr defense", waveButton, 100);

public void setupGrid(){
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      tiles[i][j] = new Tile(tileSize, tileSize, (i*tileSize), (j*tileSize), color(40, 168, 64), color(74, 237, 105), color(28, 117, 45));
    }
  }
  
  for(int i = 0; i < 10; i++){
    tiles[i][10] = new Road(tileSize, tileSize, (i*tileSize), (10*tileSize), color(255, 235, 153), color(156, 90, 90), color(247, 148, 148), Direction.RIGHT);
  }
  
  tiles[0][10] = spawner;
  
  for(int i = 10; i < 12; i++){
    tiles[9][i] = new Road(tileSize, tileSize, (9*tileSize), (i*tileSize), color(255, 235, 153), color(156, 90, 90), color(247, 148, 148), Direction.DOWN);
  }
  
  for(int i = 9; i < 18; i++){
    tiles[i][12] = new Road(tileSize, tileSize, (i*tileSize), (12*tileSize), color(255, 235, 153), color(156, 90, 90), color(247, 148, 148), Direction.RIGHT);
  }
  
  for(int i = 9; i < 13; i++){
    tiles[17][i] = new Road(tileSize, tileSize, (17*tileSize), (i*tileSize), color(255, 235, 153), color(156, 90, 90), color(247, 148, 148), Direction.UP);
  }
  
  for(int i = 17; i < 28; i++){
    tiles[i][9] = new Road(tileSize, tileSize, (i*tileSize), (9*tileSize), color(255, 235, 153), color(156, 90, 90), color(247, 148, 148), Direction.RIGHT);
  }
  
  tiles[27][9] = new Tower(tileSize, tileSize, 27*tileSize, 9*tileSize, color(40, 168, 64), color(74, 237, 105), color(28, 117, 45), 5);
}

public void setup(){
  size(1600, 1000);

  isWaveOn = false;

  setupGrid();
  
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new FlyEnemy(30, 0, 500, 1, 1, 5));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new FlyEnemy(30, -200, 500, 1, 1, 5));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new FlyEnemy(30, -400, 500, 1, 1, 5));
  
}

public ArrayList<Enemy> getCurrentWaveEnemies(){
  switch (wave) {
    case 1;
      return ((Spawner)tiles[0][10]).enemies1;
      break;
    case 2:
      return ((Spawner)tiles[0][10]).enemies2;
      break;
  }
}

public void waveLogic(){
  if(menu.getStartWaveButton().getIsPressed()){
    isWaveOn = true;
  }

  if (((Spawner)tiles[0][10]).areAllEnemiesDead(getCurrentWaveEnemies())) {
    isWaveOn = false;
    wave += 1;
  }

  if(isWaveOn){
    ((Spawner)tiles[0][10]).showEnemies(getCurrentWaveEnemies());
  }
}

public void draw(){
  background(190);
  
  menu.show();
  
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      tiles[i][j].show();
    }
  }

  tiles[0][10].show();
  
  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      if(tiles[i][j] instanceof Road && tiles[0][10] instanceof Spawner){
        for(int l = 0; l < ((Spawner)tiles[0][10]).enemies.size(); l++){
          ((Road)tiles[i][j]).changeEnemyDirection(((Spawner)tiles[0][10]).enemies.get(l));
        }
      }
    }
  }
  
  for(int i = 0; i < ((Spawner)tiles[0][10]).enemies.size(); i++){
    if(tiles[27][9] instanceof Tower && tiles[0][10] instanceof Spawner){
      ((Tower)tiles[27][9]).takeDamage(((Spawner)tiles[0][10]).enemies.get(i));
    }
  }

  waveLogic();
}
