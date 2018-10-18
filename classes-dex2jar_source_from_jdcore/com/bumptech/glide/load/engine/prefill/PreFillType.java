package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap.Config;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.Preconditions;

public final class PreFillType
{
  @VisibleForTesting
  static final Bitmap.Config a = Bitmap.Config.RGB_565;
  private final int b;
  private final int c;
  private final Bitmap.Config d;
  private final int e;
  
  PreFillType(int paramInt1, int paramInt2, Bitmap.Config paramConfig, int paramInt3)
  {
    d = ((Bitmap.Config)Preconditions.checkNotNull(paramConfig, "Config must not be null"));
    b = paramInt1;
    c = paramInt2;
    e = paramInt3;
  }
  
  int a()
  {
    return b;
  }
  
  int b()
  {
    return c;
  }
  
  Bitmap.Config c()
  {
    return d;
  }
  
  int d()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof PreFillType;
    boolean bool2 = false;
    if (bool1)
    {
      paramObject = (PreFillType)paramObject;
      bool1 = bool2;
      if (c == c)
      {
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (e == e)
          {
            bool1 = bool2;
            if (d == d) {
              bool1 = true;
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
    return ((b * 31 + c) * 31 + d.hashCode()) * 31 + e;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PreFillSize{width=");
    localStringBuilder.append(b);
    localStringBuilder.append(", height=");
    localStringBuilder.append(c);
    localStringBuilder.append(", config=");
    localStringBuilder.append(d);
    localStringBuilder.append(", weight=");
    localStringBuilder.append(e);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class Builder
  {
    private final int a;
    private final int b;
    private Bitmap.Config c;
    private int d = 1;
    
    public Builder(int paramInt)
    {
      this(paramInt, paramInt);
    }
    
    public Builder(int paramInt1, int paramInt2)
    {
      if (paramInt1 > 0)
      {
        if (paramInt2 > 0)
        {
          a = paramInt1;
          b = paramInt2;
          return;
        }
        throw new IllegalArgumentException("Height must be > 0");
      }
      throw new IllegalArgumentException("Width must be > 0");
    }
    
    Bitmap.Config a()
    {
      return c;
    }
    
    PreFillType b()
    {
      return new PreFillType(a, b, c, d);
    }
    
    public Builder setConfig(@Nullable Bitmap.Config paramConfig)
    {
      c = paramConfig;
      return this;
    }
    
    public Builder setWeight(int paramInt)
    {
      if (paramInt > 0)
      {
        d = paramInt;
        return this;
      }
      throw new IllegalArgumentException("Weight must be > 0");
    }
  }
}
