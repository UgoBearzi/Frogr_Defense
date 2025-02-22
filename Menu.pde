class Menu{
  String title, currentMoneyString;
  LabeledButton startWaveButton;
  int startingMoney, currentMoney;
  Turret turret1, turret2, turret3, turret4; 
  LabeledButton turretButton1, turretButton2, turretButton3, turretButton4;
  int turret1Cost, turret2Cost, turret3Cost, turret4Cost;
  
  public Menu(){
    this.title = "";
    this.startWaveButton = new LabeledButton();
    this.startingMoney = 0;
    this.currentMoney = startingMoney;
    this.turret1 = new Turret();
    this.turret2 = new Turret();
    this.turret3 = new Turret();
    this.turret4 = new Turret();
    this.turretButton1 = new LabeledButton();
    this.turretButton2 = new LabeledButton();
    this.turretButton3 = new LabeledButton();
    this.turretButton4 = new LabeledButton();
    this.turret1Cost = 0;
    this.turret2Cost = 0;
    this.turret3Cost = 0;
    this.turret4Cost = 0;
  }

  public Menu(String title, LabeledButton startWaveButton, int startingMoney, Turret turret1, Turret turret2, Turret turret3, Turret turret4,   
  LabeledButton turretButton1, LabeledButton turretButton2, LabeledButton turretButton3, LabeledButton turretButton4, 
  int turret1Cost, int turret2Cost, int turret3Cost, int turret4Cost){
    this.title = title;
    this.startWaveButton = startWaveButton;
    this.startingMoney = startingMoney;
    this.currentMoney = startingMoney;
    this.turret1 = turret1;
    this.turret2 = turret2;
    this.turret3 = turret3;
    this.turret4 = turret4;
    this.turretButton1 = turretButton1;
    this.turretButton2 = turretButton2;
    this.turretButton3 = turretButton3;
    this.turretButton4 = turretButton4;
    this.turret1Cost = turret1Cost;
    this.turret2Cost = turret2Cost;
    this.turret3Cost = turret3Cost;
    this.turret4Cost = turret4Cost;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public LabeledButton getStartWaveButton() {
    return startWaveButton;
  }

  public void setStartWaveButton(LabeledButton startWaveButton) {
    this.startWaveButton = startWaveButton;
  }

  public int getStartingMoney() {
    return startingMoney;
  }

  public void setStartingMoney(int startingMoney) {
    this.startingMoney = startingMoney;
  }

  public int getCurrentMoney() {
    return currentMoney;
  }

  public void setCurrentMoney(int currentMoney) {
    this.currentMoney = currentMoney;
  }

  public Turret getTurret1(){
    return turret1;
  }

  public void setTurret1(Turret turret1){
    this.turret1 = turret1;
  }

  public Turret getTurret2(){
    return turret2;
  }

  public void setTurret2(Turret turret2){
    this.turret2 = turret2;
  }

  public Turret getTurret3(){
    return turret3;
  }

  public void setTurret3(Turret turret3){
    this.turret3 = turret3;
  }

  public Turret getTurret4(){
    return turret4;
  }

  public void setTurret4(Turret turret4){
    this.turret4 = turret4;
  }

  public LabeledButton getTurretButton1() {
    return turretButton1;
  }

  public void setTurretButton1(LabeledButton turretButton1) {
    this.turretButton1 = turretButton1;
  }

  public LabeledButton getTurretButton2() {
    return turretButton2;
  }

  public void setTurretButton2(LabeledButton turretButton2) {
    this.turretButton2 = turretButton2;
  }

  public LabeledButton getTurretButton3() {
    return turretButton3;
  }

  public void setTurretButton3(LabeledButton turretButton3) {
    this.turretButton3 = turretButton3;
  }

  public LabeledButton getTurretButton4() {
    return turretButton4;
  }

  public void setTurretButton4(LabeledButton turretButton4) {
    this.turretButton4 = turretButton4;
  }

  public int getTurret1Cost() {
    return turret1Cost;
  }

  public void setTurret1Cost(int turret1Cost) {
    this.turret1Cost = turret1Cost;
  }

  public int getTurret2Cost() {
    return turret2Cost;
  }

  public void setTurret2Cost(int turret2Cost) {
    this.turret2Cost = turret2Cost;
  }

  public int getTurret3Cost() {
    return turret3Cost;
  }

  public void setTurret3Cost(int turret3Cost) {
    this.turret3Cost = turret3Cost;
  }

  public int getTurret4Cost() {
    return turret4Cost;
  }

  public void setTurret4Cost(int turret4Cost) {
    this.turret4Cost = turret4Cost;
  }

  public Turret getTurret1InGrid(int i, int j, int tileSize){
    Turret turretToPlace = new Turret(getTurret1().width,getTurret1().height,i*tileSize,j*tileSize, getTurret1().buttonColor, getTurret1().pressedColor, getTurret1().highlightColor, 
    getTurret1().bulletSize, getTurret1().bulletDamage, getTurret1().bulletSpeed, getTurret1().range, getTurret1().timeBetweenShots, getTurret1().turretColor);

    return turretToPlace;
  }

  public Turret getTurret2InGrid(int i, int j, int tileSize){
    Turret turretToPlace = new Turret(getTurret2().width,getTurret2().height,i*tileSize,j*tileSize, getTurret2().buttonColor, getTurret2().pressedColor, getTurret2().highlightColor, 
    getTurret2().bulletSize, getTurret2().bulletDamage, getTurret2().bulletSpeed, getTurret2().range, getTurret2().timeBetweenShots, getTurret2().turretColor);

    return turretToPlace;
  }

  public Turret getTurret3InGrid(int i, int j, int tileSize){
    Turret turretToPlace = new Turret(getTurret3().width,getTurret3().height,i*tileSize,j*tileSize, getTurret3().buttonColor, getTurret3().pressedColor, getTurret3().highlightColor, 
    getTurret3().bulletSize, getTurret3().bulletDamage, getTurret3().bulletSpeed, getTurret3().range, getTurret3().timeBetweenShots, getTurret3().turretColor);

    return turretToPlace;
  }

  public Turret getTurret4InGrid(int i, int j, int tileSize){
    Turret turretToPlace = new Turret(getTurret4().width,getTurret4().height,i*tileSize,j*tileSize, getTurret4().buttonColor, getTurret4().pressedColor, getTurret4().highlightColor, 
    getTurret4().bulletSize, getTurret4().bulletDamage, getTurret4().bulletSpeed, getTurret4().range, getTurret4().timeBetweenShots, getTurret4().turretColor);

    return turretToPlace;
  }

  public void show(){
    textSize(24);
    textAlign(CENTER);
    fill(0);
    text(getTitle(), 1500, 50);

    textSize(18);
    textAlign(CENTER);
    fill(0);
    text("Money:\n" + getCurrentMoney(), 1500, 80);

    startWaveButton.show();
    turretButton1.show();
    turretButton2.show();
    turretButton3.show();
    turretButton4.show();
  }
  
  
}
