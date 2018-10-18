package android.support.design.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

public class MatrixEvaluator
  implements TypeEvaluator<Matrix>
{
  private final float[] a = new float[9];
  private final float[] b = new float[9];
  private final Matrix c = new Matrix();
  
  public MatrixEvaluator() {}
  
  public Matrix evaluate(float paramFloat, Matrix paramMatrix1, Matrix paramMatrix2)
  {
    paramMatrix1.getValues(a);
    paramMatrix2.getValues(b);
    int i = 0;
    while (i < 9)
    {
      float f1 = b[i];
      float f2 = a[i];
      b[i] = (a[i] + (f1 - f2) * paramFloat);
      i += 1;
    }
    c.setValues(b);
    return c;
  }
}
