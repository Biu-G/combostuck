package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.AssetFileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.FileDescriptorLocalUriFetcher;
import com.bumptech.glide.load.data.StreamLocalUriFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class UriLoader<Data>
  implements ModelLoader<Uri, Data>
{
  private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "file", "android.resource", "content" })));
  private final LocalUriFetcherFactory<Data> b;
  
  public UriLoader(LocalUriFetcherFactory<Data> paramLocalUriFetcherFactory)
  {
    b = paramLocalUriFetcherFactory;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramUri), b.build(paramUri));
  }
  
  public boolean handles(@NonNull Uri paramUri)
  {
    return a.contains(paramUri.getScheme());
  }
  
  public static final class AssetFileDescriptorFactory
    implements ModelLoaderFactory<Uri, AssetFileDescriptor>, UriLoader.LocalUriFetcherFactory<AssetFileDescriptor>
  {
    private final ContentResolver a;
    
    public AssetFileDescriptorFactory(ContentResolver paramContentResolver)
    {
      a = paramContentResolver;
    }
    
    public DataFetcher<AssetFileDescriptor> build(Uri paramUri)
    {
      return new AssetFileDescriptorLocalUriFetcher(a, paramUri);
    }
    
    public ModelLoader<Uri, AssetFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new UriLoader(this);
    }
    
    public void teardown() {}
  }
  
  public static class FileDescriptorFactory
    implements ModelLoaderFactory<Uri, ParcelFileDescriptor>, UriLoader.LocalUriFetcherFactory<ParcelFileDescriptor>
  {
    private final ContentResolver a;
    
    public FileDescriptorFactory(ContentResolver paramContentResolver)
    {
      a = paramContentResolver;
    }
    
    public DataFetcher<ParcelFileDescriptor> build(Uri paramUri)
    {
      return new FileDescriptorLocalUriFetcher(a, paramUri);
    }
    
    @NonNull
    public ModelLoader<Uri, ParcelFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new UriLoader(this);
    }
    
    public void teardown() {}
  }
  
  public static abstract interface LocalUriFetcherFactory<Data>
  {
    public abstract DataFetcher<Data> build(Uri paramUri);
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<Uri, InputStream>, UriLoader.LocalUriFetcherFactory<InputStream>
  {
    private final ContentResolver a;
    
    public StreamFactory(ContentResolver paramContentResolver)
    {
      a = paramContentResolver;
    }
    
    public DataFetcher<InputStream> build(Uri paramUri)
    {
      return new StreamLocalUriFetcher(a, paramUri);
    }
    
    @NonNull
    public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new UriLoader(this);
    }
    
    public void teardown() {}
  }
}
