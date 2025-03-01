class LabeledButton extends Button{

  String label;
  
  public LabeledButton(){
    super();
    this.label = "";
  }

  public LabeledButton(int width, int height, int x, int y, color buttonColor, color pressedColor, color highlightColor, String label){
    super(width, height, x, y, buttonColor, pressedColor, highlightColor);
    this.label = label;
  }
  
  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }


  public void show(){
    buttonStatus();
    changeColor();
    
    fill(currentColor);
    rect(x, y, width, height);

    textSize(12);
    textAlign(CENTER, CENTER);
    fill(0);
    text(getLabel(), x+width/2, y+height/2);
  }

}
