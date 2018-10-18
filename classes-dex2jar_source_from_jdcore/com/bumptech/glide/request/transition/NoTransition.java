package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.DataSource;

public class NoTransition<R>
  implements Transition<R>
{
  static final NoTransition<?> a = new NoTransition();
  private static final TransitionFactory<?> b = new NoAnimationFactory();
  
  public NoTransition() {}
  
  public static <R> Transition<R> get()
  {
    return a;
  }
  
  public static <R> TransitionFactory<R> getFactory()
  {
    return b;
  }
  
  public boolean transition(Object paramObject, Transition.ViewAdapter paramViewAdapter)
  {
    return false;
  }
  
  public static class NoAnimationFactory<R>
    implements TransitionFactory<R>
  {
    public NoAnimationFactory() {}
    
    public Transition<R> build(DataSource paramDataSource, boolean paramBoolean)
    {
      return NoTransition.a;
    }
  }
}
