package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class RoundedCorners
  extends BitmapTransformation
{
  private static final byte[] a = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(CHARSET);
  private final int b;
  
  public RoundedCorners(int paramInt)
  {
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    Preconditions.checkArgument(bool, "roundingRadius must be greater than 0.");
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = paramObject instanceof RoundedCorners;
    boolean bool1 = false;
    if (bool2)
    {
      paramObject = (RoundedCorners)paramObject;
      if (b == b) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  public int hashCode()
  {
    return Util.hashCode("com.bumptech.glide.load.resource.bitmap.RoundedCorners".hashCode(), Util.hashCode(b));
  }
  
  protected Bitmap transform(@NonNull BitmapPool paramBitmapPool, @NonNull Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    return TransformationUtils.roundedCorners(paramBitmapPool, paramBitmap, b);
  }
  
  public void updateDiskCacheKey(@NonNull MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(a);
    paramMessageDigest.update(ByteBuffer.allocate(4).putInt(b).array());
  }
}
