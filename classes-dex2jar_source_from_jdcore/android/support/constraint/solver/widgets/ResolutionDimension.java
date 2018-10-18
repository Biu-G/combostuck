package android.support.constraint.solver.widgets;

public class ResolutionDimension
  extends ResolutionNode
{
  float a = 0.0F;
  
  public ResolutionDimension() {}
  
  public void remove()
  {
    i = 2;
  }
  
  public void reset()
  {
    super.reset();
    a = 0.0F;
  }
  
  public void resolve(int paramInt)
  {
    if ((i == 0) || (a != paramInt))
    {
      a = paramInt;
      if (i == 1) {
        invalidate();
      }
      didResolve();
    }
  }
}
