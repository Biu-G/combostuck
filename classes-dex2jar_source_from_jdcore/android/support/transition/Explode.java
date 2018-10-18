package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.Map;

public class Explode
  extends Visibility
{
  private static final TimeInterpolator a = new DecelerateInterpolator();
  private static final TimeInterpolator i = new AccelerateInterpolator();
  private int[] j = new int[2];
  
  public Explode()
  {
    setPropagation(new CircularPropagation());
  }
  
  public Explode(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setPropagation(new CircularPropagation());
  }
  
  private static float a(float paramFloat1, float paramFloat2)
  {
    return (float)Math.sqrt(paramFloat1 * paramFloat1 + paramFloat2 * paramFloat2);
  }
  
  private static float a(View paramView, int paramInt1, int paramInt2)
  {
    paramInt1 = Math.max(paramInt1, paramView.getWidth() - paramInt1);
    paramInt2 = Math.max(paramInt2, paramView.getHeight() - paramInt2);
    return a(paramInt1, paramInt2);
  }
  
  private void a(View paramView, Rect paramRect, int[] paramArrayOfInt)
  {
    paramView.getLocationOnScreen(j);
    int n = j[0];
    int i1 = j[1];
    Rect localRect = getEpicenter();
    int k;
    int m;
    if (localRect == null)
    {
      k = paramView.getWidth() / 2 + n + Math.round(paramView.getTranslationX());
      m = paramView.getHeight() / 2 + i1 + Math.round(paramView.getTranslationY());
    }
    else
    {
      k = localRect.centerX();
      m = localRect.centerY();
    }
    int i2 = paramRect.centerX();
    int i3 = paramRect.centerY();
    float f3 = i2 - k;
    float f4 = i3 - m;
    float f2 = f3;
    float f1 = f4;
    if (f3 == 0.0F)
    {
      f2 = f3;
      f1 = f4;
      if (f4 == 0.0F)
      {
        f2 = (float)(Math.random() * 2.0D) - 1.0F;
        f1 = (float)(Math.random() * 2.0D) - 1.0F;
      }
    }
    f3 = a(f2, f1);
    f2 /= f3;
    f1 /= f3;
    f3 = a(paramView, k - n, m - i1);
    paramArrayOfInt[0] = Math.round(f2 * f3);
    paramArrayOfInt[1] = Math.round(f3 * f1);
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    View localView = view;
    localView.getLocationOnScreen(j);
    int k = j[0];
    int m = j[1];
    int n = localView.getWidth();
    int i1 = localView.getHeight();
    values.put("android:explode:screenBounds", new Rect(k, m, n + k, i1 + m));
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    super.captureEndValues(paramTransitionValues);
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    super.captureStartValues(paramTransitionValues);
    b(paramTransitionValues);
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    if (paramTransitionValues2 == null) {
      return null;
    }
    paramTransitionValues1 = (Rect)values.get("android:explode:screenBounds");
    float f1 = paramView.getTranslationX();
    float f2 = paramView.getTranslationY();
    a(paramViewGroup, paramTransitionValues1, j);
    float f3 = j[0];
    float f4 = j[1];
    return p.a(paramView, paramTransitionValues2, left, top, f1 + f3, f2 + f4, f1, f2, a);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    if (paramTransitionValues1 == null) {
      return null;
    }
    paramTransitionValues2 = (Rect)values.get("android:explode:screenBounds");
    int k = left;
    int m = top;
    float f3 = paramView.getTranslationX();
    float f4 = paramView.getTranslationY();
    int[] arrayOfInt = (int[])view.getTag(R.id.transition_position);
    float f1;
    float f2;
    if (arrayOfInt != null)
    {
      f1 = arrayOfInt[0] - left + f3;
      f2 = arrayOfInt[1] - top + f4;
      paramTransitionValues2.offsetTo(arrayOfInt[0], arrayOfInt[1]);
    }
    else
    {
      f1 = f3;
      f2 = f4;
    }
    a(paramViewGroup, paramTransitionValues2, j);
    return p.a(paramView, paramTransitionValues1, k, m, f3, f4, f1 + j[0], f2 + j[1], i);
  }
}
