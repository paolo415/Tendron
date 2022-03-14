class Tendril
{
  public final static int SEG_LENGTH = 5; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments=len;
    myAngle=theta;
    myX=x;
    myY=y;
  }
  public void show()
  {
    int startX=myX;
    int startY=myY;
    int thick=13;
    int r=255;
    int g=100;
    int b=100;
    for (int i=0; i<myNumSegments; i++) {
      stroke(r,g,b);
      strokeWeight(thick);
      if(thick>1){
      thick=thick-1;}
      r=r-15;
      b=b-15;
      g=g-15;
      myAngle=myAngle+(Math.random()*0.4)-0.2;
      int endX=(int)(startX+Math.cos(myAngle)*SEG_LENGTH);
      int endY=(int)(startY+Math.sin(myAngle)*SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }
    if (myNumSegments>=10) {
      Cluster c = new Cluster(myNumSegments/3, startX, startY);
    }
  }
}
