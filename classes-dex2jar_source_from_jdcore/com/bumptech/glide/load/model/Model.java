package com.bumptech.glide.load.model;

import android.support.annotation.Nullable;

public abstract interface Model
{
  public abstract boolean isEquivalentTo(@Nullable Object paramObject);
}
