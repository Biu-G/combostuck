package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;

public class BitmapResource
  implements Initializable, Resource<Bitmap>
{
  private final Bitmap a;
  private final BitmapPool b;
  
  public BitmapResource(@NonNull Bitmap paramBitmap, @NonNull BitmapPool paramBitmapPool)
  {
    a = ((Bitmap)Preconditions.checkNotNull(paramBitmap, "Bitmap must not be null"));
    b = ((BitmapPool)Preconditions.checkNotNull(paramBitmapPool, "BitmapPool must not be null"));
  }
  
  @Nullable
  public static BitmapResource obtain(@Nullable Bitmap paramBitmap, @NonNull BitmapPool paramBitmapPool)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new BitmapResource(paramBitmap, paramBitmapPool);
  }
  
  @NonNull
  public Bitmap get()
  {
    return a;
  }
  
  @NonNull
  public Class<Bitmap> getResourceClass()
  {
    return Bitmap.class;
  }
  
  public int getSize()
  {
    return Util.getBitmapByteSize(a);
  }
  
  public void initialize()
  {
    a.prepareToDraw();
  }
  
  public void recycle()
  {
    b.put(a);
  }
}
