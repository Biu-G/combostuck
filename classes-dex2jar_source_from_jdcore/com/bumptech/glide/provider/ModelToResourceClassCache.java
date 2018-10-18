package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.util.MultiClassKey;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class ModelToResourceClassCache
{
  private final AtomicReference<MultiClassKey> a = new AtomicReference();
  private final ArrayMap<MultiClassKey, List<Class<?>>> b = new ArrayMap();
  
  public ModelToResourceClassCache() {}
  
  public void clear()
  {
    synchronized (b)
    {
      b.clear();
      return;
    }
  }
  
  @Nullable
  public List<Class<?>> get(@NonNull Class<?> paramClass1, @NonNull Class<?> arg2)
  {
    Object localObject = (MultiClassKey)a.getAndSet(null);
    if (localObject == null)
    {
      paramClass1 = new MultiClassKey(paramClass1, ???);
    }
    else
    {
      ((MultiClassKey)localObject).set(paramClass1, ???);
      paramClass1 = (Class<?>)localObject;
    }
    synchronized (b)
    {
      localObject = (List)b.get(paramClass1);
      a.set(paramClass1);
      return localObject;
    }
  }
  
  public void put(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2, @NonNull List<Class<?>> paramList)
  {
    synchronized (b)
    {
      b.put(new MultiClassKey(paramClass1, paramClass2), paramList);
      return;
    }
  }
}
