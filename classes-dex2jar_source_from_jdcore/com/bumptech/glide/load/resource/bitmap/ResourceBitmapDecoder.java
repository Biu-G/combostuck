package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;

public class ResourceBitmapDecoder
  implements ResourceDecoder<Uri, Bitmap>
{
  private final ResourceDrawableDecoder a;
  private final BitmapPool b;
  
  public ResourceBitmapDecoder(ResourceDrawableDecoder paramResourceDrawableDecoder, BitmapPool paramBitmapPool)
  {
    a = paramResourceDrawableDecoder;
    b = paramBitmapPool;
  }
  
  @Nullable
  public Resource<Bitmap> decode(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    paramUri = a.decode(paramUri, paramInt1, paramInt2, paramOptions);
    if (paramUri == null) {
      return null;
    }
    paramUri = (Drawable)paramUri.get();
    return a.a(b, paramUri, paramInt1, paramInt2);
  }
  
  public boolean handles(@NonNull Uri paramUri, @NonNull Options paramOptions)
  {
    return "android.resource".equals(paramUri.getScheme());
  }
}
