package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;

public class DrawableCrossFadeFactory
  implements TransitionFactory<Drawable>
{
  private final int a;
  private final boolean b;
  private DrawableCrossFadeTransition c;
  
  protected DrawableCrossFadeFactory(int paramInt, boolean paramBoolean)
  {
    a = paramInt;
    b = paramBoolean;
  }
  
  private Transition<Drawable> a()
  {
    if (c == null) {
      c = new DrawableCrossFadeTransition(a, b);
    }
    return c;
  }
  
  public Transition<Drawable> build(DataSource paramDataSource, boolean paramBoolean)
  {
    if (paramDataSource == DataSource.MEMORY_CACHE) {
      return NoTransition.get();
    }
    return a();
  }
  
  public static class Builder
  {
    private final int a;
    private boolean b;
    
    public Builder()
    {
      this(300);
    }
    
    public Builder(int paramInt)
    {
      a = paramInt;
    }
    
    public DrawableCrossFadeFactory build()
    {
      return new DrawableCrossFadeFactory(a, b);
    }
    
    public Builder setCrossFadeEnabled(boolean paramBoolean)
    {
      b = paramBoolean;
      return this;
    }
  }
}
