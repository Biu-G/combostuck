package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.bumptech.glide.load.Options;
import java.io.File;
import java.io.InputStream;

public class StringLoader<Data>
  implements ModelLoader<String, Data>
{
  private final ModelLoader<Uri, Data> a;
  
  public StringLoader(ModelLoader<Uri, Data> paramModelLoader)
  {
    a = paramModelLoader;
  }
  
  @Nullable
  private static Uri a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if (paramString.charAt(0) == '/') {
      return b(paramString);
    }
    Uri localUri = Uri.parse(paramString);
    if (localUri.getScheme() == null) {
      return b(paramString);
    }
    return localUri;
  }
  
  private static Uri b(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull String paramString, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return null;
    }
    return a.buildLoadData(paramString, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull String paramString)
  {
    return true;
  }
  
  public static final class AssetFileDescriptorFactory
    implements ModelLoaderFactory<String, AssetFileDescriptor>
  {
    public AssetFileDescriptorFactory() {}
    
    public ModelLoader<String, AssetFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new StringLoader(paramMultiModelLoaderFactory.build(Uri.class, AssetFileDescriptor.class));
    }
    
    public void teardown() {}
  }
  
  public static class FileDescriptorFactory
    implements ModelLoaderFactory<String, ParcelFileDescriptor>
  {
    public FileDescriptorFactory() {}
    
    @NonNull
    public ModelLoader<String, ParcelFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new StringLoader(paramMultiModelLoaderFactory.build(Uri.class, ParcelFileDescriptor.class));
    }
    
    public void teardown() {}
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<String, InputStream>
  {
    public StreamFactory() {}
    
    @NonNull
    public ModelLoader<String, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new StringLoader(paramMultiModelLoaderFactory.build(Uri.class, InputStream.class));
    }
    
    public void teardown() {}
  }
}
