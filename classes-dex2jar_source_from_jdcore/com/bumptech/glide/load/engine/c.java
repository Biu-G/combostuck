package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.security.MessageDigest;

final class c
  implements Key
{
  private final Key a;
  private final Key b;
  
  c(Key paramKey1, Key paramKey2)
  {
    a = paramKey1;
    b = paramKey2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof c;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (b.equals(b)) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DataCacheKey{sourceKey=");
    localStringBuilder.append(a);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    a.updateDiskCacheKey(paramMessageDigest);
    b.updateDiskCacheKey(paramMessageDigest);
  }
}
