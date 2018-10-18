package android.support.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

class l
  implements TypeEvaluator<Rect>
{
  private Rect a;
  
  l() {}
  
  l(Rect paramRect)
  {
    a = paramRect;
  }
  
  public Rect a(float paramFloat, Rect paramRect1, Rect paramRect2)
  {
    int i = left + (int)((left - left) * paramFloat);
    int j = top + (int)((top - top) * paramFloat);
    int k = right + (int)((right - right) * paramFloat);
    int m = bottom + (int)((bottom - bottom) * paramFloat);
    if (a == null) {
      return new Rect(i, j, k, m);
    }
    a.set(i, j, k, m);
    return a;
  }
}
