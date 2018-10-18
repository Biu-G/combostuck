package com.bumptech.glide.request.transition;

import android.view.View;

public class ViewPropertyTransition<R>
  implements Transition<R>
{
  private final Animator a;
  
  public ViewPropertyTransition(Animator paramAnimator)
  {
    a = paramAnimator;
  }
  
  public boolean transition(R paramR, Transition.ViewAdapter paramViewAdapter)
  {
    if (paramViewAdapter.getView() != null) {
      a.animate(paramViewAdapter.getView());
    }
    return false;
  }
  
  public static abstract interface Animator
  {
    public abstract void animate(View paramView);
  }
}
