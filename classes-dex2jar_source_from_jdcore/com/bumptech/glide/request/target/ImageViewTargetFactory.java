package com.bumptech.glide.request.target;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.widget.ImageView;

public class ImageViewTargetFactory
{
  public ImageViewTargetFactory() {}
  
  @NonNull
  public <Z> ViewTarget<ImageView, Z> buildTarget(@NonNull ImageView paramImageView, @NonNull Class<Z> paramClass)
  {
    if (Bitmap.class.equals(paramClass)) {
      return new BitmapImageViewTarget(paramImageView);
    }
    if (Drawable.class.isAssignableFrom(paramClass)) {
      return new DrawableImageViewTarget(paramImageView);
    }
    paramImageView = new StringBuilder();
    paramImageView.append("Unhandled class: ");
    paramImageView.append(paramClass);
    paramImageView.append(", try .as*(Class).transcode(ResourceTranscoder)");
    throw new IllegalArgumentException(paramImageView.toString());
  }
}
