package android.support.design.shape;

import android.support.design.internal.Experimental;

@Experimental("The shapes API is currently experimental and subject to change")
public class CutCornerTreatment
  extends CornerTreatment
{
  private final float a;
  
  public CutCornerTreatment(float paramFloat)
  {
    a = paramFloat;
  }
  
  public void getCornerPath(float paramFloat1, float paramFloat2, ShapePath paramShapePath)
  {
    paramShapePath.reset(0.0F, a * paramFloat2);
    double d1 = paramFloat1;
    double d2 = Math.sin(d1);
    double d3 = a;
    double d4 = paramFloat2;
    paramShapePath.lineTo((float)(d2 * d3 * d4), (float)(Math.cos(d1) * a * d4));
  }
}
