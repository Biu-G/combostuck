package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

public final class GifBitmapProvider
  implements GifDecoder.BitmapProvider
{
  private final BitmapPool a;
  @Nullable
  private final ArrayPool b;
  
  public GifBitmapProvider(BitmapPool paramBitmapPool)
  {
    this(paramBitmapPool, null);
  }
  
  public GifBitmapProvider(BitmapPool paramBitmapPool, @Nullable ArrayPool paramArrayPool)
  {
    a = paramBitmapPool;
    b = paramArrayPool;
  }
  
  @NonNull
  public Bitmap obtain(int paramInt1, int paramInt2, @NonNull Bitmap.Config paramConfig)
  {
    return a.getDirty(paramInt1, paramInt2, paramConfig);
  }
  
  @NonNull
  public byte[] obtainByteArray(int paramInt)
  {
    if (b == null) {
      return new byte[paramInt];
    }
    return (byte[])b.get(paramInt, [B.class);
  }
  
  @NonNull
  public int[] obtainIntArray(int paramInt)
  {
    if (b == null) {
      return new int[paramInt];
    }
    return (int[])b.get(paramInt, [I.class);
  }
  
  public void release(@NonNull Bitmap paramBitmap)
  {
    a.put(paramBitmap);
  }
  
  public void release(@NonNull byte[] paramArrayOfByte)
  {
    if (b == null) {
      return;
    }
    b.put(paramArrayOfByte);
  }
  
  public void release(@NonNull int[] paramArrayOfInt)
  {
    if (b == null) {
      return;
    }
    b.put(paramArrayOfInt);
  }
}