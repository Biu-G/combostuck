package com.bumptech.glide.load.resource;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

public class SimpleResource<T>
  implements Resource<T>
{
  protected final T data;
  
  public SimpleResource(@NonNull T paramT)
  {
    data = Preconditions.checkNotNull(paramT);
  }
  
  @NonNull
  public final T get()
  {
    return data;
  }
  
  @NonNull
  public Class<T> getResourceClass()
  {
    return data.getClass();
  }
  
  public final int getSize()
  {
    return 1;
  }
  
  public void recycle() {}
}