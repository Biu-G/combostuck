package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

public class FitCenter
  extends BitmapTransformation
{
  private static final byte[] a = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(CHARSET);
  
  public FitCenter() {}
  
  public boolean equals(Object paramObject)
  {
    return paramObject instanceof FitCenter;
  }
  
  public int hashCode()
  {
    return "com.bumptech.glide.load.resource.bitmap.FitCenter".hashCode();
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return TransformationUtils.fitCenter(paramBitmapPool, paramBitmap, paramInt1, paramInt2);
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(a);
  }
}
