package android.support.design.shape;

import android.support.design.internal.Experimental;

@Experimental("The shapes API is currently experimental and subject to change")
public class RoundedCornerTreatment
  extends CornerTreatment
{
  private final float a;
  
  public RoundedCornerTreatment(float paramFloat)
  {
    a = paramFloat;
  }
  
  public void getCornerPath(float paramFloat1, float paramFloat2, ShapePath paramShapePath)
  {
    paramShapePath.reset(0.0F, a * paramFloat2);
    paramShapePath.addArc(0.0F, 0.0F, a * 2.0F * paramFloat2, a * 2.0F * paramFloat2, paramFloat1 + 180.0F, 90.0F);
  }
}
