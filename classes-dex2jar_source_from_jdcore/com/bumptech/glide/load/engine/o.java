package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

final class o
  implements Key
{
  private static final LruCache<Class<?>, byte[]> a = new LruCache(50L);
  private final ArrayPool b;
  private final Key c;
  private final Key d;
  private final int e;
  private final int f;
  private final Class<?> g;
  private final Options h;
  private final Transformation<?> i;
  
  o(ArrayPool paramArrayPool, Key paramKey1, Key paramKey2, int paramInt1, int paramInt2, Transformation<?> paramTransformation, Class<?> paramClass, Options paramOptions)
  {
    b = paramArrayPool;
    c = paramKey1;
    d = paramKey2;
    e = paramInt1;
    f = paramInt2;
    i = paramTransformation;
    g = paramClass;
    h = paramOptions;
  }
  
  private byte[] a()
  {
    byte[] arrayOfByte2 = (byte[])a.get(g);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null)
    {
      arrayOfByte1 = g.getName().getBytes(CHARSET);
      a.put(g, arrayOfByte1);
    }
    return arrayOfByte1;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof o;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (o)paramObject;
      bool1 = bool2;
      if (f == f)
      {
        bool1 = bool2;
        if (e == e)
        {
          bool1 = bool2;
          if (Util.bothNullOrEqual(i, i))
          {
            bool1 = bool2;
            if (g.equals(g))
            {
              bool1 = bool2;
              if (c.equals(c))
              {
                bool1 = bool2;
                if (d.equals(d))
                {
                  bool1 = bool2;
                  if (h.equals(h)) {
                    bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
      return bool1;
    }
    return false;
  }
  
  public int hashCode()
  {
    int k = ((c.hashCode() * 31 + d.hashCode()) * 31 + e) * 31 + f;
    int j = k;
    if (i != null) {
      j = k * 31 + i.hashCode();
    }
    return (j * 31 + g.hashCode()) * 31 + h.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ResourceCacheKey{sourceKey=");
    localStringBuilder.append(c);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(d);
    localStringBuilder.append(", width=");
    localStringBuilder.append(e);
    localStringBuilder.append(", height=");
    localStringBuilder.append(f);
    localStringBuilder.append(", decodedResourceClass=");
    localStringBuilder.append(g);
    localStringBuilder.append(", transformation='");
    localStringBuilder.append(i);
    localStringBuilder.append('\'');
    localStringBuilder.append(", options=");
    localStringBuilder.append(h);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    byte[] arrayOfByte = (byte[])b.getExact(8, [B.class);
    ByteBuffer.wrap(arrayOfByte).putInt(e).putInt(f).array();
    d.updateDiskCacheKey(paramMessageDigest);
    c.updateDiskCacheKey(paramMessageDigest);
    paramMessageDigest.update(arrayOfByte);
    if (i != null) {
      i.updateDiskCacheKey(paramMessageDigest);
    }
    h.updateDiskCacheKey(paramMessageDigest);
    paramMessageDigest.update(a());
    b.put(arrayOfByte);
  }
}
