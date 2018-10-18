package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;

final class a
  extends DrawableResource<Drawable>
{
  private a(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  @Nullable
  static Resource<Drawable> a(@Nullable Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      return new a(paramDrawable);
    }
    return null;
  }
  
  @NonNull
  public Class<Drawable> getResourceClass()
  {
    return drawable.getClass();
  }
  
  public int getSize()
  {
    return Math.max(1, drawable.getIntrinsicWidth() * drawable.getIntrinsicHeight() * 4);
  }
  
  public void recycle() {}
}
