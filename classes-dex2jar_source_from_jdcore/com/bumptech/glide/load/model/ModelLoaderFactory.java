package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;

public abstract interface ModelLoaderFactory<T, Y>
{
  @NonNull
  public abstract ModelLoader<T, Y> build(@NonNull MultiModelLoaderFactory paramMultiModelLoaderFactory);
  
  public abstract void teardown();
}
