package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

public abstract interface DataFetcher<T>
{
  public abstract void cancel();
  
  public abstract void cleanup();
  
  @NonNull
  public abstract Class<T> getDataClass();
  
  @NonNull
  public abstract DataSource getDataSource();
  
  public abstract void loadData(@NonNull Priority paramPriority, @NonNull DataCallback<? super T> paramDataCallback);
  
  public static abstract interface DataCallback<T>
  {
    public abstract void onDataReady(@Nullable T paramT);
    
    public abstract void onLoadFailed(@NonNull Exception paramException);
  }
}
