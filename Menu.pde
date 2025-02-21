class Menu{
  String title, currentMoneyString;
  LabeledButton startWaveButton, turretButton1;
  int startingMoney, currentMoney, turret1Cost;
  
  public Menu(){
    this.title = "";
    this.startWaveButton = new LabeledButton();
    this.turretButton1 = new LabeledButton();
    this.startingMoney = 0;
    this.currentMoney = startingMoney;
    this.turret1Cost = 0;
  }

  public Menu(String title, LabeledButton startWaveButton, LabeledButton turretButton1, int startingMoney, int turret1Cost){
    this.title = title;
    this.startWaveButton = startWaveButton;
    this.turretButton1 = turretButton1;
    this.startingMoney = startingMoney;
    this.currentMoney = startingMoney;
    this.turret1Cost = turret1Cost;
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

  public LabeledButton getTurretButton1() {
    return turretButton1;
  }

  public void setTurretButton1(LabeledButton turretButton1) {
    this.turretButton1 = turretButton1;
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

  public int getTurret1Cost() {
    return turret1Cost;
  }

  public void setTurret1Cost(int turret1Cost) {
    this.turret1Cost = turret1Cost;
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
    turretButton.show();
  }
  
  
}
