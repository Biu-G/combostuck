package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ByteBufferBitmapDecoder
  implements ResourceDecoder<ByteBuffer, Bitmap>
{
  private final Downsampler a;
  
  public ByteBufferBitmapDecoder(Downsampler paramDownsampler)
  {
    a = paramDownsampler;
  }
  
  public Resource<Bitmap> decode(@NonNull ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws IOException
  {
    paramByteBuffer = ByteBufferUtil.toStream(paramByteBuffer);
    return a.decode(paramByteBuffer, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull ByteBuffer paramByteBuffer, @NonNull Options paramOptions)
  {
    return a.handles(paramByteBuffer);
  }
}
