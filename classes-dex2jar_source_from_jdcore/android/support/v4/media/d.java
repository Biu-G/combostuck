package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser.ConnectionCallback;
import android.media.browse.MediaBrowser.MediaItem;
import android.media.browse.MediaBrowser.SubscriptionCallback;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import java.util.List;

@RequiresApi(21)
class d
{
  public static Object a(Context paramContext, ComponentName paramComponentName, Object paramObject, Bundle paramBundle)
  {
    return new MediaBrowser(paramContext, paramComponentName, (MediaBrowser.ConnectionCallback)paramObject, paramBundle);
  }
  
  public static Object a(a paramA)
  {
    return new b(paramA);
  }
  
  public static Object a(d paramD)
  {
    return new e(paramD);
  }
  
  public static void a(Object paramObject)
  {
    ((MediaBrowser)paramObject).connect();
  }
  
  public static void a(Object paramObject, String paramString)
  {
    ((MediaBrowser)paramObject).unsubscribe(paramString);
  }
  
  public static void a(Object paramObject1, String paramString, Object paramObject2)
  {
    ((MediaBrowser)paramObject1).subscribe(paramString, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
  
  public static void b(Object paramObject)
  {
    ((MediaBrowser)paramObject).disconnect();
  }
  
  public static boolean c(Object paramObject)
  {
    return ((MediaBrowser)paramObject).isConnected();
  }
  
  public static ComponentName d(Object paramObject)
  {
    return ((MediaBrowser)paramObject).getServiceComponent();
  }
  
  public static String e(Object paramObject)
  {
    return ((MediaBrowser)paramObject).getRoot();
  }
  
  public static Bundle f(Object paramObject)
  {
    return ((MediaBrowser)paramObject).getExtras();
  }
  
  public static Object g(Object paramObject)
  {
    return ((MediaBrowser)paramObject).getSessionToken();
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
    
    public abstract void c();
  }
  
  static class b<T extends d.a>
    extends MediaBrowser.ConnectionCallback
  {
    protected final T a;
    
    public b(T paramT)
    {
      a = paramT;
    }
    
    public void onConnected()
    {
      a.a();
    }
    
    public void onConnectionFailed()
    {
      a.c();
    }
    
    public void onConnectionSuspended()
    {
      a.b();
    }
  }
  
  static class c
  {
    public static int a(Object paramObject)
    {
      return ((MediaBrowser.MediaItem)paramObject).getFlags();
    }
    
    public static Object b(Object paramObject)
    {
      return ((MediaBrowser.MediaItem)paramObject).getDescription();
    }
  }
  
  static abstract interface d
  {
    public abstract void a(@NonNull String paramString);
    
    public abstract void a(@NonNull String paramString, List<?> paramList);
  }
  
  static class e<T extends d.d>
    extends MediaBrowser.SubscriptionCallback
  {
    protected final T a;
    
    public e(T paramT)
    {
      a = paramT;
    }
    
    public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowser.MediaItem> paramList)
    {
      a.a(paramString, paramList);
    }
    
    public void onError(@NonNull String paramString)
    {
      a.a(paramString);
    }
  }
}
