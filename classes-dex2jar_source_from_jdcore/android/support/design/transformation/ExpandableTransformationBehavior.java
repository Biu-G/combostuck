package android.support.design.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;

public abstract class ExpandableTransformationBehavior
  extends ExpandableBehavior
{
  @Nullable
  private AnimatorSet a;
  
  public ExpandableTransformationBehavior() {}
  
  public ExpandableTransformationBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @NonNull
  protected abstract AnimatorSet onCreateExpandedStateChangeAnimation(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2);
  
  @CallSuper
  protected boolean onExpandedStateChange(View paramView1, View paramView2, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool;
    if (a != null) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool) {
      a.cancel();
    }
    a = onCreateExpandedStateChangeAnimation(paramView1, paramView2, paramBoolean1, bool);
    a.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ExpandableTransformationBehavior.a(ExpandableTransformationBehavior.this, null);
      }
    });
    a.start();
    if (!paramBoolean2) {
      a.end();
    }
    return true;
  }
}
