package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser.MediaItem;
import android.os.Parcel;
import android.service.media.MediaBrowserService.Result;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaBrowserServiceCompatApi23
{
  public static Object a(Context paramContext, ServiceCompatProxy paramServiceCompatProxy)
  {
    return new a(paramContext, paramServiceCompatProxy);
  }
  
  public static abstract interface ServiceCompatProxy
    extends MediaBrowserServiceCompatApi21.ServiceCompatProxy
  {
    public abstract void onLoadItem(String paramString, MediaBrowserServiceCompatApi21.c<Parcel> paramC);
  }
  
  static class a
    extends MediaBrowserServiceCompatApi21.b
  {
    a(Context paramContext, MediaBrowserServiceCompatApi23.ServiceCompatProxy paramServiceCompatProxy)
    {
      super(paramServiceCompatProxy);
    }
    
    public void onLoadItem(String paramString, MediaBrowserService.Result<MediaBrowser.MediaItem> paramResult)
    {
      ((MediaBrowserServiceCompatApi23.ServiceCompatProxy)a).onLoadItem(paramString, new MediaBrowserServiceCompatApi21.c(paramResult));
    }
  }
}
