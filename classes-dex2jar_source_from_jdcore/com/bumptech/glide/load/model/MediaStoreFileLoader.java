package com.bumptech.glide.load.model;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;

public final class MediaStoreFileLoader
  implements ModelLoader<Uri, File>
{
  private final Context a;
  
  public MediaStoreFileLoader(Context paramContext)
  {
    a = paramContext;
  }
  
  public ModelLoader.LoadData<File> buildLoadData(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    return new ModelLoader.LoadData(new ObjectKey(paramUri), new a(a, paramUri));
  }
  
  public boolean handles(@NonNull Uri paramUri)
  {
    return MediaStoreUtil.isMediaStoreUri(paramUri);
  }
  
  public static final class Factory
    implements ModelLoaderFactory<Uri, File>
  {
    private final Context a;
    
    public Factory(Context paramContext)
    {
      a = paramContext;
    }
    
    @NonNull
    public ModelLoader<Uri, File> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new MediaStoreFileLoader(a);
    }
    
    public void teardown() {}
  }
  
  private static class a
    implements DataFetcher<File>
  {
    private static final String[] a = { "_data" };
    private final Context b;
    private final Uri c;
    
    a(Context paramContext, Uri paramUri)
    {
      b = paramContext;
      c = paramUri;
    }
    
    public void cancel() {}
    
    public void cleanup() {}
    
    @NonNull
    public Class<File> getDataClass()
    {
      return File.class;
    }
    
    @NonNull
    public DataSource getDataSource()
    {
      return DataSource.LOCAL;
    }
    
    public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super File> paramDataCallback)
    {
      Cursor localCursor = b.getContentResolver().query(c, a, null, null, null);
      paramPriority = null;
      Object localObject = null;
      if (localCursor != null) {
        paramPriority = localObject;
      }
      try
      {
        if (localCursor.moveToFirst()) {
          paramPriority = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
        }
        localCursor.close();
      }
      finally
      {
        localCursor.close();
      }
      paramPriority = new StringBuilder();
      paramPriority.append("Failed to find file path for: ");
      paramPriority.append(c);
      paramDataCallback.onLoadFailed(new FileNotFoundException(paramPriority.toString()));
      return;
      paramDataCallback.onDataReady(new File(paramPriority));
    }
  }
}
