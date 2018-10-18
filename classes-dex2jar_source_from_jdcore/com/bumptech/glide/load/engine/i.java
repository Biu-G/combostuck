package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;

class i
  implements Key
{
  private final Object a;
  private final int b;
  private final int c;
  private final Class<?> d;
  private final Class<?> e;
  private final Key f;
  private final Map<Class<?>, Transformation<?>> g;
  private final Options h;
  private int i;
  
  i(Object paramObject, Key paramKey, int paramInt1, int paramInt2, Map<Class<?>, Transformation<?>> paramMap, Class<?> paramClass1, Class<?> paramClass2, Options paramOptions)
  {
    a = Preconditions.checkNotNull(paramObject);
    f = ((Key)Preconditions.checkNotNull(paramKey, "Signature must not be null"));
    b = paramInt1;
    c = paramInt2;
    g = ((Map)Preconditions.checkNotNull(paramMap));
    d = ((Class)Preconditions.checkNotNull(paramClass1, "Resource class must not be null"));
    e = ((Class)Preconditions.checkNotNull(paramClass2, "Transcode class must not be null"));
    h = ((Options)Preconditions.checkNotNull(paramOptions));
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof i;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (i)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (f.equals(f))
        {
          bool1 = bool2;
          if (c == c)
          {
            bool1 = bool2;
            if (b == b)
            {
              bool1 = bool2;
              if (g.equals(g))
              {
                bool1 = bool2;
                if (d.equals(d))
                {
                  bool1 = bool2;
                  if (e.equals(e))
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
      }
      return bool1;
    }
    return false;
  }
  
  public int hashCode()
  {
    if (i == 0)
    {
      i = a.hashCode();
      i = (i * 31 + f.hashCode());
      i = (i * 31 + b);
      i = (i * 31 + c);
      i = (i * 31 + g.hashCode());
      i = (i * 31 + d.hashCode());
      i = (i * 31 + e.hashCode());
      i = (i * 31 + h.hashCode());
    }
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("EngineKey{model=");
    localStringBuilder.append(a);
    localStringBuilder.append(", width=");
    localStringBuilder.append(b);
    localStringBuilder.append(", height=");
    localStringBuilder.append(c);
    localStringBuilder.append(", resourceClass=");
    localStringBuilder.append(d);
    localStringBuilder.append(", transcodeClass=");
    localStringBuilder.append(e);
    localStringBuilder.append(", signature=");
    localStringBuilder.append(f);
    localStringBuilder.append(", hashCode=");
    localStringBuilder.append(i);
    localStringBuilder.append(", transformations=");
    localStringBuilder.append(g);
    localStringBuilder.append(", options=");
    localStringBuilder.append(h);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException();
  }
}
