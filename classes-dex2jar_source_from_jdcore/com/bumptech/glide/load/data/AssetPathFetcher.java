package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

public abstract class AssetPathFetcher<T>
  implements DataFetcher<T>
{
  private final String a;
  private final AssetManager b;
  private T c;
  
  public AssetPathFetcher(AssetManager paramAssetManager, String paramString)
  {
    b = paramAssetManager;
    a = paramString;
  }
  
  public void cancel() {}
  
  public void cleanup()
  {
    if (c == null) {
      return;
    }
    try
    {
      close(c);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  protected abstract void close(T paramT)
    throws IOException;
  
  @NonNull
  public DataSource getDataSource()
  {
    return DataSource.LOCAL;
  }
  
  public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super T> paramDataCallback)
  {
    try
    {
      c = loadResource(b, a);
      paramDataCallback.onDataReady(c);
      return;
    }
    catch (IOException paramPriority)
    {
      if (Log.isLoggable("AssetPathFetcher", 3)) {
        Log.d("AssetPathFetcher", "Failed to load data from asset manager", paramPriority);
      }
      paramDataCallback.onLoadFailed(paramPriority);
    }
  }
  
  protected abstract T loadResource(AssetManager paramAssetManager, String paramString)
    throws IOException;
}
