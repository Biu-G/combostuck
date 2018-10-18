package com.bumptech.glide.manager;

import android.support.annotation.NonNull;

class b
  implements Lifecycle
{
  b() {}
  
  public void addListener(@NonNull LifecycleListener paramLifecycleListener)
  {
    paramLifecycleListener.onStart();
  }
  
  public void removeListener(@NonNull LifecycleListener paramLifecycleListener) {}
}
