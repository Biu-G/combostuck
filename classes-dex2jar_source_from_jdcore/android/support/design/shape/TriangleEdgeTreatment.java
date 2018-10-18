package android.support.design.shape;

import android.support.design.internal.Experimental;

@Experimental("The shapes API is currently experimental and subject to change")
public class TriangleEdgeTreatment
  extends EdgeTreatment
{
  private final float a;
  private final boolean b;
  
  public TriangleEdgeTreatment(float paramFloat, boolean paramBoolean)
  {
    a = paramFloat;
    b = paramBoolean;
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, ShapePath paramShapePath)
  {
    float f2 = paramFloat1 / 2.0F;
    paramShapePath.lineTo(f2 - a * paramFloat2, 0.0F);
    if (b) {}
    for (float f1 = a;; f1 = -a) {
      break;
    }
    paramShapePath.lineTo(f2, f1 * paramFloat2);
    paramShapePath.lineTo(f2 + a * paramFloat2, 0.0F);
    paramShapePath.lineTo(paramFloat1, 0.0F);
  }
}
