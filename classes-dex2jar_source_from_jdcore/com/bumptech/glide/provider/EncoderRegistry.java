package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class EncoderRegistry
{
  private final List<a<?>> a = new ArrayList();
  
  public EncoderRegistry() {}
  
  public <T> void append(@NonNull Class<T> paramClass, @NonNull Encoder<T> paramEncoder)
  {
    try
    {
      a.add(new a(paramClass, paramEncoder));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  @Nullable
  public <T> Encoder<T> getEncoder(@NonNull Class<T> paramClass)
  {
    try
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        a localA = (a)localIterator.next();
        if (localA.a(paramClass))
        {
          paramClass = a;
          return paramClass;
        }
      }
      return null;
    }
    finally {}
  }
  
  public <T> void prepend(@NonNull Class<T> paramClass, @NonNull Encoder<T> paramEncoder)
  {
    try
    {
      a.add(0, new a(paramClass, paramEncoder));
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
    final Encoder<T> a;
    private final Class<T> b;
    
    a(@NonNull Class<T> paramClass, @NonNull Encoder<T> paramEncoder)
    {
      b = paramClass;
      a = paramEncoder;
    }
    
    boolean a(@NonNull Class<?> paramClass)
    {
      return b.isAssignableFrom(paramClass);
    }
  }
}
