package com.bumptech.glide.load.engine.cache;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;

public abstract interface MemoryCache
{
  public abstract void clearMemory();
  
  public abstract long getCurrentSize();
  
  public abstract long getMaxSize();
  
  @Nullable
  public abstract Resource<?> put(@NonNull Key paramKey, @Nullable Resource<?> paramResource);
  
  @Nullable
  public abstract Resource<?> remove(@NonNull Key paramKey);
  
  public abstract void setResourceRemovedListener(@NonNull ResourceRemovedListener paramResourceRemovedListener);
  
  public abstract void setSizeMultiplier(float paramFloat);
  
  public abstract void trimMemory(int paramInt);
  
  public static abstract interface ResourceRemovedListener
  {
    public abstract void onResourceRemoved(@NonNull Resource<?> paramResource);
  }
}
