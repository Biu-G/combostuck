package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class LocalUriFetcher<T>
  implements DataFetcher<T>
{
  private final Uri a;
  private final ContentResolver b;
  private T c;
  
  public LocalUriFetcher(ContentResolver paramContentResolver, Uri paramUri)
  {
    b = paramContentResolver;
    a = paramUri;
  }
  
  public void cancel() {}
  
  public void cleanup()
  {
    if (c != null) {}
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
  
  public final void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super T> paramDataCallback)
  {
    try
    {
      c = loadResource(a, b);
      paramDataCallback.onDataReady(c);
      return;
    }
    catch (FileNotFoundException paramPriority)
    {
      if (Log.isLoggable("LocalUriFetcher", 3)) {
        Log.d("LocalUriFetcher", "Failed to open Uri", paramPriority);
      }
      paramDataCallback.onLoadFailed(paramPriority);
    }
  }
  
  protected abstract T loadResource(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException;
}
