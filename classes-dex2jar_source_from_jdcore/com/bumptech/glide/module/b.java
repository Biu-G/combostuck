package com.bumptech.glide.module;

import android.content.Context;
import android.support.annotation.NonNull;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;

@Deprecated
abstract interface b
{
  public abstract void registerComponents(@NonNull Context paramContext, @NonNull Glide paramGlide, @NonNull Registry paramRegistry);
}
