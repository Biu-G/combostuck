package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ResourceDecoderRegistry
{
  private final List<String> a = new ArrayList();
  private final Map<String, List<a<?, ?>>> b = new HashMap();
  
  public ResourceDecoderRegistry() {}
  
  @NonNull
  private List<a<?, ?>> a(@NonNull String paramString)
  {
    try
    {
      if (!a.contains(paramString)) {
        a.add(paramString);
      }
      List localList = (List)b.get(paramString);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        b.put(paramString, localObject);
      }
      return localObject;
    }
    finally {}
  }
  
  public <T, R> void append(@NonNull String paramString, @NonNull ResourceDecoder<T, R> paramResourceDecoder, @NonNull Class<T> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      a(paramString).add(new a(paramClass, paramClass1, paramResourceDecoder));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  @NonNull
  public <T, R> List<ResourceDecoder<T, R>> getDecoders(@NonNull Class<T> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = (List)b.get(localObject);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            a localA = (a)((Iterator)localObject).next();
            if (localA.a(paramClass, paramClass1)) {
              localArrayList.add(b);
            }
          }
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  @NonNull
  public <T, R> List<Class<R>> getResourceClasses(@NonNull Class<T> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = (List)b.get(localObject);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            a localA = (a)((Iterator)localObject).next();
            if ((localA.a(paramClass, paramClass1)) && (!localArrayList.contains(a))) {
              localArrayList.add(a);
            }
          }
        }
      }
      return localArrayList;
    }
    finally {}
  }
  
  public <T, R> void prepend(@NonNull String paramString, @NonNull ResourceDecoder<T, R> paramResourceDecoder, @NonNull Class<T> paramClass, @NonNull Class<R> paramClass1)
  {
    try
    {
      a(paramString).add(0, new a(paramClass, paramClass1, paramResourceDecoder));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void setBucketPriorityList(@NonNull List<String> paramList)
  {
    try
    {
      Object localObject = new ArrayList(a);
      a.clear();
      a.addAll(paramList);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (!paramList.contains(str)) {
          a.add(str);
        }
      }
      return;
    }
    finally {}
  }
  
  private static class a<T, R>
  {
    final Class<R> a;
    final ResourceDecoder<T, R> b;
    private final Class<T> c;
    
    public a(@NonNull Class<T> paramClass, @NonNull Class<R> paramClass1, ResourceDecoder<T, R> paramResourceDecoder)
    {
      c = paramClass;
      a = paramClass1;
      b = paramResourceDecoder;
    }
    
    public boolean a(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2)
    {
      return (c.isAssignableFrom(paramClass1)) && (paramClass2.isAssignableFrom(a));
    }
  }
}
