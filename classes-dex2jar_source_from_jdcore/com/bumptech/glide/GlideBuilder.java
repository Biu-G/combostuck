package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Factory;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator.Builder;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory;
import com.bumptech.glide.request.RequestOptions;
import java.util.Map;

public final class GlideBuilder
{
  private final Map<Class<?>, TransitionOptions<?, ?>> a = new ArrayMap();
  private Engine b;
  private BitmapPool c;
  private ArrayPool d;
  private MemoryCache e;
  private GlideExecutor f;
  private GlideExecutor g;
  private DiskCache.Factory h;
  private MemorySizeCalculator i;
  private ConnectivityMonitorFactory j;
  private int k = 4;
  private RequestOptions l = new RequestOptions();
  @Nullable
  private RequestManagerRetriever.RequestManagerFactory m;
  private GlideExecutor n;
  private boolean o;
  
  public GlideBuilder() {}
  
  void a(@Nullable RequestManagerRetriever.RequestManagerFactory paramRequestManagerFactory)
  {
    m = paramRequestManagerFactory;
  }
  
  @NonNull
  public Glide build(@NonNull Context paramContext)
  {
    if (f == null) {
      f = GlideExecutor.newSourceExecutor();
    }
    if (g == null) {
      g = GlideExecutor.newDiskCacheExecutor();
    }
    if (n == null) {
      n = GlideExecutor.newAnimationExecutor();
    }
    if (i == null) {
      i = new MemorySizeCalculator.Builder(paramContext).build();
    }
    if (j == null) {
      j = new DefaultConnectivityMonitorFactory();
    }
    if (c == null)
    {
      int i1 = i.getBitmapPoolSize();
      if (i1 > 0) {
        c = new LruBitmapPool(i1);
      } else {
        c = new BitmapPoolAdapter();
      }
    }
    if (d == null) {
      d = new LruArrayPool(i.getArrayPoolSizeInBytes());
    }
    if (e == null) {
      e = new LruResourceCache(i.getMemoryCacheSize());
    }
    if (h == null) {
      h = new InternalCacheDiskCacheFactory(paramContext);
    }
    if (b == null) {
      b = new Engine(e, h, g, f, GlideExecutor.newUnlimitedSourceExecutor(), GlideExecutor.newAnimationExecutor(), o);
    }
    RequestManagerRetriever localRequestManagerRetriever = new RequestManagerRetriever(m);
    return new Glide(paramContext, b, e, c, d, localRequestManagerRetriever, j, k, l.lock(), a);
  }
  
  @NonNull
  public GlideBuilder setAnimationExecutor(@Nullable GlideExecutor paramGlideExecutor)
  {
    n = paramGlideExecutor;
    return this;
  }
  
  @NonNull
  public GlideBuilder setArrayPool(@Nullable ArrayPool paramArrayPool)
  {
    d = paramArrayPool;
    return this;
  }
  
  @NonNull
  public GlideBuilder setBitmapPool(@Nullable BitmapPool paramBitmapPool)
  {
    c = paramBitmapPool;
    return this;
  }
  
  @NonNull
  public GlideBuilder setConnectivityMonitorFactory(@Nullable ConnectivityMonitorFactory paramConnectivityMonitorFactory)
  {
    j = paramConnectivityMonitorFactory;
    return this;
  }
  
  @Deprecated
  public GlideBuilder setDecodeFormat(DecodeFormat paramDecodeFormat)
  {
    l = l.apply(new RequestOptions().format(paramDecodeFormat));
    return this;
  }
  
  @NonNull
  public GlideBuilder setDefaultRequestOptions(@Nullable RequestOptions paramRequestOptions)
  {
    l = paramRequestOptions;
    return this;
  }
  
  @NonNull
  public <T> GlideBuilder setDefaultTransitionOptions(@NonNull Class<T> paramClass, @Nullable TransitionOptions<?, T> paramTransitionOptions)
  {
    a.put(paramClass, paramTransitionOptions);
    return this;
  }
  
  @NonNull
  public GlideBuilder setDiskCache(@Nullable DiskCache.Factory paramFactory)
  {
    h = paramFactory;
    return this;
  }
  
  @Deprecated
  public GlideBuilder setDiskCache(final DiskCache paramDiskCache)
  {
    setDiskCache(new DiskCache.Factory()
    {
      public DiskCache build()
      {
        return paramDiskCache;
      }
    });
  }
  
  @NonNull
  public GlideBuilder setDiskCacheExecutor(@Nullable GlideExecutor paramGlideExecutor)
  {
    g = paramGlideExecutor;
    return this;
  }
  
  @NonNull
  public GlideBuilder setIsActiveResourceRetentionAllowed(boolean paramBoolean)
  {
    o = paramBoolean;
    return this;
  }
  
  @NonNull
  public GlideBuilder setLogLevel(int paramInt)
  {
    if ((paramInt >= 2) && (paramInt <= 6))
    {
      k = paramInt;
      return this;
    }
    throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
  }
  
  @NonNull
  public GlideBuilder setMemoryCache(@Nullable MemoryCache paramMemoryCache)
  {
    e = paramMemoryCache;
    return this;
  }
  
  @NonNull
  public GlideBuilder setMemorySizeCalculator(@NonNull MemorySizeCalculator.Builder paramBuilder)
  {
    return setMemorySizeCalculator(paramBuilder.build());
  }
  
  @NonNull
  public GlideBuilder setMemorySizeCalculator(@Nullable MemorySizeCalculator paramMemorySizeCalculator)
  {
    i = paramMemorySizeCalculator;
    return this;
  }
  
  @Deprecated
  public GlideBuilder setResizeExecutor(@Nullable GlideExecutor paramGlideExecutor)
  {
    return setSourceExecutor(paramGlideExecutor);
  }
  
  @NonNull
  public GlideBuilder setSourceExecutor(@Nullable GlideExecutor paramGlideExecutor)
  {
    f = paramGlideExecutor;
    return this;
  }
}
