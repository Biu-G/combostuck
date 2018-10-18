package com.bumptech.glide.util.pool;

import android.support.annotation.NonNull;

public abstract class StateVerifier
{
  private StateVerifier() {}
  
  @NonNull
  public static StateVerifier newInstance()
  {
    return new a();
  }
  
  abstract void a(boolean paramBoolean);
  
  public abstract void throwIfRecycled();
  
  private static class a
    extends StateVerifier
  {
    private volatile boolean a;
    
    a()
    {
      super();
    }
    
    public void a(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public void throwIfRecycled()
    {
      if (!a) {
        return;
      }
      throw new IllegalStateException("Already released");
    }
  }
}
