package com.bumptech.glide.load.resource.transcode;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;

public class UnitTranscoder<Z>
  implements ResourceTranscoder<Z, Z>
{
  private static final UnitTranscoder<?> a = new UnitTranscoder();
  
  public UnitTranscoder() {}
  
  public static <Z> ResourceTranscoder<Z, Z> get()
  {
    return a;
  }
  
  @Nullable
  public Resource<Z> transcode(@NonNull Resource<Z> paramResource, @NonNull Options paramOptions)
  {
    return paramResource;
  }
}
