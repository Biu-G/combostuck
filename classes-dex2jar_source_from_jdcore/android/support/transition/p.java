package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;

class p
{
  static Animator a(View paramView, TransitionValues paramTransitionValues, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, TimeInterpolator paramTimeInterpolator)
  {
    float f1 = paramView.getTranslationX();
    float f2 = paramView.getTranslationY();
    Object localObject = (int[])view.getTag(R.id.transition_position);
    if (localObject != null)
    {
      paramFloat1 = localObject[0] - paramInt1 + f1;
      paramFloat2 = localObject[1] - paramInt2 + f2;
    }
    int i = Math.round(paramFloat1 - f1);
    int j = Math.round(paramFloat2 - f2);
    paramView.setTranslationX(paramFloat1);
    paramView.setTranslationY(paramFloat2);
    if ((paramFloat1 == paramFloat3) && (paramFloat2 == paramFloat4)) {
      return null;
    }
    localObject = ObjectAnimator.ofPropertyValuesHolder(paramView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.TRANSLATION_X, new float[] { paramFloat1, paramFloat3 }), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[] { paramFloat2, paramFloat4 }) });
    paramView = new a(paramView, view, paramInt1 + i, paramInt2 + j, f1, f2);
    ((ObjectAnimator)localObject).addListener(paramView);
    a.a((Animator)localObject, paramView);
    ((ObjectAnimator)localObject).setInterpolator(paramTimeInterpolator);
    return localObject;
  }
  
  private static class a
    extends AnimatorListenerAdapter
  {
    private final View a;
    private final View b;
    private final int c;
    private final int d;
    private int[] e;
    private float f;
    private float g;
    private final float h;
    private final float i;
    
    a(View paramView1, View paramView2, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
    {
      b = paramView1;
      a = paramView2;
      c = (paramInt1 - Math.round(b.getTranslationX()));
      d = (paramInt2 - Math.round(b.getTranslationY()));
      h = paramFloat1;
      i = paramFloat2;
      e = ((int[])a.getTag(R.id.transition_position));
      if (e != null) {
        a.setTag(R.id.transition_position, null);
      }
    }
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      if (e == null) {
        e = new int[2];
      }
      e[0] = Math.round(c + b.getTranslationX());
      e[1] = Math.round(d + b.getTranslationY());
      a.setTag(R.id.transition_position, e);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      b.setTranslationX(h);
      b.setTranslationY(i);
    }
    
    public void onAnimationPause(Animator paramAnimator)
    {
      f = b.getTranslationX();
      g = b.getTranslationY();
      b.setTranslationX(h);
      b.setTranslationY(i);
    }
    
    public void onAnimationResume(Animator paramAnimator)
    {
      b.setTranslationX(f);
      b.setTranslationY(g);
    }
  }
}
