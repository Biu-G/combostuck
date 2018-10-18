package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.Options;
import java.io.InputStream;

public class ResourceLoader<Data>
  implements ModelLoader<Integer, Data>
{
  private final ModelLoader<Uri, Data> a;
  private final Resources b;
  
  public ResourceLoader(Resources paramResources, ModelLoader<Uri, Data> paramModelLoader)
  {
    b = paramResources;
    a = paramModelLoader;
  }
  
  @Nullable
  private Uri a(Integer paramInteger)
  {
    try
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("android.resource://");
      ((StringBuilder)localObject).append(b.getResourcePackageName(paramInteger.intValue()));
      ((StringBuilder)localObject).append('/');
      ((StringBuilder)localObject).append(b.getResourceTypeName(paramInteger.intValue()));
      ((StringBuilder)localObject).append('/');
      ((StringBuilder)localObject).append(b.getResourceEntryName(paramInteger.intValue()));
      localObject = Uri.parse(((StringBuilder)localObject).toString());
      return localObject;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      if (Log.isLoggable("ResourceLoader", 5))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Received invalid resource id: ");
        localStringBuilder.append(paramInteger);
        Log.w("ResourceLoader", localStringBuilder.toString(), localNotFoundException);
      }
    }
    return null;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull Integer paramInteger, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramInteger = a(paramInteger);
    if (paramInteger == null) {
      return null;
    }
    return a.buildLoadData(paramInteger, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull Integer paramInteger)
  {
    return true;
  }
  
  public static final class AssetFileDescriptorFactory
    implements ModelLoaderFactory<Integer, AssetFileDescriptor>
  {
    private final Resources a;
    
    public AssetFileDescriptorFactory(Resources paramResources)
    {
      a = paramResources;
    }
    
    public ModelLoader<Integer, AssetFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new ResourceLoader(a, paramMultiModelLoaderFactory.build(Uri.class, AssetFileDescriptor.class));
    }
    
    public void teardown() {}
  }
  
  public static class FileDescriptorFactory
    implements ModelLoaderFactory<Integer, ParcelFileDescriptor>
  {
    private final Resources a;
    
    public FileDescriptorFactory(Resources paramResources)
    {
      a = paramResources;
    }
    
    @NonNull
    public ModelLoader<Integer, ParcelFileDescriptor> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new ResourceLoader(a, paramMultiModelLoaderFactory.build(Uri.class, ParcelFileDescriptor.class));
    }
    
    public void teardown() {}
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<Integer, InputStream>
  {
    private final Resources a;
    
    public StreamFactory(Resources paramResources)
    {
      a = paramResources;
    }
    
    @NonNull
    public ModelLoader<Integer, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new ResourceLoader(a, paramMultiModelLoaderFactory.build(Uri.class, InputStream.class));
    }
    
    public void teardown() {}
  }
  
  public static class UriFactory
    implements ModelLoaderFactory<Integer, Uri>
  {
    private final Resources a;
    
    public UriFactory(Resources paramResources)
    {
      a = paramResources;
    }
    
    @NonNull
    public ModelLoader<Integer, Uri> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new ResourceLoader(a, UnitModelLoader.getInstance());
    }
    
    public void teardown() {}
  }
}
