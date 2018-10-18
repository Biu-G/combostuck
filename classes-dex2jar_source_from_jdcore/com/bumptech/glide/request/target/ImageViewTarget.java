package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.request.transition.Transition.ViewAdapter;

public abstract class ImageViewTarget<Z>
  extends ViewTarget<ImageView, Z>
  implements Transition.ViewAdapter
{
  @Nullable
  private Animatable a;
  
  public ImageViewTarget(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  @Deprecated
  public ImageViewTarget(ImageView paramImageView, boolean paramBoolean)
  {
    super(paramImageView, paramBoolean);
  }
  
  private void a(@Nullable Z paramZ)
  {
    setResource(paramZ);
    b(paramZ);
  }
  
  private void b(@Nullable Z paramZ)
  {
    if ((paramZ instanceof Animatable))
    {
      a = ((Animatable)paramZ);
      a.start();
      return;
    }
    a = null;
  }
  
  @Nullable
  public Drawable getCurrentDrawable()
  {
    return ((ImageView)view).getDrawable();
  }
  
  public void onLoadCleared(@Nullable Drawable paramDrawable)
  {
    super.onLoadCleared(paramDrawable);
    if (a != null) {
      a.stop();
    }
    a(null);
    setDrawable(paramDrawable);
  }
  
  public void onLoadFailed(@Nullable Drawable paramDrawable)
  {
    super.onLoadFailed(paramDrawable);
    a(null);
    setDrawable(paramDrawable);
  }
  
  public void onLoadStarted(@Nullable Drawable paramDrawable)
  {
    super.onLoadStarted(paramDrawable);
    a(null);
    setDrawable(paramDrawable);
  }
  
  public void onResourceReady(@NonNull Z paramZ, @Nullable Transition<? super Z> paramTransition)
  {
    if ((paramTransition != null) && (paramTransition.transition(paramZ, this)))
    {
      b(paramZ);
      return;
    }
    a(paramZ);
  }
  
  public void onStart()
  {
    if (a != null) {
      a.start();
    }
  }
  
  public void onStop()
  {
    if (a != null) {
      a.stop();
    }
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    ((ImageView)view).setImageDrawable(paramDrawable);
  }
  
  protected abstract void setResource(@Nullable Z paramZ);
}
