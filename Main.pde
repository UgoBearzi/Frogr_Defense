int tileSize = 50;
int rows = 28;
int columns = 20;

int wave = 1;
boolean isWaveOn;
boolean hasGrabbedTurret1;
boolean hasGrabbedTurret2;
boolean hasGrabbedTurret3;
boolean hasGrabbedTurret4;

Tile[][] tiles = new Tile[rows][columns];
Spawner spawner = new Spawner(tileSize, tileSize, 0, 10*tileSize, color(247, 143, 87), color(161, 53, 53), color(247, 87, 87));

LabeledButton waveButton = new LabeledButton(100,50, 1450, 900, color(79, 214, 0), color(93, 255, 0), color(57, 156, 0), "Start Wave");

Turret turretFrogr = new Turret(50, 50, 0, 0, color(100), color(50), color(150), 10, 3, 5, 230, 500, color(14, 166, 0));
LabeledButton turretButton1 = new LabeledButton(50,50, 1425, 150, color(0, 222, 85), color(0, 153, 59), color(38, 255, 122), "Frogr");

Turret turretSprogr = new Turret(50, 50, 0, 0, color(100), color(50), color(150), 7, 1, 10, 170, 100, color(255, 222, 51));
LabeledButton turretButton2 = new LabeledButton(50,50, 1525, 150, color(255, 213, 0), color(219, 183, 0), color(255, 229, 94), "Sporgr");

Turret turretGrorg = new Turret(50, 50, 0, 0, color(100), color(50), color(150), 15, 6, 2, 100, 1000, color(245, 44, 44));
LabeledButton turretButton3 = new LabeledButton(50,50, 1425, 200, color(245, 44, 44), color(179, 36, 36), color(255, 94, 94), "Grorg");

Turret turretTorgr = new Turret(50, 50, 0, 0, color(100), color(50), color(150), 10, 6, 10, 500, 1500, color(76, 4, 201));
LabeledButton turretButton4 = new LabeledButton(50,50, 1525, 200, color(76, 4, 201), color(37, 0, 102), color(121, 51, 242), "Torgr");

Menu menu = new Menu("Frogr defense", waveButton, 2000, turretFrogr, turretSprogr, turretGrorg, turretTorgr, 
turretButton1, turretButton2, turretButton3, turretButton4, 100, 150, 250, 350);

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

public void setupEnemies(){
  // Wave 1
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new Enemy(30, 0, 500, 1, 1, 5, 50, color(0)));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new Enemy(30, -200, 500, 1, 1, 5, 50, color(0)));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies1, new Enemy(30, -400, 500, 1, 1, 5, 50, color(0)));
  // Wave 2
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies2, new Enemy(40, 0, 500, 1, 1, 5, 50, color(0)));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies2, new Enemy(40, -200, 500, 1, 1, 5, 50, color(0)));
  ((Spawner)tiles[0][10]).addEnemies(((Spawner)tiles[0][10]).enemies2, new Enemy(40, -400, 500, 1, 1, 5, 50, color(0)));
}

public void setup(){
  size(1600, 1000);

  isWaveOn = false;
  hasGrabbedTurret1 = false;
  hasGrabbedTurret2 = false;
  hasGrabbedTurret3 = false;
  hasGrabbedTurret4 = false;

  setupGrid();
  
  setupEnemies();
  
  
}

public ArrayList<Enemy> getCurrentWaveEnemies(){
  switch (wave) {
    case 1:
      return ((Spawner)tiles[0][10]).enemies1;
    case 2:
      return ((Spawner)tiles[0][10]).enemies2;
    default :
      return ((Spawner)tiles[0][10]).enemies1;
  }
}

public void showVictory(){
  fill(0, 255, 0, 25);
  rect(0,0, 1600, 1000);

  textSize(48);
  textAlign(CENTER, CENTER);
  fill(255);
  text("YOU WON!", 800, 500);
}

public void waveManager(){
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

  if(wave = 5){
    showVictory();
  }
}

public void rewardManager(){
  for(int i = 0; i < getCurrentWaveEnemies().size(); i++){
    if(getCurrentWaveEnemies().get(i).checkIfDead()){
      menu.setCurrentMoney(menu.getCurrentMoney() + getCurrentWaveEnemies().get(i).getReward());
      getCurrentWaveEnemies().get(i).setReward(0);
    }  
  }

}

