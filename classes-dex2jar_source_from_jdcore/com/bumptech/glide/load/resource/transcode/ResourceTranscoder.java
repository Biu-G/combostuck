package com.bumptech.glide.load.resource.transcode;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;

public abstract interface ResourceTranscoder<Z, R>
{
  @Nullable
  public abstract Resource<R> transcode(@NonNull Resource<Z> paramResource, @NonNull Options paramOptions);
}