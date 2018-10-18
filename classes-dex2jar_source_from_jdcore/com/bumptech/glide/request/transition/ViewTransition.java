package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;

public class ViewTransition<R>
  implements Transition<R>
{
  private final a a;
  
  ViewTransition(a paramA)
  {
    a = paramA;
  }
  
  public boolean transition(R paramR, Transition.ViewAdapter paramViewAdapter)
  {
    paramR = paramViewAdapter.getView();
    if (paramR != null)
    {
      paramR.clearAnimation();
      paramR.startAnimation(a.a(paramR.getContext()));
    }
    return false;
  }
  
  static abstract interface a
  {
    public abstract Animation a(Context paramContext);
  }
}
