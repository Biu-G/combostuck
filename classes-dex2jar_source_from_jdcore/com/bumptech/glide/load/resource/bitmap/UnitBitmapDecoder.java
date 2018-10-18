package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;

public final class UnitBitmapDecoder
  implements ResourceDecoder<Bitmap, Bitmap>
{
  public UnitBitmapDecoder() {}
  
  public Resource<Bitmap> decode(@NonNull Bitmap paramBitmap, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new a(paramBitmap);
  }
  
  public boolean handles(@NonNull Bitmap paramBitmap, @NonNull Options paramOptions)
  {
    return true;
  }
  
  private static final class a
    implements Resource<Bitmap>
  {
    private final Bitmap a;
    
    a(@NonNull Bitmap paramBitmap)
    {
      a = paramBitmap;
    }
    
    @NonNull
    public Bitmap a()
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
    
    public void recycle() {}
  }
}
