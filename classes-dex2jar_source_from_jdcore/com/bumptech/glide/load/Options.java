package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import java.security.MessageDigest;

public final class Options
  implements Key
{
  private final ArrayMap<Option<?>, Object> a = new ArrayMap();
  
  public Options() {}
  
  private static <T> void a(@NonNull Option<T> paramOption, @NonNull Object paramObject, @NonNull MessageDigest paramMessageDigest)
  {
    paramOption.update(paramObject, paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Options))
    {
      paramObject = (Options)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  @Nullable
  public <T> T get(@NonNull Option<T> paramOption)
  {
    if (a.containsKey(paramOption)) {
      return a.get(paramOption);
    }
    return paramOption.getDefaultValue();
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public void putAll(@NonNull Options paramOptions)
  {
    a.putAll(a);
  }
  
  @NonNull
  public <T> Options set(@NonNull Option<T> paramOption, @NonNull T paramT)
  {
    a.put(paramOption, paramT);
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Options{values=");
    localStringBuilder.append(a);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    int i = 0;
    while (i < a.size())
    {
      a((Option)a.keyAt(i), a.valueAt(i), paramMessageDigest);
      i += 1;
    }
  }
}
