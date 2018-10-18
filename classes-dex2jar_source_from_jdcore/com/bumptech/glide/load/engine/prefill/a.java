package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class a
  implements Runnable
{
  static final long a = TimeUnit.SECONDS.toMillis(1L);
  private static final a b = new a();
  private final BitmapPool c;
  private final MemoryCache d;
  private final b e;
  private final a f;
  private final Set<PreFillType> g = new HashSet();
  private final Handler h;
  private long i = 40L;
  private boolean j;
  
  public a(BitmapPool paramBitmapPool, MemoryCache paramMemoryCache, b paramB)
  {
    this(paramBitmapPool, paramMemoryCache, paramB, b, new Handler(Looper.getMainLooper()));
  }
  
  @VisibleForTesting
  a(BitmapPool paramBitmapPool, MemoryCache paramMemoryCache, b paramB, a paramA, Handler paramHandler)
  {
    c = paramBitmapPool;
    d = paramMemoryCache;
    e = paramB;
    f = paramA;
    h = paramHandler;
  }
  
  private boolean a(long paramLong)
  {
    return f.a() - paramLong >= 32L;
  }
  
  private long c()
  {
    return d.getMaxSize() - d.getCurrentSize();
  }
  
  private long d()
  {
    long l = i;
    i = Math.min(i * 4L, a);
    return l;
  }
  
  public void a()
  {
    j = true;
  }
  
  @VisibleForTesting
  boolean b()
  {
    long l = f.a();
    while ((!e.b()) && (!a(l)))
    {
      PreFillType localPreFillType = e.a();
      Object localObject;
      if (!g.contains(localPreFillType))
      {
        g.add(localPreFillType);
        localObject = c.getDirty(localPreFillType.a(), localPreFillType.b(), localPreFillType.c());
      }
      else
      {
        localObject = Bitmap.createBitmap(localPreFillType.a(), localPreFillType.b(), localPreFillType.c());
      }
      int k = Util.getBitmapByteSize((Bitmap)localObject);
      if (c() >= k)
      {
        b localB = new b();
        d.put(localB, BitmapResource.obtain((Bitmap)localObject, c));
      }
      else
      {
        c.put((Bitmap)localObject);
      }
      if (Log.isLoggable("PreFillRunner", 3))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("allocated [");
        ((StringBuilder)localObject).append(localPreFillType.a());
        ((StringBuilder)localObject).append("x");
        ((StringBuilder)localObject).append(localPreFillType.b());
        ((StringBuilder)localObject).append("] ");
        ((StringBuilder)localObject).append(localPreFillType.c());
        ((StringBuilder)localObject).append(" size: ");
        ((StringBuilder)localObject).append(k);
        Log.d("PreFillRunner", ((StringBuilder)localObject).toString());
      }
    }
    return (!j) && (!e.b());
  }
  
  public void run()
  {
    if (b()) {
      h.postDelayed(this, d());
    }
  }
  
  @VisibleForTesting
  static class a
  {
    a() {}
    
    long a()
    {
      return SystemClock.currentThreadTimeMillis();
    }
  }
  
  private static final class b
    implements Key
  {
    b() {}
    
    public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
    {
      throw new UnsupportedOperationException();
    }
  }
}
