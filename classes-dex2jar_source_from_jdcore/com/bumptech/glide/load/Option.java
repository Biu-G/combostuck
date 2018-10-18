package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

public final class Option<T>
{
  private static final CacheKeyUpdater<Object> a = new CacheKeyUpdater()
  {
    public void update(@NonNull byte[] paramAnonymousArrayOfByte, @NonNull Object paramAnonymousObject, @NonNull MessageDigest paramAnonymousMessageDigest) {}
  };
  private final T b;
  private final CacheKeyUpdater<T> c;
  private final String d;
  private volatile byte[] e;
  
  private Option(@NonNull String paramString, @Nullable T paramT, @NonNull CacheKeyUpdater<T> paramCacheKeyUpdater)
  {
    d = Preconditions.checkNotEmpty(paramString);
    b = paramT;
    c = ((CacheKeyUpdater)Preconditions.checkNotNull(paramCacheKeyUpdater));
  }
  
  @NonNull
  private byte[] a()
  {
    if (e == null) {
      e = d.getBytes(Key.CHARSET);
    }
    return e;
  }
  
  @NonNull
  private static <T> CacheKeyUpdater<T> b()
  {
    return a;
  }
  
  @NonNull
  public static <T> Option<T> disk(@NonNull String paramString, @NonNull CacheKeyUpdater<T> paramCacheKeyUpdater)
  {
    return new Option(paramString, null, paramCacheKeyUpdater);
  }
  
  @NonNull
  public static <T> Option<T> disk(@NonNull String paramString, @Nullable T paramT, @NonNull CacheKeyUpdater<T> paramCacheKeyUpdater)
  {
    return new Option(paramString, paramT, paramCacheKeyUpdater);
  }
  
  @NonNull
  public static <T> Option<T> memory(@NonNull String paramString)
  {
    return new Option(paramString, null, b());
  }
  
  @NonNull
  public static <T> Option<T> memory(@NonNull String paramString, @NonNull T paramT)
  {
    return new Option(paramString, paramT, b());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Option))
    {
      paramObject = (Option)paramObject;
      return d.equals(d);
    }
    return false;
  }
  
  @Nullable
  public T getDefaultValue()
  {
    return b;
  }
  
  public int hashCode()
  {
    return d.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Option{key='");
    localStringBuilder.append(d);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void update(@NonNull T paramT, @NonNull MessageDigest paramMessageDigest)
  {
    c.update(a(), paramT, paramMessageDigest);
  }
  
  public static abstract interface CacheKeyUpdater<T>
  {
    public abstract void update(@NonNull byte[] paramArrayOfByte, @NonNull T paramT, @NonNull MessageDigest paramMessageDigest);
  }
}
