package com.bumptech.glide.load.model;

import android.support.annotation.Nullable;

public abstract interface LazyHeaderFactory
{
  @Nullable
  public abstract String buildHeader();
}
