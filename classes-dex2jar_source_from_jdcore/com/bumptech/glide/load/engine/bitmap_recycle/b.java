package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;

class b
  implements e
{
  private final b a = new b();
  private final d<a, Bitmap> b = new d();
  
  b() {}
  
  static String a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append("x");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append("], ");
    localStringBuilder.append(paramConfig);
    return localStringBuilder.toString();
  }
  
  private static String a(Bitmap paramBitmap)
  {
    return a(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
  }
  
  public Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = a.a(paramInt1, paramInt2, paramConfig);
    return (Bitmap)b.a(paramConfig);
  }
  
  public int getSize(Bitmap paramBitmap)
  {
    return Util.getBitmapByteSize(paramBitmap);
  }
  
  public String logBitmap(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a(paramInt1, paramInt2, paramConfig);
  }
  
  public String logBitmap(Bitmap paramBitmap)
  {
    return a(paramBitmap);
  }
  
  public void put(Bitmap paramBitmap)
  {
    a localA = a.a(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    b.a(localA, paramBitmap);
  }
  
  public Bitmap removeLast()
  {
    return (Bitmap)b.a();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AttributeStrategy:\n  ");
    localStringBuilder.append(b);
    return localStringBuilder.toString();
  }
  
  @VisibleForTesting
  static class a
    implements f
  {
    private final b.b a;
    private int b;
    private int c;
    private Bitmap.Config d;
    
    public a(b.b paramB)
    {
      a = paramB;
    }
    
    public void a()
    {
      a.a(this);
    }
    
    public void a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      b = paramInt1;
      c = paramInt2;
      d = paramConfig;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof a;
      boolean bool2 = false;
      if (bool1)
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (c == c)
          {
            bool1 = bool2;
            if (d == d) {
              bool1 = true;
            }
          }
        }
        return bool1;
      }
      return false;
    }
    
    public int hashCode()
    {
      int j = b;
      int k = c;
      int i;
      if (d != null) {
        i = d.hashCode();
      } else {
        i = 0;
      }
      return (j * 31 + k) * 31 + i;
    }
    
    public String toString()
    {
      return b.a(b, c, d);
    }
  }
  
  @VisibleForTesting
  static class b
    extends c<b.a>
  {
    b() {}
    
    protected b.a a()
    {
      return new b.a(this);
    }
    
    b.a a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      b.a localA = (b.a)c();
      localA.a(paramInt1, paramInt2, paramConfig);
      return localA;
    }
  }
}
