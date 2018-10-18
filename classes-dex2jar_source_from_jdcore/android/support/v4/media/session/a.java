package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes.Builder;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.media.session.MediaSession.Callback;
import android.media.session.MediaSession.QueueItem;
import android.media.session.MediaSession.Token;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
class a
{
  public static Object a(Context paramContext, String paramString)
  {
    return new MediaSession(paramContext, paramString);
  }
  
  public static Object a(a paramA)
  {
    return new b(paramA);
  }
  
  public static Object a(Object paramObject)
  {
    if ((paramObject instanceof MediaSession)) {
      return paramObject;
    }
    throw new IllegalArgumentException("mediaSession is not a valid MediaSession object");
  }
  
  public static void a(Object paramObject, int paramInt)
  {
    ((MediaSession)paramObject).setFlags(paramInt);
  }
  
  public static void a(Object paramObject, PendingIntent paramPendingIntent)
  {
    ((MediaSession)paramObject).setSessionActivity(paramPendingIntent);
  }
  
  public static void a(Object paramObject, Bundle paramBundle)
  {
    ((MediaSession)paramObject).setExtras(paramBundle);
  }
  
  public static void a(Object paramObject, CharSequence paramCharSequence)
  {
    ((MediaSession)paramObject).setQueueTitle(paramCharSequence);
  }
  
  public static void a(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setPlaybackToRemote((VolumeProvider)paramObject2);
  }
  
  public static void a(Object paramObject1, Object paramObject2, Handler paramHandler)
  {
    ((MediaSession)paramObject1).setCallback((MediaSession.Callback)paramObject2, paramHandler);
  }
  
  public static void a(Object paramObject, String paramString, Bundle paramBundle)
  {
    ((MediaSession)paramObject).sendSessionEvent(paramString, paramBundle);
  }
  
  public static void a(Object paramObject, List<Object> paramList)
  {
    if (paramList == null)
    {
      ((MediaSession)paramObject).setQueue(null);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add((MediaSession.QueueItem)paramList.next());
    }
    ((MediaSession)paramObject).setQueue(localArrayList);
  }
  
  public static void a(Object paramObject, boolean paramBoolean)
  {
    ((MediaSession)paramObject).setActive(paramBoolean);
  }
  
  public static Object b(Object paramObject)
  {
    if ((paramObject instanceof MediaSession.Token)) {
      return paramObject;
    }
    throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
  }
  
  public static void b(Object paramObject, int paramInt)
  {
    AudioAttributes.Builder localBuilder = new AudioAttributes.Builder();
    localBuilder.setLegacyStreamType(paramInt);
    ((MediaSession)paramObject).setPlaybackToLocal(localBuilder.build());
  }
  
  public static void b(Object paramObject, PendingIntent paramPendingIntent)
  {
    ((MediaSession)paramObject).setMediaButtonReceiver(paramPendingIntent);
  }
  
  public static void b(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setPlaybackState((PlaybackState)paramObject2);
  }
  
  public static void c(Object paramObject1, Object paramObject2)
  {
    ((MediaSession)paramObject1).setMetadata((MediaMetadata)paramObject2);
  }
  
  public static boolean c(Object paramObject)
  {
    return ((MediaSession)paramObject).isActive();
  }
  
  public static void d(Object paramObject)
  {
    ((MediaSession)paramObject).release();
  }
  
  public static Parcelable e(Object paramObject)
  {
    return ((MediaSession)paramObject).getSessionToken();
  }
  
  public static boolean f(Object paramObject)
  {
    boolean bool = false;
    try
    {
      Field localField = paramObject.getClass().getDeclaredField("mCallback");
      if (localField == null) {
        break label43;
      }
      localField.setAccessible(true);
      paramObject = localField.get(paramObject);
      if (paramObject != null) {
        bool = true;
      }
      return bool;
    }
    catch (NoSuchFieldException|IllegalAccessException paramObject)
    {
      label43:
      for (;;) {}
    }
    Log.w("MediaSessionCompatApi21", "Failed to get mCallback object.");
    return false;
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(long paramLong);
    
    public abstract void a(Object paramObject);
    
    public abstract void a(String paramString, Bundle paramBundle);
    
    public abstract void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);
    
    public abstract boolean a(Intent paramIntent);
    
    public abstract void b();
    
    public abstract void b(long paramLong);
    
    public abstract void b(String paramString, Bundle paramBundle);
    
    public abstract void c();
    
    public abstract void c(String paramString, Bundle paramBundle);
    
    public abstract void d();
    
    public abstract void e();
    
    public abstract void f();
    
    public abstract void g();
  }
  
  static class b<T extends a.a>
    extends MediaSession.Callback
  {
    protected final T a;
    
    public b(T paramT)
    {
      a = paramT;
    }
    
    public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.a(paramString, paramBundle, paramResultReceiver);
    }
    
    public void onCustomAction(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.c(paramString, paramBundle);
    }
    
    public void onFastForward()
    {
      a.e();
    }
    
    public boolean onMediaButtonEvent(Intent paramIntent)
    {
      return (a.a(paramIntent)) || (super.onMediaButtonEvent(paramIntent));
    }
    
    public void onPause()
    {
      a.b();
    }
    
    public void onPlay()
    {
      a.a();
    }
    
    public void onPlayFromMediaId(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.a(paramString, paramBundle);
    }
    
    public void onPlayFromSearch(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.b(paramString, paramBundle);
    }
    
    public void onRewind()
    {
      a.f();
    }
    
    public void onSeekTo(long paramLong)
    {
      a.b(paramLong);
    }
    
    public void onSetRating(Rating paramRating)
    {
      a.a(paramRating);
    }
    
    public void onSkipToNext()
    {
      a.c();
    }
    
    public void onSkipToPrevious()
    {
      a.d();
    }
    
    public void onSkipToQueueItem(long paramLong)
    {
      a.a(paramLong);
    }
    
    public void onStop()
    {
      a.g();
    }
  }
  
  static class c
  {
    public static Object a(Object paramObject)
    {
      return ((MediaSession.QueueItem)paramObject).getDescription();
    }
    
    public static Object a(Object paramObject, long paramLong)
    {
      return new MediaSession.QueueItem((MediaDescription)paramObject, paramLong);
    }
    
    public static long b(Object paramObject)
    {
      return ((MediaSession.QueueItem)paramObject).getQueueId();
    }
  }
}
