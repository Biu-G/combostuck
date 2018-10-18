package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruCache<T, Y>
{
  private final Map<T, Y> a = new LinkedHashMap(100, 0.75F, true);
  private final long b;
  private long c;
  private long d;
  
  public LruCache(long paramLong)
  {
    b = paramLong;
    c = paramLong;
  }
  
  private void a()
  {
    trimToSize(c);
  }
  
  public void clearMemory()
  {
    trimToSize(0L);
  }
  
  public boolean contains(@NonNull T paramT)
  {
    try
    {
      boolean bool = a.containsKey(paramT);
      return bool;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  @Nullable
  public Y get(@NonNull T paramT)
  {
    try
    {
      paramT = a.get(paramT);
      return paramT;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  protected int getCount()
  {
    try
    {
      int i = a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long getCurrentSize()
  {
    try
    {
      long l = d;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long getMaxSize()
  {
    try
    {
      long l = c;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  protected int getSize(@Nullable Y paramY)
  {
    return 1;
  }
  
  protected void onItemEvicted(@NonNull T paramT, @Nullable Y paramY) {}
  
  @Nullable
  public Y put(@NonNull T paramT, @Nullable Y paramY)
  {
    try
    {
      long l = getSize(paramY);
      if (l >= c)
      {
        onItemEvicted(paramT, paramY);
        return null;
      }
      if (paramY != null) {
        d += l;
      }
      Object localObject = a.put(paramT, paramY);
      if (localObject != null)
      {
        d -= getSize(localObject);
        if (!localObject.equals(paramY)) {
          onItemEvicted(paramT, localObject);
        }
      }
      a();
      return localObject;
    }
    finally {}
  }
  
  @Nullable
  public Y remove(@NonNull T paramT)
  {
    try
    {
      paramT = a.remove(paramT);
      if (paramT != null) {
        d -= getSize(paramT);
      }
      return paramT;
    }
    finally {}
  }
  
  public void setSizeMultiplier(float paramFloat)
  {
    if (paramFloat >= 0.0F) {}
    try
    {
      c = Math.round((float)b * paramFloat);
      a();
      return;
    }
    finally {}
    throw new IllegalArgumentException("Multiplier must be >= 0");
  }
  
  protected void trimToSize(long paramLong)
  {
    try
    {
      while (d > paramLong)
      {
        Iterator localIterator = a.entrySet().iterator();
        Object localObject3 = (Map.Entry)localIterator.next();
        Object localObject2 = ((Map.Entry)localObject3).getValue();
        d -= getSize(localObject2);
        localObject3 = ((Map.Entry)localObject3).getKey();
        localIterator.remove();
        onItemEvicted(localObject3, localObject2);
      }
      return;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }
}
