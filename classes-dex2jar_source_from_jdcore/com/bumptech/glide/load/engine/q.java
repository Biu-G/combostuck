package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.util.LogTime;
import java.util.Collections;
import java.util.List;

class q
  implements DataFetcher.DataCallback<Object>, DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback
{
  private final e<?> a;
  private final DataFetcherGenerator.FetcherReadyCallback b;
  private int c;
  private b d;
  private Object e;
  private volatile ModelLoader.LoadData<?> f;
  private c g;
  
  q(e<?> paramE, DataFetcherGenerator.FetcherReadyCallback paramFetcherReadyCallback)
  {
    a = paramE;
    b = paramFetcherReadyCallback;
  }
  
  private void a(Object paramObject)
  {
    long l = LogTime.getLogTime();
    try
    {
      Encoder localEncoder = a.a(paramObject);
      Object localObject = new d(localEncoder, paramObject, a.e());
      g = new c(f.sourceKey, a.f());
      a.b().put(g, (DiskCache.Writer)localObject);
      if (Log.isLoggable("SourceGenerator", 2))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Finished encoding source to cache, key: ");
        ((StringBuilder)localObject).append(g);
        ((StringBuilder)localObject).append(", data: ");
        ((StringBuilder)localObject).append(paramObject);
        ((StringBuilder)localObject).append(", encoder: ");
        ((StringBuilder)localObject).append(localEncoder);
        ((StringBuilder)localObject).append(", duration: ");
        ((StringBuilder)localObject).append(LogTime.getElapsedMillis(l));
        Log.v("SourceGenerator", ((StringBuilder)localObject).toString());
      }
      f.fetcher.cleanup();
      d = new b(Collections.singletonList(f.sourceKey), a, this);
      return;
    }
    finally
    {
      f.fetcher.cleanup();
    }
  }
  
  private boolean c()
  {
    return c < a.n().size();
  }
  
  public boolean a()
  {
    Object localObject;
    if (e != null)
    {
      localObject = e;
      e = null;
      a(localObject);
    }
    if ((d != null) && (d.a())) {
      return true;
    }
    d = null;
    f = null;
    for (boolean bool = false; (!bool) && (c()); bool = true)
    {
      label53:
      localObject = a.n();
      int i = c;
      c = (i + 1);
      f = ((ModelLoader.LoadData)((List)localObject).get(i));
      if ((f == null) || ((!a.c().isDataCacheable(f.fetcher.getDataSource())) && (!a.a(f.fetcher.getDataClass())))) {
        break label53;
      }
      f.fetcher.loadData(a.d(), this);
    }
    return bool;
  }
  
  public void b()
  {
    ModelLoader.LoadData localLoadData = f;
    if (localLoadData != null) {
      fetcher.cancel();
    }
  }
  
  public void onDataFetcherFailed(Key paramKey, Exception paramException, DataFetcher<?> paramDataFetcher, DataSource paramDataSource)
  {
    b.onDataFetcherFailed(paramKey, paramException, paramDataFetcher, f.fetcher.getDataSource());
  }
  
  public void onDataFetcherReady(Key paramKey1, Object paramObject, DataFetcher<?> paramDataFetcher, DataSource paramDataSource, Key paramKey2)
  {
    b.onDataFetcherReady(paramKey1, paramObject, paramDataFetcher, f.fetcher.getDataSource(), paramKey1);
  }
  
  public void onDataReady(Object paramObject)
  {
    DiskCacheStrategy localDiskCacheStrategy = a.c();
    if ((paramObject != null) && (localDiskCacheStrategy.isDataCacheable(f.fetcher.getDataSource())))
    {
      e = paramObject;
      b.reschedule();
      return;
    }
    b.onDataFetcherReady(f.sourceKey, paramObject, f.fetcher, f.fetcher.getDataSource(), g);
  }
  
  public void onLoadFailed(@NonNull Exception paramException)
  {
    b.onDataFetcherFailed(g, paramException, f.fetcher, f.fetcher.getDataSource());
  }
  
  public void reschedule()
  {
    throw new UnsupportedOperationException();
  }
}
