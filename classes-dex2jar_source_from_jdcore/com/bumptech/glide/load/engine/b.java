package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import java.io.File;
import java.util.List;

class b
  implements DataFetcher.DataCallback<Object>, DataFetcherGenerator
{
  private final List<Key> a;
  private final e<?> b;
  private final DataFetcherGenerator.FetcherReadyCallback c;
  private int d = -1;
  private Key e;
  private List<ModelLoader<File, ?>> f;
  private int g;
  private volatile ModelLoader.LoadData<?> h;
  private File i;
  
  b(e<?> paramE, DataFetcherGenerator.FetcherReadyCallback paramFetcherReadyCallback)
  {
    this(paramE.o(), paramE, paramFetcherReadyCallback);
  }
  
  b(List<Key> paramList, e<?> paramE, DataFetcherGenerator.FetcherReadyCallback paramFetcherReadyCallback)
  {
    a = paramList;
    b = paramE;
    c = paramFetcherReadyCallback;
  }
  
  private boolean c()
  {
    return g < f.size();
  }
  
  public boolean a()
  {
    for (;;)
    {
      Object localObject = f;
      boolean bool = false;
      if ((localObject != null) && (c()))
      {
        h = null;
        while ((!bool) && (c()))
        {
          localObject = f;
          int j = g;
          g = (j + 1);
          h = ((ModelLoader)((List)localObject).get(j)).buildLoadData(i, b.g(), b.h(), b.e());
          if ((h != null) && (b.a(h.fetcher.getDataClass())))
          {
            h.fetcher.loadData(b.d(), this);
            bool = true;
          }
        }
        return bool;
      }
      d += 1;
      if (d >= a.size()) {
        return false;
      }
      localObject = (Key)a.get(d);
      c localC = new c((Key)localObject, b.f());
      i = b.b().get(localC);
      if (i != null)
      {
        e = ((Key)localObject);
        f = b.a(i);
        g = 0;
      }
    }
  }
  
  public void b()
  {
    ModelLoader.LoadData localLoadData = h;
    if (localLoadData != null) {
      fetcher.cancel();
    }
  }
  
  public void onDataReady(Object paramObject)
  {
    c.onDataFetcherReady(e, paramObject, h.fetcher, DataSource.DATA_DISK_CACHE, e);
  }
  
  public void onLoadFailed(@NonNull Exception paramException)
  {
    c.onDataFetcherFailed(e, paramException, h.fetcher, DataSource.DATA_DISK_CACHE);
  }
}
