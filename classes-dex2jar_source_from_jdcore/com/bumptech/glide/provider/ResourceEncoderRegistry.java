package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;
import java.util.List;

public class ResourceEncoderRegistry
{
  private final List<a<?>> a = new ArrayList();
  
  public ResourceEncoderRegistry() {}
  
  public <Z> void append(@NonNull Class<Z> paramClass, @NonNull ResourceEncoder<Z> paramResourceEncoder)
  {
    try
    {
      a.add(new a(paramClass, paramResourceEncoder));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  @Nullable
  public <Z> ResourceEncoder<Z> get(@NonNull Class<Z> paramClass)
  {
    int i = 0;
    try
    {
      int j = a.size();
      while (i < j)
      {
        a localA = (a)a.get(i);
        if (localA.a(paramClass))
        {
          paramClass = a;
          return paramClass;
        }
        i += 1;
      }
      return null;
    }
    finally {}
  }
  
  public <Z> void prepend(@NonNull Class<Z> paramClass, @NonNull ResourceEncoder<Z> paramResourceEncoder)
  {
    try
    {
      a.add(0, new a(paramClass, paramResourceEncoder));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  private static final class a<T>
  {
    final ResourceEncoder<T> a;
    private final Class<T> b;
    
    a(@NonNull Class<T> paramClass, @NonNull ResourceEncoder<T> paramResourceEncoder)
    {
      b = paramClass;
      a = paramResourceEncoder;
    }
    
    boolean a(@NonNull Class<?> paramClass)
    {
      return b.isAssignableFrom(paramClass);
    }
  }
}
