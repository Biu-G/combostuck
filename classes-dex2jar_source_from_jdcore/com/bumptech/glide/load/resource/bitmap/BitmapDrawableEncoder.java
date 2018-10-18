package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.File;

public class BitmapDrawableEncoder
  implements ResourceEncoder<BitmapDrawable>
{
  private final BitmapPool a;
  private final ResourceEncoder<Bitmap> b;
  
  public BitmapDrawableEncoder(BitmapPool paramBitmapPool, ResourceEncoder<Bitmap> paramResourceEncoder)
  {
    a = paramBitmapPool;
    b = paramResourceEncoder;
  }
  
  public boolean encode(@NonNull Resource<BitmapDrawable> paramResource, @NonNull File paramFile, @NonNull Options paramOptions)
  {
    return b.encode(new BitmapResource(((BitmapDrawable)paramResource.get()).getBitmap(), a), paramFile, paramOptions);
  }
  
  @NonNull
  public EncodeStrategy getEncodeStrategy(@NonNull Options paramOptions)
  {
    return b.getEncodeStrategy(paramOptions);
  }
}
