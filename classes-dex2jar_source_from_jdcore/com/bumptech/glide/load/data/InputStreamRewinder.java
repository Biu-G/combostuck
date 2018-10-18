package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class InputStreamRewinder
  implements DataRewinder<InputStream>
{
  private final RecyclableBufferedInputStream a;
  
  InputStreamRewinder(InputStream paramInputStream, ArrayPool paramArrayPool)
  {
    a = new RecyclableBufferedInputStream(paramInputStream, paramArrayPool);
    a.mark(5242880);
  }
  
  public void cleanup()
  {
    a.release();
  }
  
  @NonNull
  public InputStream rewindAndGet()
    throws IOException
  {
    a.reset();
    return a;
  }
  
  public static final class Factory
    implements DataRewinder.Factory<InputStream>
  {
    private final ArrayPool a;
    
    public Factory(ArrayPool paramArrayPool)
    {
      a = paramArrayPool;
    }
    
    @NonNull
    public DataRewinder<InputStream> build(InputStream paramInputStream)
    {
      return new InputStreamRewinder(paramInputStream, a);
    }
    
    @NonNull
    public Class<InputStream> getDataClass()
    {
      return InputStream.class;
    }
  }
}
