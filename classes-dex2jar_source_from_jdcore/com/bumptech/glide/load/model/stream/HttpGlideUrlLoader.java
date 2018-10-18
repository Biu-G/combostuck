package com.bumptech.glide.load.model.stream;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.HttpUrlFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;

public class HttpGlideUrlLoader
  implements ModelLoader<GlideUrl, InputStream>
{
  public static final Option<Integer> TIMEOUT = Option.memory("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(2500));
  @Nullable
  private final ModelCache<GlideUrl, GlideUrl> a;
  
  public HttpGlideUrlLoader()
  {
    this(null);
  }
  
  public HttpGlideUrlLoader(@Nullable ModelCache<GlideUrl, GlideUrl> paramModelCache)
  {
    a = paramModelCache;
  }
  
  public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull GlideUrl paramGlideUrl, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    GlideUrl localGlideUrl = paramGlideUrl;
    if (a != null)
    {
      localGlideUrl = (GlideUrl)a.get(paramGlideUrl, 0, 0);
      if (localGlideUrl == null)
      {
        a.put(paramGlideUrl, 0, 0, paramGlideUrl);
        localGlideUrl = paramGlideUrl;
      }
    }
    return new ModelLoader.LoadData(localGlideUrl, new HttpUrlFetcher(localGlideUrl, ((Integer)paramOptions.get(TIMEOUT)).intValue()));
  }
  
  public boolean handles(@NonNull GlideUrl paramGlideUrl)
  {
    return true;
  }
  
  public static class Factory
    implements ModelLoaderFactory<GlideUrl, InputStream>
  {
    private final ModelCache<GlideUrl, GlideUrl> a = new ModelCache(500L);
    
    public Factory() {}
    
    @NonNull
    public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new HttpGlideUrlLoader(a);
    }
    
    public void teardown() {}
  }
}
