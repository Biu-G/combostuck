package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class DataUrlLoader<Data>
  implements ModelLoader<String, Data>
{
  private final DataDecoder<Data> a;
  
  public DataUrlLoader(DataDecoder<Data> paramDataDecoder)
  {
    a = paramDataDecoder;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull String paramString, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramString), new a(paramString, a));
  }
  
  public boolean handles(@NonNull String paramString)
  {
    return paramString.startsWith("data:image");
  }
  
  public static abstract interface DataDecoder<Data>
  {
    public abstract void close(Data paramData)
      throws IOException;
    
    public abstract Data decode(String paramString)
      throws IllegalArgumentException;
    
    public abstract Class<Data> getDataClass();
  }
  
  public static final class StreamFactory
    implements ModelLoaderFactory<String, InputStream>
  {
    private final DataUrlLoader.DataDecoder<InputStream> a = new DataUrlLoader.DataDecoder()
    {
      public InputStream a(String paramAnonymousString)
      {
        if (paramAnonymousString.startsWith("data:image"))
        {
          int i = paramAnonymousString.indexOf(',');
          if (i != -1)
          {
            if (paramAnonymousString.substring(0, i).endsWith(";base64")) {
              return new ByteArrayInputStream(Base64.decode(paramAnonymousString.substring(i + 1), 0));
            }
            throw new IllegalArgumentException("Not a base64 image data URL.");
          }
          throw new IllegalArgumentException("Missing comma in data URL.");
        }
        throw new IllegalArgumentException("Not a valid image data URL.");
      }
      
      public void a(InputStream paramAnonymousInputStream)
        throws IOException
      {
        paramAnonymousInputStream.close();
      }
      
      public Class<InputStream> getDataClass()
      {
        return InputStream.class;
      }
    };
    
    public StreamFactory() {}
    
    @NonNull
    public ModelLoader<String, InputStream> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new DataUrlLoader(a);
    }
    
    public void teardown() {}
  }
  
  private static final class a<Data>
    implements DataFetcher<Data>
  {
    private final String a;
    private final DataUrlLoader.DataDecoder<Data> b;
    private Data c;
    
    a(String paramString, DataUrlLoader.DataDecoder<Data> paramDataDecoder)
    {
      a = paramString;
      b = paramDataDecoder;
    }
    
    public void cancel() {}
    
    public void cleanup()
    {
      try
      {
        b.close(c);
        return;
      }
      catch (IOException localIOException) {}
    }
    
    @NonNull
    public Class<Data> getDataClass()
    {
      return b.getDataClass();
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return DataSource.LOCAL;
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super Data> paramDataCallback)
    {
      try
      {
        c = b.decode(a);
        paramDataCallback.onDataReady(c);
        return;
      }
      catch (IllegalArgumentException paramPriority)
      {
        paramDataCallback.onLoadFailed(paramPriority);
      }
    }
  }
}
