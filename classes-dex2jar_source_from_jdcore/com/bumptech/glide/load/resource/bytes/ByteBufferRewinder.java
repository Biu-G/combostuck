package com.bumptech.glide.load.resource.bytes;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.DataRewinder.Factory;
import java.nio.ByteBuffer;

public class ByteBufferRewinder
  implements DataRewinder<ByteBuffer>
{
  private final ByteBuffer a;
  
  public ByteBufferRewinder(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
  }
  
  public void cleanup() {}
  
  @NonNull
  public ByteBuffer rewindAndGet()
  {
    a.position(0);
    return a;
  }
  
  public static class Factory
    implements DataRewinder.Factory<ByteBuffer>
  {
    public Factory() {}
    
    @NonNull
    public DataRewinder<ByteBuffer> build(ByteBuffer paramByteBuffer)
    {
      return new ByteBufferRewinder(paramByteBuffer);
    }
    
    @NonNull
    public Class<ByteBuffer> getDataClass()
    {
      return ByteBuffer.class;
    }
  }
}
