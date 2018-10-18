package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.load.DataSource;

public class ViewAnimationFactory<R>
  implements TransitionFactory<R>
{
  private final ViewTransition.a a;
  private Transition<R> b;
  
  public ViewAnimationFactory(int paramInt)
  {
    this(new b(paramInt));
  }
  
  public ViewAnimationFactory(Animation paramAnimation)
  {
    this(new a(paramAnimation));
  }
  
  ViewAnimationFactory(ViewTransition.a paramA)
  {
    a = paramA;
  }
  
  public Transition<R> build(DataSource paramDataSource, boolean paramBoolean)
  {
    if ((paramDataSource != DataSource.MEMORY_CACHE) && (paramBoolean))
    {
      if (b == null) {
        b = new ViewTransition(a);
      }
      return b;
    }
    return NoTransition.get();
  }
  
  private static class a
    implements ViewTransition.a
  {
    private final Animation a;
    
    a(Animation paramAnimation)
    {
      a = paramAnimation;
    }
    
    public Animation a(Context paramContext)
    {
      return a;
    }
  }
  
  private static class b
    implements ViewTransition.a
  {
    private final int a;
    
    b(int paramInt)
    {
      a = paramInt;
    }
    
    public Animation a(Context paramContext)
    {
      return AnimationUtils.loadAnimation(paramContext, a);
    }
  }
}
