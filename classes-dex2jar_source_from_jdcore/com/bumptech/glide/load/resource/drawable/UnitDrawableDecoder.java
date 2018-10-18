package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;

public class UnitDrawableDecoder
  implements ResourceDecoder<Drawable, Drawable>
{
  public UnitDrawableDecoder() {}
  
  @Nullable
  public Resource<Drawable> decode(@NonNull Drawable paramDrawable, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return a.a(paramDrawable);
  }
  
  public boolean handles(@NonNull Drawable paramDrawable, @NonNull Options paramOptions)
  {
    return true;
  }
}
