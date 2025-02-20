class Menu{
  String title, currentMoneyString;
  LabeledButton startWaveButton;
  int startingMoney, currentMoney;
  
  public Menu(){
    this.title = "";
    this.startWaveButton = new LabeledButton();
    this.startingMoney = 0;
    this.currentMoney = startingMoney;
  }

  public Menu(String title, LabeledButton startWaveButton, int startingMoney){
    this.title = title;
    this.startWaveButton = startWaveButton;
    this.startingMoney = startingMoney;
    this.currentMoney = startingMoney;
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
  }
  
  
}
