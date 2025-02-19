class Menu{
  String title;
  LabeledButton startWaveButton;
  int startingMoney, currentMoney;
  
  public Menu(){
    this.title = "";
    this.startWaveButton = new LabeledButton();
    this.startingMoney = 0;
    this.currentMoney = 0;
  }

  public Menu(String title, LabeledButton startWaveButton, int startingMoney, int currentMoney){
    this.title = title;
    this.startWaveButton = startWaveButton;
    this.startingMoney = startingMoney;
    this.currentMoney = currentMoney;
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
    textSize(12);
    textAlign(CENTER);
    fill(0);
    text(getTitle(), 1500, 100);

    startWaveButton.show();
  }
  
  
}
