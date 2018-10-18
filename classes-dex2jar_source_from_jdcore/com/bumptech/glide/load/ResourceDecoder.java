package com.bumptech.glide.load;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.engine.Resource;
import java.io.IOException;

public abstract interface ResourceDecoder<T, Z>
{
  @Nullable
  public abstract Resource<Z> decode(@NonNull T paramT, int paramInt1, int paramInt2, @NonNull Options paramOptions)
    throws IOException;
  
  public abstract boolean handles(@NonNull T paramT, @NonNull Options paramOptions)
    throws IOException;
}
