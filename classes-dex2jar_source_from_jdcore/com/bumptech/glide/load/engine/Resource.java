package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;

public abstract interface Resource<Z>
{
  @NonNull
  public abstract Z get();
  
  @NonNull
  public abstract Class<Z> getResourceClass();
  
  public abstract int getSize();
  
  public abstract void recycle();
}