public void buyTurret(){
  if(menu.getTurretButton1().getIsPressed() && menu.getCurrentMoney() >= menu.getTurret1Cost()){
    hasGrabbedTurret1 = true;
    hasGrabbedTurret2 = false;
    hasGrabbedTurret3 = false;
    hasGrabbedTurret4 = false;
  }

  if(hasGrabbedTurret1){
    fill(100,100,100,50);
    ellipse(mouseX, mouseY, menu.getTurret1().range, menu.getTurret1().range);
    for(int i = 0; i < rows; i++){
      for(int j = 0; j < columns; j++){
        if(tiles[i][j].getIsPressed() && tiles[i][j] instanceof Tile && !(tiles[i][j] instanceof Road || tiles[i][j] instanceof Spawner || tiles[i][j] instanceof Tower)){
          tiles[i][j] = menu.getTurret1InGrid(i,j,tileSize);
          menu.setCurrentMoney(menu.getCurrentMoney() - menu.getTurret1Cost());
          hasGrabbedTurret1 = false;
        }
      }
    }
  }

  if(menu.getTurretButton2().getIsPressed() && menu.getCurrentMoney() >= menu.getTurret2Cost()){
    hasGrabbedTurret2 = true;
    hasGrabbedTurret1 = false;
    hasGrabbedTurret3 = false;
    hasGrabbedTurret4 = false;
  }

  if(hasGrabbedTurret2){
    fill(100,100,100,50);
    ellipse(mouseX, mouseY, menu.getTurret2().range, menu.getTurret2().range);
    for(int i = 0; i < rows; i++){
      for(int j = 0; j < columns; j++){
        if(tiles[i][j].getIsPressed() && tiles[i][j] instanceof Tile && !(tiles[i][j] instanceof Road || tiles[i][j] instanceof Spawner || tiles[i][j] instanceof Tower)){
          tiles[i][j] = menu.getTurret2InGrid(i,j,tileSize);
          menu.setCurrentMoney(menu.getCurrentMoney() - menu.getTurret2Cost());
          hasGrabbedTurret2 = false;
        }
      }
    }
  }

  if(menu.getTurretButton3().getIsPressed() && menu.getCurrentMoney() >= menu.getTurret3Cost()){
    hasGrabbedTurret3 = true;
    hasGrabbedTurret1 = false;
    hasGrabbedTurret2 = false;
    hasGrabbedTurret4 = false;
  }

  if(hasGrabbedTurret3){
    fill(100,100,100,50);
    ellipse(mouseX, mouseY, menu.getTurret3().range, menu.getTurret3().range);
    for(int i = 0; i < rows; i++){
      for(int j = 0; j < columns; j++){
        if(tiles[i][j].getIsPressed() && tiles[i][j] instanceof Tile && !(tiles[i][j] instanceof Road || tiles[i][j] instanceof Spawner || tiles[i][j] instanceof Tower)){
          tiles[i][j] = menu.getTurret3InGrid(i,j,tileSize);
          menu.setCurrentMoney(menu.getCurrentMoney() - menu.getTurret3Cost());
          hasGrabbedTurret3 = false;
        }
      }
    }
  }

  if(menu.getTurretButton4().getIsPressed() && menu.getCurrentMoney() >= menu.getTurret4Cost()){
    hasGrabbedTurret4 = true;
    hasGrabbedTurret1 = false;
    hasGrabbedTurret2 = false;
    hasGrabbedTurret3 = false;
  }

  if(hasGrabbedTurret4){
    fill(100,100,100,50);
    ellipse(mouseX, mouseY, menu.getTurret4().range, menu.getTurret4().range);
    for(int i = 0; i < rows; i++){
      for(int j = 0; j < columns; j++){
        if(tiles[i][j].getIsPressed() && tiles[i][j] instanceof Tile && !(tiles[i][j] instanceof Road || tiles[i][j] instanceof Spawner || tiles[i][j] instanceof Tower)){
          tiles[i][j] = menu.getTurret4InGrid(i,j,tileSize);
          menu.setCurrentMoney(menu.getCurrentMoney() - menu.getTurret4Cost());
          hasGrabbedTurret4 = false;
        }
      }
    }
  }
}

public void showGameOver(){
  if(((Tower)tiles[27][9]).health <= 0){
    fill(255, 0, 0, 25);
    rect(0,0, 1600, 1000);

    textSize(48);
    textAlign(CENTER, CENTER);
    fill(255);
    text("GAME OVER", 800, 500);
  }
}

public void draw(){
  background(190);
  
  menu.show();
  
  

  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){   
      if(tiles[i][j] instanceof Turret){
        for(int l = 0; l < getCurrentWaveEnemies().size(); l++){
          ((Turret)tiles[i][j]).moveBullet(getCurrentWaveEnemies().get(l));
        }
      }

      if(tiles[i][j] instanceof Road && tiles[0][10] instanceof Spawner){
        for(int l = 0; l < getCurrentWaveEnemies().size(); l++){
          ((Road)tiles[i][j]).changeEnemyDirection(getCurrentWaveEnemies().get(l));
        }
      }
    }
  }

  for(int i = 0; i < getCurrentWaveEnemies().size(); i++){
    if(tiles[27][9] instanceof Tower){
      ((Tower)tiles[27][9]).takeDamage(getCurrentWaveEnemies().get(i));
    }
  }

  for(int i = 0; i < rows; i++){
    for(int j = 0; j < columns; j++){
      tiles[i][j].show();
    }
  }

  tiles[0][10].show();

  buyTurret();
  waveManager();
  rewardManager();
  showGameOver();
}
