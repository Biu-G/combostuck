package com.bumptech.glide.load.engine;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;

abstract interface DataFetcherGenerator
{
  public abstract boolean a();
  
  public abstract void b();
  
  public static abstract interface FetcherReadyCallback
  {
    public abstract void onDataFetcherFailed(Key paramKey, Exception paramException, DataFetcher<?> paramDataFetcher, DataSource paramDataSource);
    
    public abstract void onDataFetcherReady(Key paramKey1, @Nullable Object paramObject, DataFetcher<?> paramDataFetcher, DataSource paramDataSource, Key paramKey2);
    
    public abstract void reschedule();
  }
}
