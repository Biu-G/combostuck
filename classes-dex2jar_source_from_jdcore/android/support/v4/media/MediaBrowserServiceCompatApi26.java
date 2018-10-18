package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser.MediaItem;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.service.media.MediaBrowserService;
import android.service.media.MediaBrowserService.Result;
import android.support.annotation.RequiresApi;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(26)
class MediaBrowserServiceCompatApi26
{
  static Field a;
  
  static
  {
    try
    {
      a = MediaBrowserService.Result.class.getDeclaredField("mFlags");
      a.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.w("MBSCompatApi26", localNoSuchFieldException);
    }
  }
  
  public static Bundle a(Object paramObject)
  {
    return ((MediaBrowserService)paramObject).getBrowserRootHints();
  }
  
  public static Object a(Context paramContext, ServiceCompatProxy paramServiceCompatProxy)
  {
    return new a(paramContext, paramServiceCompatProxy);
  }
  
  public static void a(Object paramObject, String paramString, Bundle paramBundle)
  {
    ((MediaBrowserService)paramObject).notifyChildrenChanged(paramString, paramBundle);
  }
  
  public static abstract interface ServiceCompatProxy
    extends MediaBrowserServiceCompatApi23.ServiceCompatProxy
  {
    public abstract void onLoadChildren(String paramString, MediaBrowserServiceCompatApi26.b paramB, Bundle paramBundle);
  }
  
  static class a
    extends MediaBrowserServiceCompatApi23.a
  {
    a(Context paramContext, MediaBrowserServiceCompatApi26.ServiceCompatProxy paramServiceCompatProxy)
    {
      super(paramServiceCompatProxy);
    }
    
    public void onLoadChildren(String paramString, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> paramResult, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((MediaBrowserServiceCompatApi26.ServiceCompatProxy)a).onLoadChildren(paramString, new MediaBrowserServiceCompatApi26.b(paramResult), paramBundle);
    }
  }
  
  static class b
  {
    MediaBrowserService.Result a;
    
    b(MediaBrowserService.Result paramResult)
    {
      a = paramResult;
    }
    
    List<MediaBrowser.MediaItem> a(List<Parcel> paramList)
    {
      if (paramList == null) {
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Parcel localParcel = (Parcel)paramList.next();
        localParcel.setDataPosition(0);
        localArrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(localParcel));
        localParcel.recycle();
      }
      return localArrayList;
    }
    
    public void a()
    {
      a.detach();
    }
    
    public void a(List<Parcel> paramList, int paramInt)
    {
      try
      {
        MediaBrowserServiceCompatApi26.a.setInt(a, paramInt);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        Log.w("MBSCompatApi26", localIllegalAccessException);
      }
      a.sendResult(a(paramList));
    }
  }
}
