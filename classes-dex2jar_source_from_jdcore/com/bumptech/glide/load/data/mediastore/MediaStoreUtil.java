package com.bumptech.glide.load.data.mediastore;

import android.net.Uri;
import java.util.List;

public final class MediaStoreUtil
{
  private MediaStoreUtil() {}
  
  private static boolean a(Uri paramUri)
  {
    return paramUri.getPathSegments().contains("video");
  }
  
  public static boolean isMediaStoreImageUri(Uri paramUri)
  {
    return (isMediaStoreUri(paramUri)) && (!a(paramUri));
  }
  
  public static boolean isMediaStoreUri(Uri paramUri)
  {
    return (paramUri != null) && ("content".equals(paramUri.getScheme())) && ("media".equals(paramUri.getAuthority()));
  }
  
  public static boolean isMediaStoreVideoUri(Uri paramUri)
  {
    return (isMediaStoreUri(paramUri)) && (a(paramUri));
  }
  
  public static boolean isThumbnailSize(int paramInt1, int paramInt2)
  {
    return (paramInt1 != Integer.MIN_VALUE) && (paramInt2 != Integer.MIN_VALUE) && (paramInt1 <= 512) && (paramInt2 <= 384);
  }
}
