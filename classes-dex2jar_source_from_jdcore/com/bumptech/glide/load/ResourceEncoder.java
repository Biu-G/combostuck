package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;

public abstract interface ResourceEncoder<T>
  extends Encoder<Resource<T>>
{
  @NonNull
  public abstract EncodeStrategy getEncodeStrategy(@NonNull Options paramOptions);
}
