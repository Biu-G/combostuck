package android.support.v4.view.animation;

import android.view.animation.Interpolator;

abstract class a
  implements Interpolator
{
  private final float[] a;
  private final float b;
  
  protected a(float[] paramArrayOfFloat)
  {
    a = paramArrayOfFloat;
    b = (1.0F / (a.length - 1));
  }
  
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat >= 1.0F) {
      return 1.0F;
    }
    if (paramFloat <= 0.0F) {
      return 0.0F;
    }
    int i = Math.min((int)((a.length - 1) * paramFloat), a.length - 2);
    paramFloat = (paramFloat - i * b) / b;
    return a[i] + paramFloat * (a[(i + 1)] - a[i]);
  }
}
