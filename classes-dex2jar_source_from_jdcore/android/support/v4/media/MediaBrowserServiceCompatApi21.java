package android.support.v4.media;

import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser.MediaItem;
import android.media.session.MediaSession.Token;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.service.media.MediaBrowserService;
import android.service.media.MediaBrowserService.BrowserRoot;
import android.service.media.MediaBrowserService.Result;
import android.support.annotation.RequiresApi;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
class MediaBrowserServiceCompatApi21
{
  public static IBinder a(Object paramObject, Intent paramIntent)
  {
    return ((MediaBrowserService)paramObject).onBind(paramIntent);
  }
  
  public static Object a(Context paramContext, ServiceCompatProxy paramServiceCompatProxy)
  {
    return new b(paramContext, paramServiceCompatProxy);
  }
  
  public static void a(Object paramObject)
  {
    ((MediaBrowserService)paramObject).onCreate();
  }
  
  public static void a(Object paramObject1, Object paramObject2)
  {
    ((MediaBrowserService)paramObject1).setSessionToken((MediaSession.Token)paramObject2);
  }
  
  public static void a(Object paramObject, String paramString)
  {
    ((MediaBrowserService)paramObject).notifyChildrenChanged(paramString);
  }
  
  public static abstract interface ServiceCompatProxy
  {
    public abstract MediaBrowserServiceCompatApi21.a onGetRoot(String paramString, int paramInt, Bundle paramBundle);
    
    public abstract void onLoadChildren(String paramString, MediaBrowserServiceCompatApi21.c<List<Parcel>> paramC);
  }
  
  static class a
  {
    final String a;
    final Bundle b;
    
    a(String paramString, Bundle paramBundle)
    {
      a = paramString;
      b = paramBundle;
    }
  }
  
  static class b
    extends MediaBrowserService
  {
    final MediaBrowserServiceCompatApi21.ServiceCompatProxy a;
    
    b(Context paramContext, MediaBrowserServiceCompatApi21.ServiceCompatProxy paramServiceCompatProxy)
    {
      attachBaseContext(paramContext);
      a = paramServiceCompatProxy;
    }
    
    public MediaBrowserService.BrowserRoot onGetRoot(String paramString, int paramInt, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      MediaBrowserServiceCompatApi21.ServiceCompatProxy localServiceCompatProxy = a;
      if (paramBundle == null) {
        paramBundle = null;
      } else {
        paramBundle = new Bundle(paramBundle);
      }
      paramString = localServiceCompatProxy.onGetRoot(paramString, paramInt, paramBundle);
      if (paramString == null) {
        return null;
      }
      return new MediaBrowserService.BrowserRoot(a, b);
    }
    
    public void onLoadChildren(String paramString, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> paramResult)
    {
      a.onLoadChildren(paramString, new MediaBrowserServiceCompatApi21.c(paramResult));
    }
  }
  
  static class c<T>
  {
    MediaBrowserService.Result a;
    
    c(MediaBrowserService.Result paramResult)
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
    
    public void a(T paramT)
    {
      if ((paramT instanceof List))
      {
        a.sendResult(a((List)paramT));
        return;
      }
      if ((paramT instanceof Parcel))
      {
        paramT = (Parcel)paramT;
        paramT.setDataPosition(0);
        a.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(paramT));
        paramT.recycle();
        return;
      }
      a.sendResult(null);
    }
  }
}
