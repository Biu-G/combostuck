package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;

public final class DrawableBytesTranscoder
  implements ResourceTranscoder<Drawable, byte[]>
{
  private final BitmapPool a;
  private final ResourceTranscoder<Bitmap, byte[]> b;
  private final ResourceTranscoder<GifDrawable, byte[]> c;
  
  public DrawableBytesTranscoder(@NonNull BitmapPool paramBitmapPool, @NonNull ResourceTranscoder<Bitmap, byte[]> paramResourceTranscoder, @NonNull ResourceTranscoder<GifDrawable, byte[]> paramResourceTranscoder1)
  {
    a = paramBitmapPool;
    b = paramResourceTranscoder;
    c = paramResourceTranscoder1;
  }
  
  @NonNull
  private static Resource<GifDrawable> a(@NonNull Resource<Drawable> paramResource)
  {
    return paramResource;
  }
  
  @Nullable
  public Resource<byte[]> transcode(@NonNull Resource<Drawable> paramResource, @NonNull Options paramOptions)
  {
    Drawable localDrawable = (Drawable)paramResource.get();
    if ((localDrawable instanceof BitmapDrawable)) {
      return b.transcode(BitmapResource.obtain(((BitmapDrawable)localDrawable).getBitmap(), a), paramOptions);
    }
    if ((localDrawable instanceof GifDrawable)) {
      return c.transcode(a(paramResource), paramOptions);
    }
    return null;
  }
}
