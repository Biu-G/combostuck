package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.util.Pools.Pool;
import android.util.Log;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Factory;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.FactoryPools.Factory;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class Engine
  implements MemoryCache.ResourceRemovedListener, h, k.a
{
  private final l a;
  private final j b;
  private final MemoryCache c;
  private final b d;
  private final p e;
  private final c f;
  private final a g;
  private final a h;
  
  @VisibleForTesting
  Engine(MemoryCache paramMemoryCache, DiskCache.Factory paramFactory, GlideExecutor paramGlideExecutor1, GlideExecutor paramGlideExecutor2, GlideExecutor paramGlideExecutor3, GlideExecutor paramGlideExecutor4, l paramL, j paramJ, a paramA, b paramB, a paramA1, p paramP, boolean paramBoolean)
  {
    c = paramMemoryCache;
    f = new c(paramFactory);
    if (paramA == null) {
      paramA = new a(paramBoolean);
    }
    h = paramA;
    paramA.a(this);
    if (paramJ == null) {
      paramJ = new j();
    }
    b = paramJ;
    if (paramL == null) {
      paramL = new l();
    }
    a = paramL;
    if (paramB == null) {
      paramB = new b(paramGlideExecutor1, paramGlideExecutor2, paramGlideExecutor3, paramGlideExecutor4, this);
    }
    d = paramB;
    if (paramA1 == null) {
      paramA1 = new a(f);
    }
    g = paramA1;
    if (paramP == null) {
      paramP = new p();
    }
    e = paramP;
    paramMemoryCache.setResourceRemovedListener(this);
  }
  
  public Engine(MemoryCache paramMemoryCache, DiskCache.Factory paramFactory, GlideExecutor paramGlideExecutor1, GlideExecutor paramGlideExecutor2, GlideExecutor paramGlideExecutor3, GlideExecutor paramGlideExecutor4, boolean paramBoolean)
  {
    this(paramMemoryCache, paramFactory, paramGlideExecutor1, paramGlideExecutor2, paramGlideExecutor3, paramGlideExecutor4, null, null, null, null, null, null, paramBoolean);
  }
  
  private k<?> a(Key paramKey)
  {
    paramKey = c.remove(paramKey);
    if (paramKey == null) {
      return null;
    }
    if ((paramKey instanceof k)) {
      return (k)paramKey;
    }
    return new k(paramKey, true, true);
  }
  
  @Nullable
  private k<?> a(Key paramKey, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return null;
    }
    paramKey = h.b(paramKey);
    if (paramKey != null) {
      paramKey.c();
    }
    return paramKey;
  }
  
  private static void a(String paramString, long paramLong, Key paramKey)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(" in ");
    localStringBuilder.append(LogTime.getElapsedMillis(paramLong));
    localStringBuilder.append("ms, key: ");
    localStringBuilder.append(paramKey);
    Log.v("Engine", localStringBuilder.toString());
  }
  
  private k<?> b(Key paramKey, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return null;
    }
    k localK = a(paramKey);
    if (localK != null)
    {
      localK.c();
      h.a(paramKey, localK);
    }
    return localK;
  }
  
  public void clearDiskCache()
  {
    f.a().clear();
  }
  
  public <R> LoadStatus load(GlideContext paramGlideContext, Object paramObject, Key paramKey, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, DiskCacheStrategy paramDiskCacheStrategy, Map<Class<?>, Transformation<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, Options paramOptions, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, ResourceCallback paramResourceCallback)
  {
    Util.assertMainThread();
    long l = LogTime.getLogTime();
    i localI = b.a(paramObject, paramKey, paramInt1, paramInt2, paramMap, paramClass, paramClass1, paramOptions);
    Object localObject = a(localI, paramBoolean3);
    if (localObject != null)
    {
      paramResourceCallback.onResourceReady((Resource)localObject, DataSource.MEMORY_CACHE);
      if (Log.isLoggable("Engine", 2)) {
        a("Loaded resource from active resources", l, localI);
      }
      return null;
    }
    localObject = b(localI, paramBoolean3);
    if (localObject != null)
    {
      paramResourceCallback.onResourceReady((Resource)localObject, DataSource.MEMORY_CACHE);
      if (Log.isLoggable("Engine", 2)) {
        a("Loaded resource from cache", l, localI);
      }
      return null;
    }
    localObject = a.a(localI, paramBoolean6);
    if (localObject != null)
    {
      ((g)localObject).a(paramResourceCallback);
      if (Log.isLoggable("Engine", 2)) {
        a("Added to existing load", l, localI);
      }
      return new LoadStatus(paramResourceCallback, (g)localObject);
    }
    localObject = d.a(localI, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6);
    paramGlideContext = g.a(paramGlideContext, paramObject, localI, paramKey, paramInt1, paramInt2, paramClass, paramClass1, paramPriority, paramDiskCacheStrategy, paramMap, paramBoolean1, paramBoolean2, paramBoolean6, paramOptions, (f.a)localObject);
    a.a(localI, (g)localObject);
    ((g)localObject).a(paramResourceCallback);
    ((g)localObject).b(paramGlideContext);
    if (Log.isLoggable("Engine", 2)) {
      a("Started new load", l, localI);
    }
    return new LoadStatus(paramResourceCallback, (g)localObject);
  }
  
  public void onEngineJobCancelled(g<?> paramG, Key paramKey)
  {
    Util.assertMainThread();
    a.b(paramKey, paramG);
  }
  
  public void onEngineJobComplete(g<?> paramG, Key paramKey, k<?> paramK)
  {
    
    if (paramK != null)
    {
      paramK.a(paramKey, this);
      if (paramK.b()) {
        h.a(paramKey, paramK);
      }
    }
    a.b(paramKey, paramG);
  }
  
  public void onResourceReleased(Key paramKey, k<?> paramK)
  {
    Util.assertMainThread();
    h.a(paramKey);
    if (paramK.b())
    {
      c.put(paramKey, paramK);
      return;
    }
    e.a(paramK);
  }
  
  public void onResourceRemoved(@NonNull Resource<?> paramResource)
  {
    Util.assertMainThread();
    e.a(paramResource);
  }
  
  public void release(Resource<?> paramResource)
  {
    
    if ((paramResource instanceof k))
    {
      ((k)paramResource).d();
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  @VisibleForTesting
  public void shutdown()
  {
    d.a();
    f.b();
    h.b();
  }
  
  public static class LoadStatus
  {
    private final g<?> a;
    private final ResourceCallback b;
    
    LoadStatus(ResourceCallback paramResourceCallback, g<?> paramG)
    {
      b = paramResourceCallback;
      a = paramG;
    }
    
    public void cancel()
    {
      a.b(b);
    }
  }
  
  @VisibleForTesting
  static class a
  {
    final f.d a;
    final Pools.Pool<f<?>> b = FactoryPools.simple(150, new FactoryPools.Factory()
    {
      public f<?> a()
      {
        return new f(a, b);
      }
    });
    private int c;
    
    a(f.d paramD)
    {
      a = paramD;
    }
    
    <R> f<R> a(GlideContext paramGlideContext, Object paramObject, i paramI, Key paramKey, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, Priority paramPriority, DiskCacheStrategy paramDiskCacheStrategy, Map<Class<?>, Transformation<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, Options paramOptions, f.a<R> paramA)
    {
      f localF = (f)Preconditions.checkNotNull((f)b.acquire());
      int i = c;
      c = (i + 1);
      return localF.a(paramGlideContext, paramObject, paramI, paramKey, paramInt1, paramInt2, paramClass, paramClass1, paramPriority, paramDiskCacheStrategy, paramMap, paramBoolean1, paramBoolean2, paramBoolean3, paramOptions, paramA, i);
    }
  }
  
  @VisibleForTesting
  static class b
  {
    final GlideExecutor a;
    final GlideExecutor b;
    final GlideExecutor c;
    final GlideExecutor d;
    final h e;
    final Pools.Pool<g<?>> f = FactoryPools.simple(150, new FactoryPools.Factory()
    {
      public g<?> a()
      {
        return new g(a, b, c, d, e, f);
      }
    });
    
    b(GlideExecutor paramGlideExecutor1, GlideExecutor paramGlideExecutor2, GlideExecutor paramGlideExecutor3, GlideExecutor paramGlideExecutor4, h paramH)
    {
      a = paramGlideExecutor1;
      b = paramGlideExecutor2;
      c = paramGlideExecutor3;
      d = paramGlideExecutor4;
      e = paramH;
    }
    
    private static void a(ExecutorService paramExecutorService)
    {
      paramExecutorService.shutdown();
      try
      {
        if (!paramExecutorService.awaitTermination(5L, TimeUnit.SECONDS))
        {
          paramExecutorService.shutdownNow();
          if (paramExecutorService.awaitTermination(5L, TimeUnit.SECONDS)) {
            return;
          }
          throw new RuntimeException("Failed to shutdown");
        }
        return;
      }
      catch (InterruptedException paramExecutorService)
      {
        throw new RuntimeException(paramExecutorService);
      }
    }
    
    <R> g<R> a(Key paramKey, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
    {
      return ((g)Preconditions.checkNotNull((g)f.acquire())).a(paramKey, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4);
    }
    
    @VisibleForTesting
    void a()
    {
      a(a);
      a(b);
      a(c);
      a(d);
    }
  }
  
  private static class c
    implements f.d
  {
    private final DiskCache.Factory a;
    private volatile DiskCache b;
    
    c(DiskCache.Factory paramFactory)
    {
      a = paramFactory;
    }
    
    public DiskCache a()
    {
      if (b == null) {
        try
        {
          if (b == null) {
            b = a.build();
          }
          if (b == null) {
            b = new DiskCacheAdapter();
          }
        }
        finally {}
      }
      return b;
    }
    
    @VisibleForTesting
    void b()
    {
      try
      {
        DiskCache localDiskCache = b;
        if (localDiskCache == null) {
          return;
        }
        b.clear();
        return;
      }
      finally {}
    }
  }
}
