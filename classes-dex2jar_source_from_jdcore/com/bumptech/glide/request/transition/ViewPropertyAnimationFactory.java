package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;

public class ViewPropertyAnimationFactory<R>
  implements TransitionFactory<R>
{
  private final ViewPropertyTransition.Animator a;
  private ViewPropertyTransition<R> b;
  
  public ViewPropertyAnimationFactory(ViewPropertyTransition.Animator paramAnimator)
  {
    a = paramAnimator;
  }
  
  public Transition<R> build(DataSource paramDataSource, boolean paramBoolean)
  {
    if ((paramDataSource != DataSource.MEMORY_CACHE) && (paramBoolean))
    {
      if (b == null) {
        b = new ViewPropertyTransition(a);
      }
      return b;
    }
    return NoTransition.get();
  }
}
