package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class ByteArrayLoader<Data>
  implements ModelLoader<byte[], Data>
{
  private final Converter<Data> a;
  
  public ByteArrayLoader(Converter<Data> paramConverter)
  {
    a = paramConverter;
  }
  
  public ModelLoader.LoadData<Data> buildLoadData(@NonNull byte[] paramArrayOfByte, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramArrayOfByte), new a(paramArrayOfByte, a));
  }
  
  public boolean handles(@NonNull byte[] paramArrayOfByte)
  {
    return true;
  }
  
  public static class ByteBufferFactory
    implements ModelLoaderFactory<byte[], ByteBuffer>
  {
    public ByteBufferFactory() {}
    
    @NonNull
    public ModelLoader<byte[], ByteBuffer> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      new ByteArrayLoader(new ByteArrayLoader.Converter()
      {
        public ByteBuffer a(byte[] paramAnonymousArrayOfByte)
        {
          return ByteBuffer.wrap(paramAnonymousArrayOfByte);
        }
        
        public Class<ByteBuffer> getDataClass()
        {
          return ByteBuffer.class;
        }
      });
    }
    
    public void teardown() {}
  }
  
  public static abstract interface Converter<Data>
  {
    public abstract Data convert(byte[] paramArrayOfByte);
    
    public abstract Class<Data> getDataClass();
  }
  
  public static class StreamFactory
    implements ModelLoaderFactory<byte[], InputStream>
  {
    public StreamFactory() {}
    
    @NonNull
    public ModelLoader<byte[], InputStream> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      new ByteArrayLoader(new ByteArrayLoader.Converter()
      {
        public InputStream a(byte[] paramAnonymousArrayOfByte)
        {
          return new ByteArrayInputStream(paramAnonymousArrayOfByte);
        }
        
        public Class<InputStream> getDataClass()
        {
          return InputStream.class;
        }
      });
    }
    
    public void teardown() {}
  }
  
  private static class a<Data>
    implements DataFetcher<Data>
  {
    private final byte[] a;
    private final ByteArrayLoader.Converter<Data> b;
    
    a(byte[] paramArrayOfByte, ByteArrayLoader.Converter<Data> paramConverter)
    {
      a = paramArrayOfByte;
      b = paramConverter;
    }
    
    public void cancel() {}
    
    public void cleanup() {}
    
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
      paramDataCallback.onDataReady(b.convert(a));
    }
  }
}
