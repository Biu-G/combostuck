package android.support.v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

class b
  implements Interpolator
{
  private final float[] a;
  private final float[] b;
  
  b(float paramFloat1, float paramFloat2)
  {
    this(a(paramFloat1, paramFloat2));
  }
  
  b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this(a(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
  }
  
  b(Path paramPath)
  {
    paramPath = new PathMeasure(paramPath, false);
    float f = paramPath.getLength();
    int j = (int)(f / 0.002F) + 1;
    a = new float[j];
    b = new float[j];
    float[] arrayOfFloat = new float[2];
    int i = 0;
    while (i < j)
    {
      paramPath.getPosTan(i * f / (j - 1), arrayOfFloat, null);
      a[i] = arrayOfFloat[0];
      b[i] = arrayOfFloat[1];
      i += 1;
    }
  }
  
  private static Path a(float paramFloat1, float paramFloat2)
  {
    Path localPath = new Path();
    localPath.moveTo(0.0F, 0.0F);
    localPath.quadTo(paramFloat1, paramFloat2, 1.0F, 1.0F);
    return localPath;
  }
  
  private static Path a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Path localPath = new Path();
    localPath.moveTo(0.0F, 0.0F);
    localPath.cubicTo(paramFloat1, paramFloat2, paramFloat3, paramFloat4, 1.0F, 1.0F);
    return localPath;
  }
  
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      return 0.0F;
    }
    if (paramFloat >= 1.0F) {
      return 1.0F;
    }
    int j = 0;
    int i = a.length - 1;
    while (i - j > 1)
    {
      int k = (j + i) / 2;
      if (paramFloat < a[k]) {
        i = k;
      } else {
        j = k;
      }
    }
    float f = a[i] - a[j];
    if (f == 0.0F) {
      return b[j];
    }
    paramFloat = (paramFloat - a[j]) / f;
    f = b[j];
    return f + paramFloat * (b[i] - f);
  }
}
