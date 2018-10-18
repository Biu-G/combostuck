package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.ExceptionCatchingInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamBitmapDecoder
  implements ResourceDecoder<InputStream, Bitmap>
{
  private final Downsampler a;
  private final ArrayPool b;
  
  public StreamBitmapDecoder(Downsampler paramDownsampler, ArrayPool paramArrayPool)
  {
    a = paramDownsampler;
    b = paramArrayPool;
  }
  
  public Resource<Bitmap> decode(@NonNull InputStream paramInputStream, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws IOException
  {
    int i;
    if ((paramInputStream instanceof RecyclableBufferedInputStream))
    {
      paramInputStream = (RecyclableBufferedInputStream)paramInputStream;
      i = 0;
    }
    else
    {
      paramInputStream = new RecyclableBufferedInputStream(paramInputStream, b);
      i = 1;
    }
    ExceptionCatchingInputStream localExceptionCatchingInputStream = ExceptionCatchingInputStream.obtain(paramInputStream);
    MarkEnforcingInputStream localMarkEnforcingInputStream = new MarkEnforcingInputStream(localExceptionCatchingInputStream);
    a localA = new a(paramInputStream, localExceptionCatchingInputStream);
    try
    {
      paramOptions = a.decode(localMarkEnforcingInputStream, paramInt1, paramInt2, paramOptions, localA);
      return paramOptions;
    }
    finally
    {
      localExceptionCatchingInputStream.release();
      if (i != 0) {
        paramInputStream.release();
      }
    }
  }
  
  public boolean handles(@NonNull InputStream paramInputStream, @NonNull Options paramOptions)
  {
    return a.handles(paramInputStream);
  }
  
  static class a
    implements Downsampler.DecodeCallbacks
  {
    private final RecyclableBufferedInputStream a;
    private final ExceptionCatchingInputStream b;
    
    a(RecyclableBufferedInputStream paramRecyclableBufferedInputStream, ExceptionCatchingInputStream paramExceptionCatchingInputStream)
    {
      a = paramRecyclableBufferedInputStream;
      b = paramExceptionCatchingInputStream;
    }
    
    public void onDecodeComplete(BitmapPool paramBitmapPool, Bitmap paramBitmap)
      throws IOException
    {
      IOException localIOException = b.getException();
      if (localIOException != null)
      {
        if (paramBitmap != null) {
          paramBitmapPool.put(paramBitmap);
        }
        throw localIOException;
      }
    }
    
    public void onObtainBounds()
    {
      a.fixMarkLimit();
    }
  }
}
