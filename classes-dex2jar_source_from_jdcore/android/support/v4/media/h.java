package android.support.v4.media;

import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class h
{
  public static Uri a(Object paramObject)
  {
    return ((MediaDescription)paramObject).getMediaUri();
  }
  
  static class a
  {
    public static void a(Object paramObject, Uri paramUri)
    {
      ((MediaDescription.Builder)paramObject).setMediaUri(paramUri);
    }
  }
}
