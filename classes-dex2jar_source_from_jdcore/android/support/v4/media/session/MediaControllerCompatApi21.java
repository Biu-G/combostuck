package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaController.Callback;
import android.media.session.MediaController.PlaybackInfo;
import android.media.session.MediaController.TransportControls;
import android.media.session.MediaSession.QueueItem;
import android.media.session.MediaSession.Token;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.annotation.RequiresApi;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

@RequiresApi(21)
class MediaControllerCompatApi21
{
  public static Object a(Activity paramActivity)
  {
    return paramActivity.getMediaController();
  }
  
  public static Object a(Context paramContext, Object paramObject)
  {
    return new MediaController(paramContext, (MediaSession.Token)paramObject);
  }
  
  public static Object a(Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  public static Object a(Object paramObject)
  {
    return ((MediaController)paramObject).getSessionToken();
  }
  
  public static void a(Activity paramActivity, Object paramObject)
  {
    paramActivity.setMediaController((MediaController)paramObject);
  }
  
  public static void a(Object paramObject, int paramInt1, int paramInt2)
  {
    ((MediaController)paramObject).setVolumeTo(paramInt1, paramInt2);
  }
  
  public static void a(Object paramObject1, Object paramObject2)
  {
    ((MediaController)paramObject1).unregisterCallback((MediaController.Callback)paramObject2);
  }
  
  public static void a(Object paramObject1, Object paramObject2, Handler paramHandler)
  {
    ((MediaController)paramObject1).registerCallback((MediaController.Callback)paramObject2, paramHandler);
  }
  
  public static void a(Object paramObject, String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    ((MediaController)paramObject).sendCommand(paramString, paramBundle, paramResultReceiver);
  }
  
  public static boolean a(Object paramObject, KeyEvent paramKeyEvent)
  {
    return ((MediaController)paramObject).dispatchMediaButtonEvent(paramKeyEvent);
  }
  
  public static Object b(Object paramObject)
  {
    return ((MediaController)paramObject).getTransportControls();
  }
  
  public static void b(Object paramObject, int paramInt1, int paramInt2)
  {
    ((MediaController)paramObject).adjustVolume(paramInt1, paramInt2);
  }
  
  public static Object c(Object paramObject)
  {
    return ((MediaController)paramObject).getPlaybackState();
  }
  
  public static Object d(Object paramObject)
  {
    return ((MediaController)paramObject).getMetadata();
  }
  
  public static List<Object> e(Object paramObject)
  {
    paramObject = ((MediaController)paramObject).getQueue();
    if (paramObject == null) {
      return null;
    }
    return new ArrayList(paramObject);
  }
  
  public static CharSequence f(Object paramObject)
  {
    return ((MediaController)paramObject).getQueueTitle();
  }
  
  public static Bundle g(Object paramObject)
  {
    return ((MediaController)paramObject).getExtras();
  }
  
  public static int h(Object paramObject)
  {
    return ((MediaController)paramObject).getRatingType();
  }
  
  public static long i(Object paramObject)
  {
    return ((MediaController)paramObject).getFlags();
  }
  
  public static Object j(Object paramObject)
  {
    return ((MediaController)paramObject).getPlaybackInfo();
  }
  
  public static PendingIntent k(Object paramObject)
  {
    return ((MediaController)paramObject).getSessionActivity();
  }
  
  public static String l(Object paramObject)
  {
    return ((MediaController)paramObject).getPackageName();
  }
  
  public static abstract interface Callback
  {
    public abstract void onAudioInfoChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
    
    public abstract void onExtrasChanged(Bundle paramBundle);
    
    public abstract void onMetadataChanged(Object paramObject);
    
    public abstract void onPlaybackStateChanged(Object paramObject);
    
    public abstract void onQueueChanged(List<?> paramList);
    
    public abstract void onQueueTitleChanged(CharSequence paramCharSequence);
    
    public abstract void onSessionDestroyed();
    
    public abstract void onSessionEvent(String paramString, Bundle paramBundle);
  }
  
  public static class PlaybackInfo
  {
    private PlaybackInfo() {}
    
    private static int a(AudioAttributes paramAudioAttributes)
    {
      if ((paramAudioAttributes.getFlags() & 0x1) == 1) {
        return 7;
      }
      if ((paramAudioAttributes.getFlags() & 0x4) == 4) {
        return 6;
      }
      switch (paramAudioAttributes.getUsage())
      {
      default: 
        return 3;
      case 13: 
        return 1;
      case 6: 
        return 2;
      case 5: 
      case 7: 
      case 8: 
      case 9: 
      case 10: 
        return 5;
      case 4: 
        return 4;
      case 3: 
        return 8;
      case 2: 
        return 0;
      }
      return 3;
    }
    
    public static AudioAttributes getAudioAttributes(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getAudioAttributes();
    }
    
    public static int getCurrentVolume(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getCurrentVolume();
    }
    
    public static int getLegacyAudioStream(Object paramObject)
    {
      return a(getAudioAttributes(paramObject));
    }
    
    public static int getMaxVolume(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getMaxVolume();
    }
    
    public static int getPlaybackType(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getPlaybackType();
    }
    
    public static int getVolumeControl(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getVolumeControl();
    }
  }
  
  public static class TransportControls
  {
    private TransportControls() {}
    
    public static void fastForward(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).fastForward();
    }
    
    public static void pause(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).pause();
    }
    
