package com.bumptech.glide.manager;

import android.support.annotation.NonNull;

public abstract interface Lifecycle
{
  public abstract void addListener(@NonNull LifecycleListener paramLifecycleListener);
  
  public abstract void removeListener(@NonNull LifecycleListener paramLifecycleListener);
}
