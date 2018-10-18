package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import java.io.IOException;

public abstract interface DataRewinder<T>
{
  public abstract void cleanup();
  
  @NonNull
  public abstract T rewindAndGet()
    throws IOException;
  
  public static abstract interface Factory<T>
  {
    @NonNull
    public abstract DataRewinder<T> build(@NonNull T paramT);
    
    @NonNull
    public abstract Class<T> getDataClass();
  }
}
