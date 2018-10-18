package com.bumptech.glide.load.engine.cache;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;

public class MemoryCacheAdapter
  implements MemoryCache
{
  private MemoryCache.ResourceRemovedListener a;
  
  public MemoryCacheAdapter() {}
  
  public void clearMemory() {}
  
  public long getCurrentSize()
  {
    return 0L;
  }
  
  public long getMaxSize()
  {
    return 0L;
  }
  
  @Nullable
  public Resource<?> put(@NonNull Key paramKey, @Nullable Resource<?> paramResource)
  {
    if (paramResource != null) {
      a.onResourceRemoved(paramResource);
    }
    return null;
  }
  
  @Nullable
  public Resource<?> remove(@NonNull Key paramKey)
  {
    return null;
  }
  
  public void setResourceRemovedListener(@NonNull MemoryCache.ResourceRemovedListener paramResourceRemovedListener)
  {
    a = paramResourceRemovedListener;
  }
  
  public void setSizeMultiplier(float paramFloat) {}
  
  public void trimMemory(int paramInt) {}
}
