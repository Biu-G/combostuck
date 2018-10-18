package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import java.io.File;
import java.util.List;

class n
  implements DataFetcher.DataCallback<Object>, DataFetcherGenerator
{
  private final DataFetcherGenerator.FetcherReadyCallback a;
  private final e<?> b;
  private int c;
  private int d = -1;
  private Key e;
  private List<ModelLoader<File, ?>> f;
  private int g;
  private volatile ModelLoader.LoadData<?> h;
  private File i;
  private o j;
  
  n(e<?> paramE, DataFetcherGenerator.FetcherReadyCallback paramFetcherReadyCallback)
  {
    b = paramE;
    a = paramFetcherReadyCallback;
  }
  
  private boolean c()
  {
    return g < f.size();
  }
  
  public boolean a()
  {
    Object localObject = b.o();
    boolean bool2 = ((List)localObject).isEmpty();
    boolean bool1 = false;
    if (bool2) {
      return false;
    }
    List localList = b.l();
    if (localList.isEmpty())
    {
      if (File.class.equals(b.j())) {
        return false;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Failed to find any load path from ");
      ((StringBuilder)localObject).append(b.k());
      ((StringBuilder)localObject).append(" to ");
      ((StringBuilder)localObject).append(b.j());
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    for (;;)
    {
      if ((f != null) && (c()))
      {
        h = null;
        while ((!bool1) && (c()))
        {
          localObject = f;
          int k = g;
          g = (k + 1);
          h = ((ModelLoader)((List)localObject).get(k)).buildLoadData(i, b.g(), b.h(), b.e());
          if ((h != null) && (b.a(h.fetcher.getDataClass())))
          {
            h.fetcher.loadData(b.d(), this);
            bool1 = true;
          }
        }
        return bool1;
      }
      d += 1;
      if (d >= localList.size())
      {
        c += 1;
        if (c >= ((List)localObject).size()) {
          return false;
        }
        d = 0;
      }
      Key localKey = (Key)((List)localObject).get(c);
      Class localClass = (Class)localList.get(d);
      Transformation localTransformation = b.c(localClass);
      j = new o(b.i(), localKey, b.f(), b.g(), b.h(), localTransformation, localClass, b.e());
      i = b.b().get(j);
      if (i != null)
      {
        e = localKey;
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
    a.onDataFetcherReady(e, paramObject, h.fetcher, DataSource.RESOURCE_DISK_CACHE, j);
  }
  
  public void onLoadFailed(@NonNull Exception paramException)
  {
    a.onDataFetcherFailed(j, paramException, h.fetcher, DataSource.RESOURCE_DISK_CACHE);
  }
}