    public static void play(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).play();
    }
    
    public static void playFromMediaId(Object paramObject, String paramString, Bundle paramBundle)
    {
      ((MediaController.TransportControls)paramObject).playFromMediaId(paramString, paramBundle);
    }
    
    public static void playFromSearch(Object paramObject, String paramString, Bundle paramBundle)
    {
      ((MediaController.TransportControls)paramObject).playFromSearch(paramString, paramBundle);
    }
    
    public static void rewind(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).rewind();
    }
    
    public static void seekTo(Object paramObject, long paramLong)
    {
      ((MediaController.TransportControls)paramObject).seekTo(paramLong);
    }
    
    public static void sendCustomAction(Object paramObject, String paramString, Bundle paramBundle)
    {
      ((MediaController.TransportControls)paramObject).sendCustomAction(paramString, paramBundle);
    }
    
    public static void setRating(Object paramObject1, Object paramObject2)
    {
      ((MediaController.TransportControls)paramObject1).setRating((Rating)paramObject2);
    }
    
    public static void skipToNext(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).skipToNext();
    }
    
    public static void skipToPrevious(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).skipToPrevious();
    }
    
    public static void skipToQueueItem(Object paramObject, long paramLong)
    {
      ((MediaController.TransportControls)paramObject).skipToQueueItem(paramLong);
    }
    
    public static void stop(Object paramObject)
    {
      ((MediaController.TransportControls)paramObject).stop();
    }
  }
  
  static class a<T extends MediaControllerCompatApi21.Callback>
    extends MediaController.Callback
  {
    protected final T a;
    
    public a(T paramT)
    {
      a = paramT;
    }
    
    public void onAudioInfoChanged(MediaController.PlaybackInfo paramPlaybackInfo)
    {
      a.onAudioInfoChanged(paramPlaybackInfo.getPlaybackType(), MediaControllerCompatApi21.PlaybackInfo.getLegacyAudioStream(paramPlaybackInfo), paramPlaybackInfo.getVolumeControl(), paramPlaybackInfo.getMaxVolume(), paramPlaybackInfo.getCurrentVolume());
    }
    
    public void onExtrasChanged(Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.onExtrasChanged(paramBundle);
    }
    
    public void onMetadataChanged(MediaMetadata paramMediaMetadata)
    {
      a.onMetadataChanged(paramMediaMetadata);
    }
    
    public void onPlaybackStateChanged(PlaybackState paramPlaybackState)
    {
      a.onPlaybackStateChanged(paramPlaybackState);
    }
    
    public void onQueueChanged(List<MediaSession.QueueItem> paramList)
    {
      a.onQueueChanged(paramList);
    }
    
    public void onQueueTitleChanged(CharSequence paramCharSequence)
    {
      a.onQueueTitleChanged(paramCharSequence);
    }
    
    public void onSessionDestroyed()
    {
      a.onSessionDestroyed();
    }
    
    public void onSessionEvent(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      a.onSessionEvent(paramString, paramBundle);
    }
  }
}
