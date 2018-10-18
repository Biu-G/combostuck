package com.bumptech.glide.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public class MultiClassKey
{
  private Class<?> a;
  private Class<?> b;
  private Class<?> c;
  
  public MultiClassKey() {}
  
  public MultiClassKey(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2)
  {
    set(paramClass1, paramClass2);
  }
  
  public MultiClassKey(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2, @Nullable Class<?> paramClass3)
  {
    set(paramClass1, paramClass2, paramClass3);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject != null)
    {
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (MultiClassKey)paramObject;
      if (!a.equals(a)) {
        return false;
      }
      if (!b.equals(b)) {
        return false;
      }
      return Util.bothNullOrEqual(c, c);
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = a.hashCode();
    int k = b.hashCode();
    int i;
    if (c != null) {
      i = c.hashCode();
    } else {
      i = 0;
    }
    return (j * 31 + k) * 31 + i;
  }
  
  public void set(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2)
  {
    set(paramClass1, paramClass2, null);
  }
  
  public void set(@NonNull Class<?> paramClass1, @NonNull Class<?> paramClass2, @Nullable Class<?> paramClass3)
  {
    a = paramClass1;
    b = paramClass2;
    c = paramClass3;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MultiClassKey{first=");
    localStringBuilder.append(a);
    localStringBuilder.append(", second=");
    localStringBuilder.append(b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}
