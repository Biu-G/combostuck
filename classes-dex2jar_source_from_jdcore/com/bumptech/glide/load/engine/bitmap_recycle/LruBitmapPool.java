package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class LruBitmapPool
  implements BitmapPool
{
  private static final Bitmap.Config a = Bitmap.Config.ARGB_8888;
  private final e b;
  private final Set<Bitmap.Config> c;
  private final long d;
  private final a e;
  private long f;
  private long g;
  private int h;
  private int i;
  private int j;
  private int k;
  
  public LruBitmapPool(long paramLong)
  {
    this(paramLong, d(), e());
  }
  
  LruBitmapPool(long paramLong, e paramE, Set<Bitmap.Config> paramSet)
  {
    d = paramLong;
    f = paramLong;
    b = paramE;
    c = paramSet;
    e = new b();
  }
  
  public LruBitmapPool(long paramLong, Set<Bitmap.Config> paramSet)
  {
    this(paramLong, d(), paramSet);
  }
  
  @NonNull
  private static Bitmap a(int paramInt1, int paramInt2, @Nullable Bitmap.Config paramConfig)
  {
    if (paramConfig == null) {
      paramConfig = a;
    }
    return Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
  }
  
  private void a()
  {
    a(f);
  }
  
  private void a(long paramLong)
  {
    try
    {
      while (g > paramLong)
      {
        Bitmap localBitmap = b.removeLast();
        if (localBitmap == null)
        {
          if (Log.isLoggable("LruBitmapPool", 5))
          {
            Log.w("LruBitmapPool", "Size mismatch, resetting");
            c();
          }
          g = 0L;
          return;
        }
        e.b(localBitmap);
        g -= b.getSize(localBitmap);
        k += 1;
        if (Log.isLoggable("LruBitmapPool", 3))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Evicting bitmap=");
          localStringBuilder.append(b.logBitmap(localBitmap));
          Log.d("LruBitmapPool", localStringBuilder.toString());
        }
        b();
        localBitmap.recycle();
      }
      return;
    }
    finally {}
  }
  
  @TargetApi(26)
  private static void a(Bitmap.Config paramConfig)
  {
    if (Build.VERSION.SDK_INT < 26) {
      return;
    }
    if (paramConfig != Bitmap.Config.HARDWARE) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Cannot create a mutable Bitmap with config: ");
    localStringBuilder.append(paramConfig);
    localStringBuilder.append(". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  private static void a(Bitmap paramBitmap)
  {
    paramBitmap.setHasAlpha(true);
    b(paramBitmap);
  }
  
  @Nullable
  private Bitmap b(int paramInt1, int paramInt2, @Nullable Bitmap.Config paramConfig)
  {
    try
    {
      a(paramConfig);
      Object localObject2 = b;
      if (paramConfig != null) {
        localObject1 = paramConfig;
      } else {
        localObject1 = a;
      }
      Object localObject1 = ((e)localObject2).get(paramInt1, paramInt2, (Bitmap.Config)localObject1);
      if (localObject1 == null)
      {
        if (Log.isLoggable("LruBitmapPool", 3))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Missing bitmap=");
          ((StringBuilder)localObject2).append(b.logBitmap(paramInt1, paramInt2, paramConfig));
          Log.d("LruBitmapPool", ((StringBuilder)localObject2).toString());
        }
        i += 1;
      }
      else
      {
        h += 1;
        g -= b.getSize((Bitmap)localObject1);
        e.b((Bitmap)localObject1);
        a((Bitmap)localObject1);
      }
      if (Log.isLoggable("LruBitmapPool", 2))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Get bitmap=");
        ((StringBuilder)localObject2).append(b.logBitmap(paramInt1, paramInt2, paramConfig));
        Log.v("LruBitmapPool", ((StringBuilder)localObject2).toString());
      }
      b();
      return localObject1;
    }
    finally {}
  }
  
  private void b()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      c();
    }
  }
  
  @TargetApi(19)
  private static void b(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      paramBitmap.setPremultiplied(true);
    }
  }
  
  private void c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Hits=");
    localStringBuilder.append(h);
    localStringBuilder.append(", misses=");
    localStringBuilder.append(i);
    localStringBuilder.append(", puts=");
    localStringBuilder.append(j);
    localStringBuilder.append(", evictions=");
    localStringBuilder.append(k);
    localStringBuilder.append(", currentSize=");
    localStringBuilder.append(g);
    localStringBuilder.append(", maxSize=");
    localStringBuilder.append(f);
    localStringBuilder.append("\nStrategy=");
    localStringBuilder.append(b);
    Log.v("LruBitmapPool", localStringBuilder.toString());
  }
  
  private static e d()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new SizeConfigStrategy();
    }
    return new b();
  }
  
  @TargetApi(26)
  private static Set<Bitmap.Config> e()
  {
    HashSet localHashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
    if (Build.VERSION.SDK_INT >= 19) {
      localHashSet.add(null);
    }
    if (Build.VERSION.SDK_INT >= 26) {
      localHashSet.remove(Bitmap.Config.HARDWARE);
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  public void clearMemory()
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "clearMemory");
    }
    a(0L);
  }
  
  @NonNull
  public Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap = b(paramInt1, paramInt2, paramConfig);
    if (localBitmap != null)
    {
      localBitmap.eraseColor(0);
      return localBitmap;
    }
    return a(paramInt1, paramInt2, paramConfig);
  }
  
  @NonNull
  public Bitmap getDirty(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap2 = b(paramInt1, paramInt2, paramConfig);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = a(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap1;
  }
  
  public long getMaxSize()
  {
    return f;
  }
  
  public void put(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {}
    try
    {
      if (!paramBitmap.isRecycled())
      {
        StringBuilder localStringBuilder;
        if ((paramBitmap.isMutable()) && (b.getSize(paramBitmap) <= f) && (c.contains(paramBitmap.getConfig())))
        {
          int m = b.getSize(paramBitmap);
          b.put(paramBitmap);
          e.a(paramBitmap);
          j += 1;
          g += m;
          if (Log.isLoggable("LruBitmapPool", 2))
          {
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("Put bitmap in pool=");
            localStringBuilder.append(b.logBitmap(paramBitmap));
            Log.v("LruBitmapPool", localStringBuilder.toString());
          }
          b();
          a();
          return;
        }
        if (Log.isLoggable("LruBitmapPool", 2))
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Reject bitmap from pool, bitmap: ");
          localStringBuilder.append(b.logBitmap(paramBitmap));
          localStringBuilder.append(", is mutable: ");
          localStringBuilder.append(paramBitmap.isMutable());
          localStringBuilder.append(", is allowed config: ");
          localStringBuilder.append(c.contains(paramBitmap.getConfig()));
          Log.v("LruBitmapPool", localStringBuilder.toString());
        }
        paramBitmap.recycle();
        return;
      }
      throw new IllegalStateException("Cannot pool recycled bitmap");
    }
    finally {}
    throw new NullPointerException("Bitmap must not be null");
  }
  
  public void setSizeMultiplier(float paramFloat)
  {
    try
    {
      f = Math.round((float)d * paramFloat);
      a();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  @SuppressLint({"InlinedApi"})
  public void trimMemory(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("trimMemory, level=");
      localStringBuilder.append(paramInt);
      Log.d("LruBitmapPool", localStringBuilder.toString());
    }
    if (paramInt >= 40)
    {
      clearMemory();
      return;
    }
    if (paramInt >= 20) {
      a(f / 2L);
    }
  }
  
  private static abstract interface a
  {
    public abstract void a(Bitmap paramBitmap);
    
    public abstract void b(Bitmap paramBitmap);
  }
  
  private static final class b
    implements LruBitmapPool.a
  {
    b() {}
    
    public void a(Bitmap paramBitmap) {}
    
    public void b(Bitmap paramBitmap) {}
  }
}
