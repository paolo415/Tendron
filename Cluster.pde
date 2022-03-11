public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y)
  {
    double a=Math.random()*2*PI;
    for (int i=0; i<NUM_STEMS; i++) {
      Tendril bob=new Tendril(len, a, x, y);
      a=a+2*PI/7;
      bob.show();
    }
  }
}
