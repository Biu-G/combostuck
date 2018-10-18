package com.bumptech.glide.signature;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public class MediaStoreSignature
  implements Key
{
  @NonNull
  private final String a;
  private final long b;
  private final int c;
  
  public MediaStoreSignature(@Nullable String paramString, long paramLong, int paramInt)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    a = str;
    b = paramLong;
    c = paramInt;
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
      paramObject = (MediaStoreSignature)paramObject;
      if (b != b) {
        return false;
      }
      if (c != c) {
        return false;
      }
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return (a.hashCode() * 31 + (int)(b ^ b >>> 32)) * 31 + c;
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ByteBuffer.allocate(12).putLong(b).putInt(c).array());
    paramMessageDigest.update(a.getBytes(CHARSET));
  }
}
