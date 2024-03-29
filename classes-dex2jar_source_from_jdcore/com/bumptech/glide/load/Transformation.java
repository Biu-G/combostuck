package com.bumptech.glide.load;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;

public abstract interface Transformation<T>
  extends Key
{
  @NonNull
  public abstract Resource<T> transform(@NonNull Context paramContext, @NonNull Resource<T> paramResource, int paramInt1, int paramInt2);
}
