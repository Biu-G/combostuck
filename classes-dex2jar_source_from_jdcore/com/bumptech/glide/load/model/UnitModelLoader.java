package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.signature.ObjectKey;

public class UnitModelLoader<Model>
  implements ModelLoader<Model, Model>
{
  private static final UnitModelLoader<?> a = new UnitModelLoader();
  
  @Deprecated
  public UnitModelLoader() {}
  
  public static <T> UnitModelLoader<T> getInstance()
  {
    return a;
  }
  
  public ModelLoader.LoadData<Model> buildLoadData(@NonNull Model paramModel, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramModel), new a(paramModel));
  }
  
  public boolean handles(@NonNull Model paramModel)
  {
    return true;
  }
  
  public static class Factory<Model>
    implements ModelLoaderFactory<Model, Model>
  {
    private static final Factory<?> a = new Factory();
    
    @Deprecated
    public Factory() {}
    
    public static <T> Factory<T> getInstance()
    {
      return a;
    }
    
    @NonNull
    public ModelLoader<Model, Model> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return UnitModelLoader.getInstance();
    }
    
    public void teardown() {}
  }
  
  private static class a<Model>
    implements DataFetcher<Model>
  {
    private final Model a;
    
    a(Model paramModel)
    {
      a = paramModel;
    }
    
    public void cancel() {}
    
    public void cleanup() {}
    
    @NonNull
    public Class<Model> getDataClass()
    {
      return a.getClass();
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return DataSource.LOCAL;
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super Model> paramDataCallback)
    {
      paramDataCallback.onDataReady(a);
    }
  }
}
