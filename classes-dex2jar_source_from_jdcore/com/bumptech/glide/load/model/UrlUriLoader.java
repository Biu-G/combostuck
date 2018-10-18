package com.bumptech.glide.load.model;

import android.net.Uri;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class UrlUriLoader<Data>
  implements ModelLoader<Uri, Data>
{
  private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "http", "https" })));
  private final ModelLoader<GlideUrl, Data> b;
  
  public UrlUriLoader(ModelLoader<GlideUrl, Data> paramModelLoader)
  {
    b = paramModelLoader;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramUri = new GlideUrl(paramUri.toString());
    return b.buildLoadData(paramUri, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull Uri paramUri)
  {
    return a.contains(paramUri.getScheme());
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<Uri, InputStream>
  {
    public StreamFactory() {}
    
    @NonNull
    public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new UrlUriLoader(paramMultiModelLoaderFactory.build(GlideUrl.class, InputStream.class));
    }
    
    public void teardown() {}
  }
}
