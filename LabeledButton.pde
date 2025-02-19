class LabeledButton extends Button{

  String label;
  
  public LabeledButton(){
    super();
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
    
    textSize(12);
    textAlign(CENTER);
    fill(0);
    text(getLabel(), x+width/2, y+height/2);
    fill(currentColor);
    rect(x, y, width, height);
  }
