package android.support.design.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.support.annotation.RestrictTo;
import android.util.StateSet;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class StateListAnimator
{
  ValueAnimator a = null;
  private final ArrayList<a> b = new ArrayList();
  private a c = null;
  private final Animator.AnimatorListener d = new AnimatorListenerAdapter()
  {
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      if (a == paramAnonymousAnimator) {
        a = null;
      }
    }
  };
  
  public StateListAnimator() {}
  
  private void a()
  {
    if (a != null)
    {
      a.cancel();
      a = null;
    }
  }
  
  private void a(a paramA)
  {
    a = b;
    a.start();
  }
  
  public void addState(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
  {
    paramArrayOfInt = new a(paramArrayOfInt, paramValueAnimator);
    paramValueAnimator.addListener(d);
    b.add(paramArrayOfInt);
  }
  
  public void jumpToCurrentState()
  {
    if (a != null)
    {
      a.end();
      a = null;
    }
  }
  
  public void setState(int[] paramArrayOfInt)
  {
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      a localA = (a)b.get(i);
      if (StateSet.stateSetMatches(a, paramArrayOfInt))
      {
        paramArrayOfInt = localA;
        break label55;
      }
      i += 1;
    }
    paramArrayOfInt = null;
    label55:
    if (paramArrayOfInt == c) {
      return;
    }
    if (c != null) {
      a();
    }
    c = paramArrayOfInt;
    if (paramArrayOfInt != null) {
      a(paramArrayOfInt);
    }
  }
  
  static class a
  {
    final int[] a;
    final ValueAnimator b;
    
    a(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
    {
      a = paramArrayOfInt;
      b = paramValueAnimator;
    }
  }
}
