package com.bumptech.glide.signature;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

public final class ObjectKey
  implements Key
{
  private final Object a;
  
  public ObjectKey(@NonNull Object paramObject)
  {
    a = Preconditions.checkNotNull(paramObject);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ObjectKey))
    {
      paramObject = (ObjectKey)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ObjectKey{object=");
    localStringBuilder.append(a);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(a.toString().getBytes(CHARSET));
  }
}
