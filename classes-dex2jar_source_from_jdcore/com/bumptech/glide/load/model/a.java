package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class a<Model, Data>
  implements ModelLoader<Model, Data>
{
  private final List<ModelLoader<Model, Data>> a;
  private final Pools.Pool<List<Throwable>> b;
  
  a(@NonNull List<ModelLoader<Model, Data>> paramList, @NonNull Pools.Pool<List<Throwable>> paramPool)
  {
    a = paramList;
    b = paramPool;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull Model paramModel, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    int j = a.size();
    ArrayList localArrayList = new ArrayList(j);
    Object localObject3 = null;
    int i = 0;
    Object localObject2;
    for (Object localObject1 = null; i < j; localObject1 = localObject2)
    {
      Object localObject4 = (ModelLoader)a.get(i);
      localObject2 = localObject1;
      if (((ModelLoader)localObject4).handles(paramModel))
      {
        localObject4 = ((ModelLoader)localObject4).buildLoadData(paramModel, paramInt1, paramInt2, paramOptions);
        localObject2 = localObject1;
        if (localObject4 != null)
        {
          localObject2 = sourceKey;
          localArrayList.add(fetcher);
        }
      }
      i += 1;
    }
    paramModel = localObject3;
    if (!localArrayList.isEmpty()) {
      paramModel = new ModelLoader.LoadData(localObject1, new a(localArrayList, b));
    }
    return paramModel;
  }
  
  public boolean handles(@NonNull Model paramModel)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      if (((ModelLoader)localIterator.next()).handles(paramModel)) {
        return true;
      }
    }
    return false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MultiModelLoader{modelLoaders=");
    localStringBuilder.append(Arrays.toString(a.toArray()));
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static class a<Data>
    implements DataFetcher<Data>, DataFetcher.DataCallback<Data>
  {
    private final List<DataFetcher<Data>> a;
    private final Pools.Pool<List<Throwable>> b;
    private int c;
    private Priority d;
    private DataFetcher.DataCallback<? super Data> e;
    @Nullable
    private List<Throwable> f;
    
    a(@NonNull List<DataFetcher<Data>> paramList, @NonNull Pools.Pool<List<Throwable>> paramPool)
    {
      b = paramPool;
      Preconditions.checkNotEmpty(paramList);
      a = paramList;
      c = 0;
    }
    
    private void a()
    {
      if (c < a.size() - 1)
      {
        c += 1;
        loadData(d, e);
        return;
      }
      Preconditions.checkNotNull(f);
      e.onLoadFailed(new GlideException("Fetch failed", new ArrayList(f)));
    }
    
    public void cancel()
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((DataFetcher)localIterator.next()).cancel();
      }
    }
    
    public void cleanup()
    {
      if (f != null) {
        b.release(f);
      }
      f = null;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((DataFetcher)localIterator.next()).cleanup();
      }
    }
    
    @NonNull
    public Class<Data> getDataClass()
    {
      return ((DataFetcher)a.get(0)).getDataClass();
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return ((DataFetcher)a.get(0)).getDataSource();
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super Data> paramDataCallback)
    {
      d = paramPriority;
      e = paramDataCallback;
      f = ((List)b.acquire());
      ((DataFetcher)a.get(c)).loadData(paramPriority, this);
    }
    
    public void onDataReady(@Nullable Data paramData)
    {
      if (paramData != null)
      {
        e.onDataReady(paramData);
        return;
      }
      a();
    }
    
    public void onLoadFailed(@NonNull Exception paramException)
    {
      ((List)Preconditions.checkNotNull(f)).add(paramException);
      a();
    }
  }
}
