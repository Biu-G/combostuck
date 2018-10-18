package android.support.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public class ChangeScroll
  extends Transition
{
  private static final String[] a = { "android:changeScroll:x", "android:changeScroll:y" };
  
  public ChangeScroll() {}
  
  public ChangeScroll(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void b(TransitionValues paramTransitionValues)
  {
    values.put("android:changeScroll:x", Integer.valueOf(view.getScrollX()));
    values.put("android:changeScroll:y", Integer.valueOf(view.getScrollY()));
  }
  
  public void captureEndValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  public void captureStartValues(@NonNull TransitionValues paramTransitionValues)
  {
    b(paramTransitionValues);
  }
  
  @Nullable
  public Animator createAnimator(@NonNull ViewGroup paramViewGroup, @Nullable TransitionValues paramTransitionValues1, @Nullable TransitionValues paramTransitionValues2)
  {
    Object localObject = null;
    if (paramTransitionValues1 != null)
    {
      if (paramTransitionValues2 == null) {
        return null;
      }
      View localView = view;
      int i = ((Integer)values.get("android:changeScroll:x")).intValue();
      int j = ((Integer)values.get("android:changeScroll:x")).intValue();
      int k = ((Integer)values.get("android:changeScroll:y")).intValue();
      int m = ((Integer)values.get("android:changeScroll:y")).intValue();
      if (i != j)
      {
        localView.setScrollX(i);
        paramViewGroup = ObjectAnimator.ofInt(localView, "scrollX", new int[] { i, j });
      }
      else
      {
        paramViewGroup = null;
      }
      paramTransitionValues1 = localObject;
      if (k != m)
      {
        localView.setScrollY(k);
        paramTransitionValues1 = ObjectAnimator.ofInt(localView, "scrollY", new int[] { k, m });
      }
      return n.a(paramViewGroup, paramTransitionValues1);
    }
    return null;
  }
  
  @Nullable
  public String[] getTransitionProperties()
  {
    return a;
  }
}
