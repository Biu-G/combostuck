package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

public class DrawableCrossFadeTransition
  implements Transition<Drawable>
{
  private final int a;
  private final boolean b;
  
  public DrawableCrossFadeTransition(int paramInt, boolean paramBoolean)
  {
    a = paramInt;
    b = paramBoolean;
  }
  
  public boolean transition(Drawable paramDrawable, Transition.ViewAdapter paramViewAdapter)
  {
    Drawable localDrawable = paramViewAdapter.getCurrentDrawable();
    Object localObject = localDrawable;
    if (localDrawable == null) {
      localObject = new ColorDrawable(0);
    }
    paramDrawable = new TransitionDrawable(new Drawable[] { localObject, paramDrawable });
    paramDrawable.setCrossFadeEnabled(b);
    paramDrawable.startTransition(a);
    paramViewAdapter.setDrawable(paramDrawable);
    return true;
  }
}
