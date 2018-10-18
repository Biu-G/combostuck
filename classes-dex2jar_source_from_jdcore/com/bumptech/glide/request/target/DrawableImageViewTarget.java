package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.widget.ImageView;

public class DrawableImageViewTarget
  extends ImageViewTarget<Drawable>
{
  public DrawableImageViewTarget(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  @Deprecated
  public DrawableImageViewTarget(ImageView paramImageView, boolean paramBoolean)
  {
    super(paramImageView, paramBoolean);
  }
  
  protected void setResource(@Nullable Drawable paramDrawable)
  {
    ((ImageView)view).setImageDrawable(paramDrawable);
  }
}
