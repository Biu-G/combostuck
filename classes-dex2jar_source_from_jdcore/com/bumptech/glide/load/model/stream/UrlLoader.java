package com.bumptech.glide.load.model.stream;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;
import java.net.URL;

public class UrlLoader
  implements ModelLoader<URL, InputStream>
{
  private final ModelLoader<GlideUrl, InputStream> a;
  
  public UrlLoader(ModelLoader<GlideUrl, InputStream> paramModelLoader)
  {
    a = paramModelLoader;
  }
  
  public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull URL paramURL, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return a.buildLoadData(new GlideUrl(paramURL), paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull URL paramURL)
  {
    return true;
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<URL, InputStream>
  {
    public StreamFactory() {}
    
    @NonNull
    public ModelLoader<URL, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new UrlLoader(paramMultiModelLoaderFactory.build(GlideUrl.class, InputStream.class));
    }
    
    public void teardown() {}
  }
}
