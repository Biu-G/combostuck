package com.bumptech.glide.provider;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.util.MultiClassKey;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

public class LoadPathCache
{
  private static final LoadPath<?, ?, ?> a = new LoadPath(Object.class, Object.class, Object.class, Collections.singletonList(new DecodePath(Object.class, Object.class, Object.class, Collections.emptyList(), new UnitTranscoder(), null)), null);
  private final ArrayMap<MultiClassKey, LoadPath<?, ?, ?>> b = new ArrayMap();
  private final AtomicReference<MultiClassKey> c = new AtomicReference();
  
  public LoadPathCache() {}
  
  private MultiClassKey a(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    MultiClassKey localMultiClassKey2 = (MultiClassKey)c.getAndSet(null);
    MultiClassKey localMultiClassKey1 = localMultiClassKey2;
    if (localMultiClassKey2 == null) {
      localMultiClassKey1 = new MultiClassKey();
    }
    localMultiClassKey1.set(paramClass1, paramClass2, paramClass3);
    return localMultiClassKey1;
  }
  
  @Nullable
  public <Data, TResource, Transcode> LoadPath<Data, TResource, Transcode> get(Class<Data> arg1, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    paramClass1 = a(???, paramClass1, paramClass2);
    synchronized (b)
    {
      paramClass2 = (LoadPath)b.get(paramClass1);
      c.set(paramClass1);
      return paramClass2;
    }
  }
  
  public boolean isEmptyLoadPath(@Nullable LoadPath<?, ?, ?> paramLoadPath)
  {
    return a.equals(paramLoadPath);
  }
  
  public void put(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3, @Nullable LoadPath<?, ?, ?> paramLoadPath)
  {
    synchronized (b)
    {
      ArrayMap localArrayMap2 = b;
      paramClass1 = new MultiClassKey(paramClass1, paramClass2, paramClass3);
      if (paramLoadPath == null) {
        paramLoadPath = a;
      }
      localArrayMap2.put(paramClass1, paramLoadPath);
      return;
    }
  }
}
