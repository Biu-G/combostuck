package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.LruCache;

public class LruResourceCache
  extends LruCache<Key, Resource<?>>
  implements MemoryCache
{
  private MemoryCache.ResourceRemovedListener a;
  
  public LruResourceCache(long paramLong)
  {
    super(paramLong);
  }
  
  protected int getSize(@Nullable Resource<?> paramResource)
  {
    if (paramResource == null) {
      return super.getSize(null);
    }
    return paramResource.getSize();
  }
  
  protected void onItemEvicted(@NonNull Key paramKey, @Nullable Resource<?> paramResource)
  {
    if ((a != null) && (paramResource != null)) {
      a.onResourceRemoved(paramResource);
    }
  }
  
  public void setResourceRemovedListener(@NonNull MemoryCache.ResourceRemovedListener paramResourceRemovedListener)
  {
    a = paramResourceRemovedListener;
  }
  
  @SuppressLint({"InlinedApi"})
  public void trimMemory(int paramInt)
  {
    if (paramInt >= 40)
    {
      clearMemory();
      return;
    }
    if (paramInt >= 20) {
      trimToSize(getMaxSize() / 2L);
    }
  }
}
