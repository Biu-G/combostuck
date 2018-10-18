package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoader.LoadData;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;

public class MediaStoreVideoThumbLoader
  implements ModelLoader<Uri, InputStream>
{
  private final Context a;
  
  public MediaStoreVideoThumbLoader(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  private boolean a(Options paramOptions)
  {
    paramOptions = (Long)paramOptions.get(VideoDecoder.TARGET_FRAME);
    return (paramOptions != null) && (paramOptions.longValue() == -1L);
  }
  
  @Nullable
  public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull Uri paramUri, int paramInt1, int paramInt2, @NonNull Options paramOptions)
  {
    if ((MediaStoreUtil.isThumbnailSize(paramInt1, paramInt2)) && (a(paramOptions))) {
      return new ModelLoader.LoadData(new ObjectKey(paramUri), ThumbFetcher.buildVideoFetcher(a, paramUri));
    }
    return null;
  }
  
  public boolean handles(@NonNull Uri paramUri)
  {
    return MediaStoreUtil.isMediaStoreVideoUri(paramUri);
  }
  
  public static class Factory
    implements ModelLoaderFactory<Uri, InputStream>
  {
    private final Context a;
    
    public Factory(Context paramContext)
    {
      a = paramContext;
    }
    
    @NonNull
    public ModelLoader<Uri, InputStream> build(MultiModelLoaderFactory paramMultiModelLoaderFactory)
    {
      return new MediaStoreVideoThumbLoader(a);
    }
    
    public void teardown() {}
  }
}
