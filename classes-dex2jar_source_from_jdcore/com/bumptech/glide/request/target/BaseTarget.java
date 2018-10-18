package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import com.bumptech.glide.request.Request;

public abstract class BaseTarget<Z>
  implements Target<Z>
{
  private Request a;
  
  public BaseTarget() {}
  
  @Nullable
  public Request getRequest()
  {
    return a;
  }
  
  public void onDestroy() {}
  
  public void onLoadCleared(@Nullable Drawable paramDrawable) {}
  
  public void onLoadFailed(@Nullable Drawable paramDrawable) {}
  
  public void onLoadStarted(@Nullable Drawable paramDrawable) {}
  
  public void onStart() {}
  
  public void onStop() {}
  
  public void setRequest(@Nullable Request paramRequest)
  {
    a = paramRequest;
  }
}
