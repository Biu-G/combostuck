package com.bumptech.glide.load.resource.gif;

import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public class StreamGifDecoder
  implements ResourceDecoder<InputStream, GifDrawable>
{
  private final List<ImageHeaderParser> a;
  private final ResourceDecoder<ByteBuffer, GifDrawable> b;
  private final ArrayPool c;
  
  public StreamGifDecoder(List<ImageHeaderParser> paramList, ResourceDecoder<ByteBuffer, GifDrawable> paramResourceDecoder, ArrayPool paramArrayPool)
  {
    a = paramList;
    b = paramResourceDecoder;
    c = paramArrayPool;
  }
  
  private static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    try
    {
      byte[] arrayOfByte = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.flush();
      return localByteArrayOutputStream.toByteArray();
    }
    catch (IOException paramInputStream)
    {
      if (Log.isLoggable("StreamGifDecoder", 5)) {
        Log.w("StreamGifDecoder", "Error reading data from stream", paramInputStream);
      }
    }
    return null;
  }
  
  public Resource<GifDrawable> decode(@NonNull InputStream paramInputStream, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws IOException
  {
    paramInputStream = a(paramInputStream);
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = ByteBuffer.wrap(paramInputStream);
    return b.decode(paramInputStream, paramInt1, paramInt2, paramOptions);
  }
  
  public boolean handles(@NonNull InputStream paramInputStream, @NonNull Options paramOptions)
    throws IOException
  {
    return (!((Boolean)paramOptions.get(GifOptions.DISABLE_ANIMATION)).booleanValue()) && (ImageHeaderParserUtils.getType(a, paramInputStream, c) == ImageHeaderParser.ImageType.GIF);
  }
}
