package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataFetcher.DataCallback;
import com.bumptech.glide.load.data.ExifOrientationStream;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class ThumbFetcher
  implements DataFetcher<InputStream>
{
  private final Uri a;
  private final c b;
  private InputStream c;
  
  @VisibleForTesting
  ThumbFetcher(Uri paramUri, c paramC)
  {
    a = paramUri;
    b = paramC;
  }
  
  private static ThumbFetcher a(Context paramContext, Uri paramUri, b paramB)
  {
    ArrayPool localArrayPool = Glide.get(paramContext).getArrayPool();
    return new ThumbFetcher(paramUri, new c(Glide.get(paramContext).getRegistry().getImageHeaderParsers(), paramB, localArrayPool, paramContext.getContentResolver()));
  }
  
  private InputStream a()
    throws FileNotFoundException
  {
    InputStream localInputStream = b.b(a);
    int i;
    if (localInputStream != null) {
      i = b.a(a);
    } else {
      i = -1;
    }
    Object localObject = localInputStream;
    if (i != -1) {
      localObject = new ExifOrientationStream(localInputStream, i);
    }
    return localObject;
  }
  
  public static ThumbFetcher buildImageFetcher(Context paramContext, Uri paramUri)
  {
    return a(paramContext, paramUri, new a(paramContext.getContentResolver()));
  }
  
  public static ThumbFetcher buildVideoFetcher(Context paramContext, Uri paramUri)
  {
    return a(paramContext, paramUri, new b(paramContext.getContentResolver()));
  }
  
  public void cancel() {}
  
  public void cleanup()
  {
    if (c != null) {}
    try
    {
      c.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  @NonNull
  public Class<InputStream> getDataClass()
  {
    return InputStream.class;
  }
  
  @NonNull
  public DataSource getDataSource()
  {
    return DataSource.LOCAL;
  }
  
  public void loadData(@NonNull Priority paramPriority, @NonNull DataFetcher.DataCallback<? super InputStream> paramDataCallback)
  {
    try
    {
      c = a();
      paramDataCallback.onDataReady(c);
      return;
    }
    catch (FileNotFoundException paramPriority)
    {
      if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", paramPriority);
      }
      paramDataCallback.onLoadFailed(paramPriority);
    }
  }
  
  static class a
    implements b
  {
    private static final String[] b = { "_data" };
    private final ContentResolver a;
    
    a(ContentResolver paramContentResolver)
    {
      a = paramContentResolver;
    }
    
    public Cursor a(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND image_id = ?", new String[] { paramUri }, null);
    }
  }
  
  static class b
    implements b
  {
    private static final String[] b = { "_data" };
    private final ContentResolver a;
    
    b(ContentResolver paramContentResolver)
    {
      a = paramContentResolver;
    }
    
    public Cursor a(Uri paramUri)
    {
      paramUri = paramUri.getLastPathSegment();
      return a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[] { paramUri }, null);
    }
  }
}
