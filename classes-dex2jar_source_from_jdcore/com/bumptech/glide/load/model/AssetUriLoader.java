package com.bumptech.glide.load.model;

import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorAssetPathFetcher;
import com.bumptech.glide.load.data.StreamAssetPathFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
import java.util.List;

public class AssetUriLoader<Data>
  implements ModelLoader<Uri, Data>
{
  private static final int a = "file:///android_asset/".length();
  private final AssetManager b;
  private final AssetFetcherFactory<Data> c;
  
  public AssetUriLoader(AssetManager paramAssetManager, AssetFetcherFactory<Data> paramAssetFetcherFactory)
  {
    b = paramAssetManager;
    c = paramAssetFetcherFactory;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramOptions = paramUri.toString().substring(a);
    return new ModelLoader.LoadData(new ObjectKey(paramUri), c.buildFetcher(b, paramOptions));
  }
  
  public boolean handles(@NonNull Uri paramUri)
  {
    boolean bool3 = "file".equals(paramUri.getScheme());
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (bool3)
    {
      bool1 = bool2;
      if (!paramUri.getPathSegments().isEmpty())
      {
        bool1 = bool2;
        if ("android_asset".equals(paramUri.getPathSegments().get(0))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static abstract interface AssetFetcherFactory<Data>
  {
    public abstract DataFetcher<Data> buildFetcher(AssetManager paramAssetManager, String paramString);
  }
  
  public static class FileDescriptorFactory
    implements AssetUriLoader.AssetFetcherFactory<ParcelFileDescriptor>, ModelLoaderFactory<Uri, ParcelFileDescriptor>
  {
    private final AssetManager a;
    
    public FileDescriptorFactory(AssetManager paramAssetManager)
    {
      a = paramAssetManager;
    }
    
    @NonNull
    public ModelLoader<Uri, ParcelFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new AssetUriLoader(a, this);
    }
    
    public DataFetcher<ParcelFileDescriptor> buildFetcher(AssetManager paramAssetManager, String paramString)
    {
      return new FileDescriptorAssetPathFetcher(paramAssetManager, paramString);
    }
    
    public void teardown() {}
  }
  
  public static class StreamFactory
    implements AssetUriLoader.AssetFetcherFactory<InputStream>, ModelLoaderFactory<Uri, InputStream>
  {
    private final AssetManager a;
    
    public StreamFactory(AssetManager paramAssetManager)
    {
      a = paramAssetManager;
    }
    
    @NonNull
    public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new AssetUriLoader(a, this);
    }
    
    public DataFetcher<InputStream> buildFetcher(AssetManager paramAssetManager, String paramString)
    {
      return new StreamAssetPathFetcher(paramAssetManager, paramString);
    }
    
    public void teardown() {}
  }
}
