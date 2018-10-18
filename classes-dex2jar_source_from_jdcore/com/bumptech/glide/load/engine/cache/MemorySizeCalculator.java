package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.util.Preconditions;

public final class MemorySizeCalculator
{
  private final int a;
  private final int b;
  private final Context c;
  private final int d;
  
  MemorySizeCalculator(Builder paramBuilder)
  {
    c = b;
    if (a(c)) {
      i = i / 2;
    } else {
      i = i;
    }
    d = i;
    int i = a(c, g, h);
    float f = d.a() * d.b() * 4;
    int j = Math.round(f * f);
    int k = Math.round(f * e);
    int m = i - d;
    int n = k + j;
    if (n <= m)
    {
      b = k;
      a = j;
    }
    else
    {
      f = m / (f + e);
      b = Math.round(e * f);
      a = Math.round(f * f);
    }
    if (Log.isLoggable("MemorySizeCalculator", 3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Calculation complete, Calculated memory cache size: ");
      localStringBuilder.append(a(b));
      localStringBuilder.append(", pool size: ");
      localStringBuilder.append(a(a));
      localStringBuilder.append(", byte array size: ");
      localStringBuilder.append(a(d));
      localStringBuilder.append(", memory class limited? ");
      boolean bool;
      if (n > i) {
        bool = true;
      } else {
        bool = false;
      }
      localStringBuilder.append(bool);
      localStringBuilder.append(", max size: ");
      localStringBuilder.append(a(i));
      localStringBuilder.append(", memoryClass: ");
      localStringBuilder.append(c.getMemoryClass());
      localStringBuilder.append(", isLowMemoryDevice: ");
      localStringBuilder.append(a(c));
      Log.d("MemorySizeCalculator", localStringBuilder.toString());
    }
  }
  
  private static int a(ActivityManager paramActivityManager, float paramFloat1, float paramFloat2)
  {
    int i = paramActivityManager.getMemoryClass();
    boolean bool = a(paramActivityManager);
    float f = i * 1024 * 1024;
    if (bool) {
      paramFloat1 = paramFloat2;
    }
    return Math.round(f * paramFloat1);
  }
  
  private String a(int paramInt)
  {
    return Formatter.formatFileSize(c, paramInt);
  }
  
  @TargetApi(19)
  static boolean a(ActivityManager paramActivityManager)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramActivityManager.isLowRamDevice();
    }
    return true;
  }
  
  public int getArrayPoolSizeInBytes()
  {
    return d;
  }
  
  public int getBitmapPoolSize()
  {
    return a;
  }
  
  public int getMemoryCacheSize()
  {
    return b;
  }
  
  public static final class Builder
  {
    static final int a;
    final Context b;
    ActivityManager c;
    MemorySizeCalculator.b d;
    float e = 2.0F;
    float f = a;
    float g = 0.4F;
    float h = 0.33F;
    int i = 4194304;
    
    static
    {
      int j;
      if (Build.VERSION.SDK_INT < 26) {
        j = 4;
      } else {
        j = 1;
      }
      a = j;
    }
    
    public Builder(Context paramContext)
    {
      b = paramContext;
      c = ((ActivityManager)paramContext.getSystemService("activity"));
      d = new MemorySizeCalculator.a(paramContext.getResources().getDisplayMetrics());
      if ((Build.VERSION.SDK_INT >= 26) && (MemorySizeCalculator.a(c))) {
        f = 0.0F;
      }
    }
    
    public MemorySizeCalculator build()
    {
      return new MemorySizeCalculator(this);
    }
    
    public Builder setArrayPoolSize(int paramInt)
    {
      i = paramInt;
      return this;
    }
    
    public Builder setBitmapPoolScreens(float paramFloat)
    {
      boolean bool;
      if (paramFloat >= 0.0F) {
        bool = true;
      } else {
        bool = false;
      }
      Preconditions.checkArgument(bool, "Bitmap pool screens must be greater than or equal to 0");
      f = paramFloat;
      return this;
    }
    
    public Builder setLowMemoryMaxSizeMultiplier(float paramFloat)
    {
      boolean bool;
      if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {
        bool = true;
      } else {
        bool = false;
      }
      Preconditions.checkArgument(bool, "Low memory max size multiplier must be between 0 and 1");
      h = paramFloat;
      return this;
    }
    
    public Builder setMaxSizeMultiplier(float paramFloat)
    {
      boolean bool;
      if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {
        bool = true;
      } else {
        bool = false;
      }
      Preconditions.checkArgument(bool, "Size multiplier must be between 0 and 1");
      g = paramFloat;
      return this;
    }
    
    public Builder setMemoryCacheScreens(float paramFloat)
    {
      boolean bool;
      if (f >= 0.0F) {
        bool = true;
      } else {
        bool = false;
      }
      Preconditions.checkArgument(bool, "Memory cache screens must be greater than or equal to 0");
      e = paramFloat;
      return this;
    }
  }
  
  private static final class a
    implements MemorySizeCalculator.b
  {
    private final DisplayMetrics a;
    
    a(DisplayMetrics paramDisplayMetrics)
    {
      a = paramDisplayMetrics;
    }
    
    public int a()
    {
      return a.widthPixels;
    }
    
    public int b()
    {
      return a.heightPixels;
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int b();
  }
}
