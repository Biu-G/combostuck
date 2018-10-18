package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ByteBufferFileLoader
  implements ModelLoader<File, ByteBuffer>
{
  public ByteBufferFileLoader() {}
  
  public ModelLoader.LoadData<ByteBuffer> buildLoadData(@NonNull File paramFile, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramFile), new a(paramFile));
  }
  
  public boolean handles(@NonNull File paramFile)
  {
    return true;
  }
  
  public static class Factory
    implements ModelLoaderFactory<File, ByteBuffer>
  {
    public Factory() {}
    
    @NonNull
    public ModelLoader<File, ByteBuffer> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new ByteBufferFileLoader();
    }
    
    public void teardown() {}
  }
  
  private static final class a
    implements DataFetcher<ByteBuffer>
  {
    private final File a;
    
    a(File paramFile)
    {
      a = paramFile;
    }
    
    public void cancel() {}
    
    public void cleanup() {}
    
    @NonNull
    public Class<ByteBuffer> getDataClass()
    {
      return ByteBuffer.class;
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return DataSource.LOCAL;
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super ByteBuffer> paramDataCallback)
    {
      try
      {
        paramPriority = ByteBufferUtil.fromFile(a);
        paramDataCallback.onDataReady(paramPriority);
        return;
      }
      catch (IOException paramPriority)
      {
        if (Log.isLoggable("ByteBufferFileLoader", 3)) {
          Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", paramPriority);
        }
        paramDataCallback.onLoadFailed(paramPriority);
      }
    }
  }
}
