package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;

public final class GifFrameResourceDecoder
  implements ResourceDecoder<GifDecoder, Bitmap>
{
  private final BitmapPool a;
  
  public GifFrameResourceDecoder(BitmapPool paramBitmapPool)
  {
    a = paramBitmapPool;
  }
  
  public Resource<Bitmap> decode(@NonNull GifDecoder paramGifDecoder, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return BitmapResource.obtain(paramGifDecoder.getNextFrame(), a);
  }
  
  public boolean handles(@NonNull GifDecoder paramGifDecoder, @NonNull Options paramOptions)
  {
    return true;
  }
}
