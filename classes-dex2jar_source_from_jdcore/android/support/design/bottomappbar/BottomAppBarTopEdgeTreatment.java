package android.support.design.bottomappbar;

import android.support.design.shape.EdgeTreatment;
import android.support.design.shape.ShapePath;

public class BottomAppBarTopEdgeTreatment
  extends EdgeTreatment
{
  private float a;
  private float b;
  private float c;
  private float d;
  private float e;
  
  public BottomAppBarTopEdgeTreatment(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    b = paramFloat1;
    a = paramFloat2;
    d = paramFloat3;
    if (paramFloat3 >= 0.0F)
    {
      e = 0.0F;
      return;
    }
    throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
  }
  
  float a()
  {
    return e;
  }
  
  void a(float paramFloat)
  {
    e = paramFloat;
  }
  
  float b()
  {
    return d;
  }
  
  void b(float paramFloat)
  {
    d = paramFloat;
  }
  
  float c()
  {
    return c;
  }
  
  void c(float paramFloat)
  {
    c = paramFloat;
  }
  
  float d()
  {
    return b;
  }
  
  void d(float paramFloat)
  {
    b = paramFloat;
  }
  
  float e()
  {
    return a;
  }
  
  void e(float paramFloat)
  {
    a = paramFloat;
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, ShapePath paramShapePath)
  {
    if (c == 0.0F)
    {
      paramShapePath.lineTo(paramFloat1, 0.0F);
      return;
    }
    float f1 = (b * 2.0F + c) / 2.0F;
    float f2 = paramFloat2 * a;
    float f3 = paramFloat1 / 2.0F + e;
    paramFloat2 = d * paramFloat2 + (1.0F - paramFloat2) * f1;
    if (paramFloat2 / f1 >= 1.0F)
    {
      paramShapePath.lineTo(paramFloat1, 0.0F);
      return;
    }
    float f4 = f1 + f2;
    float f6 = paramFloat2 + f2;
    float f7 = (float)Math.sqrt(f4 * f4 - f6 * f6);
    f4 = f3 - f7;
    float f5 = f3 + f7;
    f6 = (float)Math.toDegrees(Math.atan(f7 / f6));
    f7 = 90.0F - f6;
    float f8 = f4 - f2;
    paramShapePath.lineTo(f8, 0.0F);
    float f9 = f2 * 2.0F;
    paramShapePath.addArc(f8, 0.0F, f4 + f2, f9, 270.0F, f6);
    paramShapePath.addArc(f3 - f1, -f1 - paramFloat2, f3 + f1, f1 - paramFloat2, 180.0F - f7, f7 * 2.0F - 180.0F);
    paramShapePath.addArc(f5 - f2, 0.0F, f5 + f2, f9, 270.0F - f6, f6);
    paramShapePath.lineTo(paramFloat1, 0.0F);
  }
}
