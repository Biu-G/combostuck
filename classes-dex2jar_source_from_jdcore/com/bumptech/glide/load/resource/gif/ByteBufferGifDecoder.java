package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

public class ByteBufferGifDecoder
  implements ResourceDecoder<ByteBuffer, GifDrawable>
{
  private static final a a = new a();
  private static final b b = new b();
  private final Context c;
  private final List<ImageHeaderParser> d;
  private final b e;
  private final a f;
  private final GifBitmapProvider g;
  
  public ByteBufferGifDecoder(Context paramContext)
  {
    this(paramContext, Glide.get(paramContext).getRegistry().getImageHeaderParsers(), Glide.get(paramContext).getBitmapPool(), Glide.get(paramContext).getArrayPool());
  }
  
  public ByteBufferGifDecoder(Context paramContext, List<ImageHeaderParser> paramList, BitmapPool paramBitmapPool, ArrayPool paramArrayPool)
  {
    this(paramContext, paramList, paramBitmapPool, paramArrayPool, b, a);
  }
  
  @VisibleForTesting
  ByteBufferGifDecoder(Context paramContext, List<ImageHeaderParser> paramList, BitmapPool paramBitmapPool, ArrayPool paramArrayPool, b paramB, a paramA)
  {
    c = paramContext.getApplicationContext();
    d = paramList;
    f = paramA;
    g = new GifBitmapProvider(paramBitmapPool, paramArrayPool);
    e = paramB;
  }
  
  private static int a(GifHeader paramGifHeader, int paramInt1, int paramInt2)
  {
    int i = Math.min(paramGifHeader.getHeight() / paramInt2, paramGifHeader.getWidth() / paramInt1);
    if (i == 0) {
      i = 0;
    } else {
      i = Integer.highestOneBit(i);
    }
    i = Math.max(1, i);
    if ((Log.isLoggable("BufferGifDecoder", 2)) && (i > 1))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Downsampling GIF, sampleSize: ");
      localStringBuilder.append(i);
      localStringBuilder.append(", target dimens: [");
      localStringBuilder.append(paramInt1);
      localStringBuilder.append("x");
      localStringBuilder.append(paramInt2);
      localStringBuilder.append("], actual dimens: [");
      localStringBuilder.append(paramGifHeader.getWidth());
      localStringBuilder.append("x");
      localStringBuilder.append(paramGifHeader.getHeight());
      localStringBuilder.append("]");
      Log.v("BufferGifDecoder", localStringBuilder.toString());
    }
    return i;
  }
  
  @Nullable
  private GifDrawableResource a(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, GifHeaderParser paramGifHeaderParser, Options paramOptions)
  {
    long l = LogTime.getLogTime();
    try
    {
      GifHeader localGifHeader = paramGifHeaderParser.parseHeader();
      if ((localGifHeader.getNumFrames() > 0) && (localGifHeader.getStatus() == 0))
      {
        if (paramOptions.get(GifOptions.DECODE_FORMAT) == DecodeFormat.PREFER_RGB_565) {
          paramGifHeaderParser = Bitmap.Config.RGB_565;
        } else {
          paramGifHeaderParser = Bitmap.Config.ARGB_8888;
        }
        int i = a(localGifHeader, paramInt1, paramInt2);
        paramByteBuffer = f.a(g, localGifHeader, paramByteBuffer, i);
        paramByteBuffer.setDefaultBitmapConfig(paramGifHeaderParser);
        paramByteBuffer.advance();
        paramGifHeaderParser = paramByteBuffer.getNextFrame();
        if (paramGifHeaderParser == null) {
          return null;
        }
        paramOptions = UnitTransformation.get();
        paramByteBuffer = new GifDrawableResource(new GifDrawable(c, paramByteBuffer, paramOptions, paramInt1, paramInt2, paramGifHeaderParser));
        return paramByteBuffer;
      }
      return null;
    }
    finally
    {
      if (Log.isLoggable("BufferGifDecoder", 2))
      {
        paramGifHeaderParser = new StringBuilder();
        paramGifHeaderParser.append("Decoded GIF from stream in ");
        paramGifHeaderParser.append(LogTime.getElapsedMillis(l));
        Log.v("BufferGifDecoder", paramGifHeaderParser.toString());
      }
    }
  }
  
  public GifDrawableResource decode(@NonNull ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    GifHeaderParser localGifHeaderParser = e.a(paramByteBuffer);
    try
    {
      paramByteBuffer = a(paramByteBuffer, paramInt1, paramInt2, localGifHeaderParser, paramOptions);
      return paramByteBuffer;
    }
    finally
    {
      e.a(localGifHeaderParser);
    }
  }
  
  public boolean handles(@NonNull ByteBuffer paramByteBuffer, @NonNull Options paramOptions)
    throws IOException
  {
    return (!((Boolean)paramOptions.get(GifOptions.DISABLE_ANIMATION)).booleanValue()) && (ImageHeaderParserUtils.getType(d, paramByteBuffer) == ImageHeaderParser.ImageType.GIF);
  }
  
  @VisibleForTesting
  static class a
  {
    a() {}
    
    GifDecoder a(GifDecoder.BitmapProvider paramBitmapProvider, GifHeader paramGifHeader, ByteBuffer paramByteBuffer, int paramInt)
    {
      return new StandardGifDecoder(paramBitmapProvider, paramGifHeader, paramByteBuffer, paramInt);
    }
  }
  
  @VisibleForTesting
  static class b
  {
    private final Queue<GifHeaderParser> a = Util.createQueue(0);
    
    b() {}
    
    GifHeaderParser a(ByteBuffer paramByteBuffer)
    {
      try
      {
        GifHeaderParser localGifHeaderParser2 = (GifHeaderParser)a.poll();
        GifHeaderParser localGifHeaderParser1 = localGifHeaderParser2;
        if (localGifHeaderParser2 == null) {
          localGifHeaderParser1 = new GifHeaderParser();
        }
        paramByteBuffer = localGifHeaderParser1.setData(paramByteBuffer);
        return paramByteBuffer;
      }
      finally {}
    }
    
    void a(GifHeaderParser paramGifHeaderParser)
    {
      try
      {
        paramGifHeaderParser.clear();
        a.offer(paramGifHeaderParser);
        return;
      }
      finally
      {
        paramGifHeaderParser = finally;
        throw paramGifHeaderParser;
      }
    }
  }
}
