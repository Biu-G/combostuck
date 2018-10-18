package com.bumptech.glide.integration.okhttp3;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;
import okhttp3.Call.Factory;
import okhttp3.OkHttpClient;

public class OkHttpUrlLoader
  implements ModelLoader<GlideUrl, InputStream>
{
  private final Call.Factory a;
  
  public OkHttpUrlLoader(@NonNull Call.Factory paramFactory)
  {
    a = paramFactory;
  }
  
  public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull GlideUrl paramGlideUrl, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(paramGlideUrl, new OkHttpStreamFetcher(a, paramGlideUrl));
  }
  
  public boolean handles(@NonNull GlideUrl paramGlideUrl)
  {
    return true;
  }
  
  public static class Factory
    implements ModelLoaderFactory<GlideUrl, InputStream>
  {
    private static volatile Call.Factory a;
    private final Call.Factory b;
    
    public Factory()
    {
      this(a());
    }
    
    public Factory(@NonNull Call.Factory paramFactory)
    {
      b = paramFactory;
    }
    
    private static Call.Factory a()
    {
      if (a == null) {
        try
        {
          if (a == null) {
            a = new OkHttpClient();
          }
        }
        finally {}
      }
      return a;
    }
    
    @NonNull
    public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new OkHttpUrlLoader(b);
    }
    
    public void teardown() {}
  }
}
