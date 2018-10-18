package android.support.design.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.design.animation.AnimationUtils;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;

public class HideBottomViewOnScrollBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  protected static final int ENTER_ANIMATION_DURATION = 225;
  protected static final int EXIT_ANIMATION_DURATION = 175;
  private int a = 0;
  private int b = 2;
  private ViewPropertyAnimator c;
  
  public HideBottomViewOnScrollBehavior() {}
  
  public HideBottomViewOnScrollBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(V paramV, int paramInt, long paramLong, TimeInterpolator paramTimeInterpolator)
  {
    c = paramV.animate().translationY(paramInt).setInterpolator(paramTimeInterpolator).setDuration(paramLong).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        HideBottomViewOnScrollBehavior.a(HideBottomViewOnScrollBehavior.this, null);
      }
    });
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    a = paramV.getMeasuredHeight();
    return super.onLayoutChild(paramCoordinatorLayout, paramV, paramInt);
  }
  
  public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((b != 1) && (paramInt2 > 0))
    {
      slideDown(paramV);
      return;
    }
    if ((b != 2) && (paramInt2 < 0)) {
      slideUp(paramV);
    }
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt)
  {
    return paramInt == 2;
  }
  
  protected void slideDown(V paramV)
  {
    if (c != null)
    {
      c.cancel();
      paramV.clearAnimation();
    }
    b = 1;
    a(paramV, a, 175L, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
  }
  
  protected void slideUp(V paramV)
  {
    if (c != null)
    {
      c.cancel();
      paramV.clearAnimation();
    }
    b = 2;
    a(paramV, 0, 225L, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
  }
}
