package com.bumptech.glide.load.resource.transcode;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranscoderRegistry
{
  private final List<a<?, ?>> a = new ArrayList();
  
  public TranscoderRegistry() {}
  
  @NonNull
  public <Z, R> ResourceTranscoder<Z, R> get(@NonNull Class<Z> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      if (paramClass1.isAssignableFrom(paramClass))
      {
        paramClass = UnitTranscoder.get();
        return paramClass;
      }
      Object localObject = a.iterator();
      while (((Iterator)localObject).hasNext())
      {
        a localA = (a)((Iterator)localObject).next();
        if (localA.a(paramClass, paramClass1))
        {
          paramClass = a;
          return paramClass;
        }
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No transcoder registered to transcode from ");
      ((StringBuilder)localObject).append(paramClass);
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(paramClass1);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
    finally {}
  }
  
  @NonNull
  public <Z, R> List<Class<R>> getTranscodeClasses(@NonNull Class<Z> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (paramClass1.isAssignableFrom(paramClass))
      {
        localArrayList.add(paramClass1);
        return localArrayList;
      }
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        if (((a)localIterator.next()).a(paramClass, paramClass1)) {
          localArrayList.add(paramClass1);
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  public <Z, R> void register(@NonNull Class<Z> paramClass, @NonNull Class<R> paramClass1, @NonNull ResourceTranscoder<Z, R> paramResourceTranscoder)
  {
    try
    {
      a.add(new a(paramClass, paramClass1, paramResourceTranscoder));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a<Z, R>
  {
    final ResourceTranscoder<Z, R> a;
    private final Class<Z> b;
    private final Class<R> c;
    
    a(@NonNull Class<Z> paramClass, @NonNull Class<R> paramClass1, @NonNull ResourceTranscoder<Z, R> paramResourceTranscoder)
    {
      b = paramClass;
      c = paramClass1;
      a = paramResourceTranscoder;
    }
    
    public boolean a(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2)
    {
      return (b.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(c));
    }
  }
}
