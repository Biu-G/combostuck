package android.support.v4.media.session;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.annotation.GuardedBy;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.app.SupportActivity;
import android.support.v4.app.SupportActivity.ExtraData;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class MediaControllerCompat
{
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_ADD_QUEUE_ITEM = "android.support.v4.media.session.command.ADD_QUEUE_ITEM";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_ADD_QUEUE_ITEM_AT = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_ARGUMENT_INDEX = "android.support.v4.media.session.command.ARGUMENT_INDEX";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_ARGUMENT_MEDIA_DESCRIPTION = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_GET_EXTRA_BINDER = "android.support.v4.media.session.command.GET_EXTRA_BINDER";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_REMOVE_QUEUE_ITEM = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String COMMAND_REMOVE_QUEUE_ITEM_AT = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT";
  private final b a;
  private final MediaSessionCompat.Token b;
  private final HashSet<Callback> c = new HashSet();
  
  public MediaControllerCompat(Context paramContext, @NonNull MediaSessionCompat.Token paramToken)
    throws RemoteException
  {
    if (paramToken != null)
    {
      b = paramToken;
      if (Build.VERSION.SDK_INT >= 24)
      {
        a = new d(paramContext, paramToken);
        return;
      }
      if (Build.VERSION.SDK_INT >= 23)
      {
        a = new c(paramContext, paramToken);
        return;
      }
      if (Build.VERSION.SDK_INT >= 21)
      {
        a = new MediaControllerImplApi21(paramContext, paramToken);
        return;
      }
      a = new e(paramToken);
      return;
    }
    throw new IllegalArgumentException("sessionToken must not be null");
  }
  
  public MediaControllerCompat(Context paramContext, @NonNull MediaSessionCompat paramMediaSessionCompat)
  {
    if (paramMediaSessionCompat != null)
    {
      b = paramMediaSessionCompat.getSessionToken();
      paramMediaSessionCompat = null;
      try
      {
        if (Build.VERSION.SDK_INT >= 24) {
          paramContext = new d(paramContext, b);
        } else if (Build.VERSION.SDK_INT >= 23) {
          paramContext = new c(paramContext, b);
        } else if (Build.VERSION.SDK_INT >= 21) {
          paramContext = new MediaControllerImplApi21(paramContext, b);
        } else {
          paramContext = new e(b);
        }
      }
      catch (RemoteException paramContext)
      {
        Log.w("MediaControllerCompat", "Failed to create MediaControllerImpl.", paramContext);
        paramContext = paramMediaSessionCompat;
      }
    }
    for (;;)
    {
      a = paramContext;
      return;
      throw new IllegalArgumentException("session must not be null");
    }
  }
  
  static void a(String paramString, Bundle paramBundle)
  {
    if (paramString == null) {
      return;
    }
    int i = -1;
    int j = paramString.hashCode();
    if (j != -1348483723)
    {
      if ((j == 503011406) && (paramString.equals("android.support.v4.media.session.action.UNFOLLOW"))) {
        i = 1;
      }
    }
    else if (paramString.equals("android.support.v4.media.session.action.FOLLOW")) {
      i = 0;
    }
    switch (i)
    {
    default: 
      return;
    }
    if ((paramBundle != null) && (paramBundle.containsKey("android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE"))) {
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action ");
    paramBundle.append(paramString);
    paramBundle.append(".");
    throw new IllegalArgumentException(paramBundle.toString());
  }
  
  public static MediaControllerCompat getMediaController(@NonNull Activity paramActivity)
  {
    boolean bool = paramActivity instanceof SupportActivity;
    Object localObject = null;
    if (bool)
    {
      a localA = (a)((SupportActivity)paramActivity).getExtraData(a.class);
      paramActivity = localObject;
      if (localA != null) {
        paramActivity = localA.a();
      }
      return paramActivity;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      localObject = MediaControllerCompatApi21.a(paramActivity);
      if (localObject == null) {
        return null;
      }
      localObject = MediaControllerCompatApi21.a(localObject);
      try
      {
        paramActivity = new MediaControllerCompat(paramActivity, MediaSessionCompat.Token.fromToken(localObject));
        return paramActivity;
      }
      catch (RemoteException paramActivity)
      {
        Log.e("MediaControllerCompat", "Dead object in getMediaController.", paramActivity);
      }
    }
    return null;
  }
  
  public static void setMediaController(@NonNull Activity paramActivity, MediaControllerCompat paramMediaControllerCompat)
  {
    if ((paramActivity instanceof SupportActivity)) {
      ((SupportActivity)paramActivity).putExtraData(new a(paramMediaControllerCompat));
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      Object localObject = null;
      if (paramMediaControllerCompat != null) {
        localObject = MediaControllerCompatApi21.a(paramActivity, paramMediaControllerCompat.getSessionToken().getToken());
      }
      MediaControllerCompatApi21.a(paramActivity, localObject);
    }
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
  {
    a.a(paramMediaDescriptionCompat);
  }
  
  public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
  {
    a.a(paramMediaDescriptionCompat, paramInt);
  }
  
  public void adjustVolume(int paramInt1, int paramInt2)
  {
    a.b(paramInt1, paramInt2);
  }
  
  public boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent != null) {
      return a.a(paramKeyEvent);
    }
    throw new IllegalArgumentException("KeyEvent may not be null");
  }
  
  public Bundle getExtras()
  {
    return a.f();
  }
  
  public long getFlags()
  {
    return a.k();
  }
  
  public Object getMediaController()
  {
    return a.p();
  }
  
  public MediaMetadataCompat getMetadata()
  {
    return a.c();
  }
  
  public String getPackageName()
  {
    return a.o();
  }
  
  public PlaybackInfo getPlaybackInfo()
  {
    return a.l();
  }
  
  public PlaybackStateCompat getPlaybackState()
  {
    return a.b();
  }
  
  public List<MediaSessionCompat.QueueItem> getQueue()
  {
    return a.d();
  }
  
  public CharSequence getQueueTitle()
  {
    return a.e();
  }
  
  public int getRatingType()
  {
    return a.g();
  }
  
  public int getRepeatMode()
  {
    return a.i();
  }
  
  public PendingIntent getSessionActivity()
  {
    return a.m();
  }
  
  public MediaSessionCompat.Token getSessionToken()
  {
    return b;
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public Bundle getSessionToken2Bundle()
  {
    return b.getSessionToken2Bundle();
  }
  
  public int getShuffleMode()
  {
    return a.j();
  }
  
  public TransportControls getTransportControls()
  {
    return a.a();
  }
  
  public boolean isCaptioningEnabled()
  {
    return a.h();
  }
  
  public boolean isSessionReady()
  {
    return a.n();
  }
  
  public void registerCallback(@NonNull Callback paramCallback)
  {
    registerCallback(paramCallback, null);
  }
  
  public void registerCallback(@NonNull Callback paramCallback, Handler paramHandler)
  {
    if (paramCallback != null)
    {
      Handler localHandler = paramHandler;
      if (paramHandler == null) {
        localHandler = new Handler();
      }
      paramCallback.a(localHandler);
      a.a(paramCallback, localHandler);
      c.add(paramCallback);
      return;
    }
    throw new IllegalArgumentException("callback must not be null");
  }
  
  public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
  {
    a.b(paramMediaDescriptionCompat);
  }
  
  @Deprecated
  public void removeQueueItemAt(int paramInt)
  {
    Object localObject = getQueue();
    if ((localObject != null) && (paramInt >= 0) && (paramInt < ((List)localObject).size()))
    {
      localObject = (MediaSessionCompat.QueueItem)((List)localObject).get(paramInt);
      if (localObject != null) {
        removeQueueItem(((MediaSessionCompat.QueueItem)localObject).getDescription());
      }
    }
  }
  
  public void sendCommand(@NonNull String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      a.a(paramString, paramBundle, paramResultReceiver);
      return;
    }
    throw new IllegalArgumentException("command must neither be null nor empty");
  }
  
  public void setVolumeTo(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2);
  }
  
  public void unregisterCallback(@NonNull Callback paramCallback)
  {
    if (paramCallback != null) {
      try
      {
        c.remove(paramCallback);
        a.a(paramCallback);
        return;
      }
      finally
      {
        paramCallback.a(null);
      }
    }
    throw new IllegalArgumentException("callback must not be null");
  }
  
  public static abstract class Callback
    implements IBinder.DeathRecipient
  {
    final Object a;
    a b;
    IMediaControllerCallback c;
    
    public Callback()
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        a = MediaControllerCompatApi21.a(new b(this));
        return;
      }
      c localC = new c(this);
      c = localC;
      a = localC;
    }
    
    void a(int paramInt, Object paramObject, Bundle paramBundle)
    {
      if (b != null)
      {
        paramObject = b.obtainMessage(paramInt, paramObject);
        paramObject.setData(paramBundle);
        paramObject.sendToTarget();
      }
    }
    
    void a(Handler paramHandler)
    {
      if (paramHandler == null)
      {
        if (b != null)
        {
          b.a = false;
          b.removeCallbacksAndMessages(null);
          b = null;
        }
      }
      else
      {
        b = new a(paramHandler.getLooper());
        b.a = true;
      }
    }
    
    public void binderDied()
    {
      a(8, null, null);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
    public IMediaControllerCallback getIControllerCallback()
    {
      return c;
    }
    
    public void onAudioInfoChanged(MediaControllerCompat.PlaybackInfo paramPlaybackInfo) {}
    
    public void onCaptioningEnabledChanged(boolean paramBoolean) {}
    
    public void onExtrasChanged(Bundle paramBundle) {}
    
    public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat) {}
    
    public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat) {}
    
    public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList) {}
    
    public void onQueueTitleChanged(CharSequence paramCharSequence) {}
    
    public void onRepeatModeChanged(int paramInt) {}
    
    public void onSessionDestroyed() {}
    
    public void onSessionEvent(String paramString, Bundle paramBundle) {}
    
    public void onSessionReady() {}
    
    public void onShuffleModeChanged(int paramInt) {}
    
    private class a
      extends Handler
    {
      boolean a = false;
      
      a(Looper paramLooper)
      {
        super();
      }
      
      public void handleMessage(Message paramMessage)
      {
        if (!a) {
          return;
        }
        switch (what)
        {
        case 10: 
        default: 
          return;
        case 13: 
          onSessionReady();
          return;
        case 12: 
          onShuffleModeChanged(((Integer)obj).intValue());
          return;
        case 11: 
          onCaptioningEnabledChanged(((Boolean)obj).booleanValue());
          return;
        case 9: 
          onRepeatModeChanged(((Integer)obj).intValue());
          return;
        case 8: 
          onSessionDestroyed();
          return;
        case 7: 
          paramMessage = (Bundle)obj;
          MediaSessionCompat.ensureClassLoader(paramMessage);
          onExtrasChanged(paramMessage);
          return;
        case 6: 
          onQueueTitleChanged((CharSequence)obj);
          return;
        case 5: 
          onQueueChanged((List)obj);
          return;
        case 4: 
          onAudioInfoChanged((MediaControllerCompat.PlaybackInfo)obj);
          return;
        case 3: 
          onMetadataChanged((MediaMetadataCompat)obj);
          return;
        case 2: 
          onPlaybackStateChanged((PlaybackStateCompat)obj);
          return;
        }
        Bundle localBundle = paramMessage.getData();
        MediaSessionCompat.ensureClassLoader(localBundle);
        onSessionEvent((String)obj, localBundle);
      }
    }
    
    private static class b
      implements MediaControllerCompatApi21.Callback
    {
      private final WeakReference<MediaControllerCompat.Callback> a;
      
      b(MediaControllerCompat.Callback paramCallback)
      {
        a = new WeakReference(paramCallback);
      }
      
      public void onAudioInfoChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onAudioInfoChanged(new MediaControllerCompat.PlaybackInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5));
        }
      }
      
      public void onExtrasChanged(Bundle paramBundle)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onExtrasChanged(paramBundle);
        }
      }
      
      public void onMetadataChanged(Object paramObject)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(paramObject));
        }
      }
      
      public void onPlaybackStateChanged(Object paramObject)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null)
        {
          if (c != null) {
            return;
          }
          localCallback.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(paramObject));
        }
      }
      
      public void onQueueChanged(List<?> paramList)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onQueueChanged(MediaSessionCompat.QueueItem.fromQueueItemList(paramList));
        }
      }
      
      public void onQueueTitleChanged(CharSequence paramCharSequence)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onQueueTitleChanged(paramCharSequence);
        }
      }
      
      public void onSessionDestroyed()
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.onSessionDestroyed();
        }
      }
      
      public void onSessionEvent(String paramString, Bundle paramBundle)
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null)
        {
          if ((c != null) && (Build.VERSION.SDK_INT < 23)) {
            return;
          }
          localCallback.onSessionEvent(paramString, paramBundle);
        }
      }
    }
    
    private static class c
      extends IMediaControllerCallback.Stub
    {
      private final WeakReference<MediaControllerCompat.Callback> a;
      
      c(MediaControllerCompat.Callback paramCallback)
      {
        a = new WeakReference(paramCallback);
      }
      
      public void onCaptioningEnabledChanged(boolean paramBoolean)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(11, Boolean.valueOf(paramBoolean), null);
        }
      }
      
      public void onEvent(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(1, paramString, paramBundle);
        }
      }
      
      public void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(7, paramBundle, null);
        }
      }
      
      public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(3, paramMediaMetadataCompat, null);
        }
      }
      
      public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(2, paramPlaybackStateCompat, null);
        }
      }
      
      public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(5, paramList, null);
        }
      }
      
      public void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(6, paramCharSequence, null);
        }
      }
      
      public void onRepeatModeChanged(int paramInt)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(9, Integer.valueOf(paramInt), null);
        }
      }
      
      public void onSessionDestroyed()
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(8, null, null);
        }
      }
      
      public void onSessionReady()
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(13, null, null);
        }
      }
      
      public void onShuffleModeChanged(int paramInt)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null) {
          localCallback.a(12, Integer.valueOf(paramInt), null);
        }
      }
      
      public void onShuffleModeChangedRemoved(boolean paramBoolean)
        throws RemoteException
      {}
      
      public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)a.get();
        if (localCallback != null)
        {
          if (paramParcelableVolumeInfo != null) {
            paramParcelableVolumeInfo = new MediaControllerCompat.PlaybackInfo(volumeType, audioStream, controlType, maxVolume, currentVolume);
          } else {
            paramParcelableVolumeInfo = null;
          }
          localCallback.a(4, paramParcelableVolumeInfo, null);
        }
      }
    }
  }
  
  @RequiresApi(21)
  static class MediaControllerImplApi21
    implements MediaControllerCompat.b
  {
    protected final Object a;
    final Object b = new Object();
    final MediaSessionCompat.Token c;
    @GuardedBy("mLock")
    private final List<MediaControllerCompat.Callback> d = new ArrayList();
    private HashMap<MediaControllerCompat.Callback, a> e = new HashMap();
    
    public MediaControllerImplApi21(Context paramContext, MediaSessionCompat.Token paramToken)
      throws RemoteException
    {
      c = paramToken;
      a = MediaControllerCompatApi21.a(paramContext, c.getToken());
      if (a != null)
      {
        if (c.getExtraBinder() == null) {
          r();
        }
        return;
      }
      throw new RemoteException();
    }
    
    private void r()
    {
      a("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
    }
    
    public MediaControllerCompat.TransportControls a()
    {
      Object localObject = MediaControllerCompatApi21.b(a);
      if (localObject != null) {
        return new MediaControllerCompat.f(localObject);
      }
      return null;
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      MediaControllerCompatApi21.a(a, paramInt1, paramInt2);
    }
    
    public void a(MediaDescriptionCompat paramMediaDescriptionCompat)
    {
      if ((k() & 0x4) != 0L)
      {
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", paramMediaDescriptionCompat);
        a("android.support.v4.media.session.command.ADD_QUEUE_ITEM", localBundle, null);
        return;
      }
      throw new UnsupportedOperationException("This session doesn't support queue management operations");
    }
    
    public void a(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
    {
      if ((k() & 0x4) != 0L)
      {
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", paramMediaDescriptionCompat);
        localBundle.putInt("android.support.v4.media.session.command.ARGUMENT_INDEX", paramInt);
        a("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT", localBundle, null);
        return;
      }
      throw new UnsupportedOperationException("This session doesn't support queue management operations");
    }
    
    public final void a(MediaControllerCompat.Callback paramCallback)
    {
      MediaControllerCompatApi21.a(a, a);
      synchronized (b)
      {
        Object localObject2 = c.getExtraBinder();
        if (localObject2 != null) {
          try
          {
            localObject2 = (a)e.remove(paramCallback);
            if (localObject2 == null) {
              break label91;
            }
            c = null;
            c.getExtraBinder().unregisterCallbackListener((IMediaControllerCallback)localObject2);
          }
          catch (RemoteException paramCallback)
          {
            Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", paramCallback);
          }
        } else {
          d.remove(paramCallback);
        }
        label91:
        return;
      }
    }
    
    public final void a(MediaControllerCompat.Callback paramCallback, Handler arg2)
    {
      MediaControllerCompatApi21.a(a, a, ???);
      synchronized (b)
      {
        if (c.getExtraBinder() != null)
        {
          a localA = new a(paramCallback);
          e.put(paramCallback, localA);
          c = localA;
          try
          {
            c.getExtraBinder().registerCallbackListener(localA);
            paramCallback.a(13, null, null);
          }
          catch (RemoteException paramCallback)
          {
            Log.e("MediaControllerCompat", "Dead object in registerCallback.", paramCallback);
          }
        }
        else
        {
          c = null;
          d.add(paramCallback);
        }
        return;
      }
    }
    
    public void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
    {
      MediaControllerCompatApi21.a(a, paramString, paramBundle, paramResultReceiver);
    }
    
    public boolean a(KeyEvent paramKeyEvent)
    {
      return MediaControllerCompatApi21.a(a, paramKeyEvent);
    }
    
    public PlaybackStateCompat b()
    {
      if (c.getExtraBinder() != null) {
        try
        {
          PlaybackStateCompat localPlaybackStateCompat = c.getExtraBinder().getPlaybackState();
          return localPlaybackStateCompat;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", localRemoteException);
        }
      }
      Object localObject = MediaControllerCompatApi21.c(a);
      if (localObject != null) {
        return PlaybackStateCompat.fromPlaybackState(localObject);
      }
      return null;
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      MediaControllerCompatApi21.b(a, paramInt1, paramInt2);
    }
    
    public void b(MediaDescriptionCompat paramMediaDescriptionCompat)
    {
      if ((k() & 0x4) != 0L)
      {
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", paramMediaDescriptionCompat);
        a("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM", localBundle, null);
        return;
      }
      throw new UnsupportedOperationException("This session doesn't support queue management operations");
    }
    
    public MediaMetadataCompat c()
    {
      Object localObject = MediaControllerCompatApi21.d(a);
      if (localObject != null) {
        return MediaMetadataCompat.fromMediaMetadata(localObject);
      }
      return null;
    }
    
    public List<MediaSessionCompat.QueueItem> d()
    {
      List localList = MediaControllerCompatApi21.e(a);
      if (localList != null) {
        return MediaSessionCompat.QueueItem.fromQueueItemList(localList);
      }
      return null;
    }
    
    public CharSequence e()
    {
      return MediaControllerCompatApi21.f(a);
    }
    
    public Bundle f()
    {
      return MediaControllerCompatApi21.g(a);
    }
    
    public int g()
    {
      if ((Build.VERSION.SDK_INT < 22) && (c.getExtraBinder() != null)) {
        try
        {
          int i = c.getExtraBinder().getRatingType();
          return i;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in getRatingType.", localRemoteException);
        }
      }
      return MediaControllerCompatApi21.h(a);
    }
    
    public boolean h()
    {
      if (c.getExtraBinder() != null) {
        try
        {
          boolean bool = c.getExtraBinder().isCaptioningEnabled();
          return bool;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", localRemoteException);
        }
      }
      return false;
    }
    
    public int i()
    {
      if (c.getExtraBinder() != null) {
        try
        {
          int i = c.getExtraBinder().getRepeatMode();
          return i;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", localRemoteException);
        }
      }
      return -1;
    }
    
    public int j()
    {
      if (c.getExtraBinder() != null) {
        try
        {
          int i = c.getExtraBinder().getShuffleMode();
          return i;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", localRemoteException);
        }
      }
      return -1;
    }
    
    public long k()
    {
      return MediaControllerCompatApi21.i(a);
    }
    
    public MediaControllerCompat.PlaybackInfo l()
    {
      Object localObject = MediaControllerCompatApi21.j(a);
      if (localObject != null) {
        return new MediaControllerCompat.PlaybackInfo(MediaControllerCompatApi21.PlaybackInfo.getPlaybackType(localObject), MediaControllerCompatApi21.PlaybackInfo.getLegacyAudioStream(localObject), MediaControllerCompatApi21.PlaybackInfo.getVolumeControl(localObject), MediaControllerCompatApi21.PlaybackInfo.getMaxVolume(localObject), MediaControllerCompatApi21.PlaybackInfo.getCurrentVolume(localObject));
      }
      return null;
    }
    
    public PendingIntent m()
    {
      return MediaControllerCompatApi21.k(a);
    }
    
    public boolean n()
    {
      return c.getExtraBinder() != null;
    }
    
    public String o()
    {
      return MediaControllerCompatApi21.l(a);
    }
    
    public Object p()
    {
      return a;
    }
    
    @GuardedBy("mLock")
    void q()
    {
      if (c.getExtraBinder() == null) {
        return;
      }
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        MediaControllerCompat.Callback localCallback = (MediaControllerCompat.Callback)localIterator.next();
        a localA = new a(localCallback);
        e.put(localCallback, localA);
        c = localA;
        try
        {
          c.getExtraBinder().registerCallbackListener(localA);
          localCallback.a(13, null, null);
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("MediaControllerCompat", "Dead object in registerCallback.", localRemoteException);
        }
      }
      d.clear();
    }
    
    private static class ExtraBinderRequestResultReceiver
      extends ResultReceiver
    {
      private WeakReference<MediaControllerCompat.MediaControllerImplApi21> a;
      
      ExtraBinderRequestResultReceiver(MediaControllerCompat.MediaControllerImplApi21 paramMediaControllerImplApi21)
      {
        super();
        a = new WeakReference(paramMediaControllerImplApi21);
      }
      
      protected void onReceiveResult(int paramInt, Bundle paramBundle)
      {
        MediaControllerCompat.MediaControllerImplApi21 localMediaControllerImplApi21 = (MediaControllerCompat.MediaControllerImplApi21)a.get();
        if (localMediaControllerImplApi21 != null)
        {
          if (paramBundle == null) {
            return;
          }
          synchronized (b)
          {
            c.setExtraBinder(IMediaSession.Stub.asInterface(BundleCompat.getBinder(paramBundle, "android.support.v4.media.session.EXTRA_BINDER")));
            c.setSessionToken2Bundle(paramBundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
            localMediaControllerImplApi21.q();
            return;
          }
        }
      }
    }
    
    private static class a
      extends MediaControllerCompat.Callback.c
    {
      a(MediaControllerCompat.Callback paramCallback)
      {
        super();
      }
      
      public void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void onSessionDestroyed()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        throw new AssertionError();
      }
    }
  }
  
  public static final class PlaybackInfo
  {
    public static final int PLAYBACK_TYPE_LOCAL = 1;
    public static final int PLAYBACK_TYPE_REMOTE = 2;
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    
    PlaybackInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramInt3;
      d = paramInt4;
      e = paramInt5;
    }
    
    public int getAudioStream()
    {
      return b;
    }
    
    public int getCurrentVolume()
    {
      return e;
    }
    
    public int getMaxVolume()
    {
      return d;
    }
    
    public int getPlaybackType()
    {
      return a;
    }
    
    public int getVolumeControl()
    {
      return c;
    }
  }
  
  public static abstract class TransportControls
  {
    public static final String EXTRA_LEGACY_STREAM_TYPE = "android.media.session.extra.LEGACY_STREAM_TYPE";
    
    TransportControls() {}
    
    public abstract void fastForward();
    
    public abstract void pause();
    
    public abstract void play();
    
    public abstract void playFromMediaId(String paramString, Bundle paramBundle);
    
    public abstract void playFromSearch(String paramString, Bundle paramBundle);
    
    public abstract void playFromUri(Uri paramUri, Bundle paramBundle);
    
    public abstract void prepare();
    
    public abstract void prepareFromMediaId(String paramString, Bundle paramBundle);
    
    public abstract void prepareFromSearch(String paramString, Bundle paramBundle);
    
    public abstract void prepareFromUri(Uri paramUri, Bundle paramBundle);
    
    public abstract void rewind();
    
    public abstract void seekTo(long paramLong);
    
    public abstract void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle);
    
    public abstract void sendCustomAction(String paramString, Bundle paramBundle);
    
    public abstract void setCaptioningEnabled(boolean paramBoolean);
    
    public abstract void setRating(RatingCompat paramRatingCompat);
    
    public abstract void setRating(RatingCompat paramRatingCompat, Bundle paramBundle);
    
    public abstract void setRepeatMode(int paramInt);
    
    public abstract void setShuffleMode(int paramInt);
    
    public abstract void skipToNext();
    
    public abstract void skipToPrevious();
    
    public abstract void skipToQueueItem(long paramLong);
    
    public abstract void stop();
  }
  
  private static class a
    extends SupportActivity.ExtraData
  {
    private final MediaControllerCompat a;
    
    a(MediaControllerCompat paramMediaControllerCompat)
    {
      a = paramMediaControllerCompat;
    }
    
    MediaControllerCompat a()
    {
      return a;
    }
  }
  
  static abstract interface b
  {
    public abstract MediaControllerCompat.TransportControls a();
    
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void a(MediaDescriptionCompat paramMediaDescriptionCompat);
    
    public abstract void a(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt);
    
    public abstract void a(MediaControllerCompat.Callback paramCallback);
    
    public abstract void a(MediaControllerCompat.Callback paramCallback, Handler paramHandler);
    
    public abstract void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);
    
    public abstract boolean a(KeyEvent paramKeyEvent);
    
    public abstract PlaybackStateCompat b();
    
    public abstract void b(int paramInt1, int paramInt2);
    
    public abstract void b(MediaDescriptionCompat paramMediaDescriptionCompat);
    
    public abstract MediaMetadataCompat c();
    
    public abstract List<MediaSessionCompat.QueueItem> d();
    
    public abstract CharSequence e();
    
    public abstract Bundle f();
    
    public abstract int g();
    
    public abstract boolean h();
    
    public abstract int i();
    
    public abstract int j();
    
    public abstract long k();
    
    public abstract MediaControllerCompat.PlaybackInfo l();
    
    public abstract PendingIntent m();
    
    public abstract boolean n();
    
    public abstract String o();
    
    public abstract Object p();
  }
  
  @RequiresApi(23)
  static class c
    extends MediaControllerCompat.MediaControllerImplApi21
  {
    public c(Context paramContext, MediaSessionCompat.Token paramToken)
      throws RemoteException
    {
      super(paramToken);
    }
    
    public MediaControllerCompat.TransportControls a()
    {
      Object localObject = MediaControllerCompatApi21.b(a);
      if (localObject != null) {
        return new MediaControllerCompat.g(localObject);
      }
      return null;
    }
  }
  
  @RequiresApi(24)
  static class d
    extends MediaControllerCompat.c
  {
    public d(Context paramContext, MediaSessionCompat.Token paramToken)
      throws RemoteException
    {
      super(paramToken);
    }
    
    public MediaControllerCompat.TransportControls a()
    {
      Object localObject = MediaControllerCompatApi21.b(a);
      if (localObject != null) {
        return new MediaControllerCompat.h(localObject);
      }
      return null;
    }
  }
  
  static class e
    implements MediaControllerCompat.b
  {
    private IMediaSession a;
    private MediaControllerCompat.TransportControls b;
    
    public e(MediaSessionCompat.Token paramToken)
    {
      a = IMediaSession.Stub.asInterface((IBinder)paramToken.getToken());
    }
    
    public MediaControllerCompat.TransportControls a()
    {
      if (b == null) {
        b = new MediaControllerCompat.i(a);
      }
      return b;
    }
    
    public void a(int paramInt1, int paramInt2)
    {
      try
      {
        a.setVolumeTo(paramInt1, paramInt2, null);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in setVolumeTo.", localRemoteException);
      }
    }
    
    public void a(MediaDescriptionCompat paramMediaDescriptionCompat)
    {
      try
      {
        if ((a.getFlags() & 0x4) != 0L)
        {
          a.addQueueItem(paramMediaDescriptionCompat);
          return;
        }
        throw new UnsupportedOperationException("This session doesn't support queue management operations");
      }
      catch (RemoteException paramMediaDescriptionCompat)
      {
        Log.e("MediaControllerCompat", "Dead object in addQueueItem.", paramMediaDescriptionCompat);
      }
    }
    
    public void a(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
    {
      try
      {
        if ((a.getFlags() & 0x4) != 0L)
        {
          a.addQueueItemAt(paramMediaDescriptionCompat, paramInt);
          return;
        }
        throw new UnsupportedOperationException("This session doesn't support queue management operations");
      }
      catch (RemoteException paramMediaDescriptionCompat)
      {
        Log.e("MediaControllerCompat", "Dead object in addQueueItemAt.", paramMediaDescriptionCompat);
      }
    }
    
    public void a(MediaControllerCompat.Callback paramCallback)
    {
      if (paramCallback != null) {
        try
        {
          a.unregisterCallbackListener((IMediaControllerCallback)a);
          a.asBinder().unlinkToDeath(paramCallback, 0);
          return;
        }
        catch (RemoteException paramCallback)
        {
          Log.e("MediaControllerCompat", "Dead object in unregisterCallback.", paramCallback);
          return;
        }
      }
      throw new IllegalArgumentException("callback may not be null.");
    }
    
    public void a(MediaControllerCompat.Callback paramCallback, Handler paramHandler)
    {
      if (paramCallback != null) {
        try
        {
          a.asBinder().linkToDeath(paramCallback, 0);
          a.registerCallbackListener((IMediaControllerCallback)a);
          paramCallback.a(13, null, null);
          return;
        }
        catch (RemoteException paramHandler)
        {
          Log.e("MediaControllerCompat", "Dead object in registerCallback.", paramHandler);
          paramCallback.a(8, null, null);
          return;
        }
      }
      throw new IllegalArgumentException("callback may not be null.");
    }
    
    public void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
    {
      try
      {
        a.sendCommand(paramString, paramBundle, new MediaSessionCompat.ResultReceiverWrapper(paramResultReceiver));
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in sendCommand.", paramString);
      }
    }
    
    public boolean a(KeyEvent paramKeyEvent)
    {
      if (paramKeyEvent != null)
      {
        try
        {
          a.sendMediaButton(paramKeyEvent);
        }
        catch (RemoteException paramKeyEvent)
        {
          Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent.", paramKeyEvent);
        }
        return false;
      }
      throw new IllegalArgumentException("event may not be null.");
    }
    
    public PlaybackStateCompat b()
    {
      try
      {
        PlaybackStateCompat localPlaybackStateCompat = a.getPlaybackState();
        return localPlaybackStateCompat;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getPlaybackState.", localRemoteException);
      }
      return null;
    }
    
    public void b(int paramInt1, int paramInt2)
    {
      try
      {
        a.adjustVolume(paramInt1, paramInt2, null);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in adjustVolume.", localRemoteException);
      }
    }
    
    public void b(MediaDescriptionCompat paramMediaDescriptionCompat)
    {
      try
      {
        if ((a.getFlags() & 0x4) != 0L)
        {
          a.removeQueueItem(paramMediaDescriptionCompat);
          return;
        }
        throw new UnsupportedOperationException("This session doesn't support queue management operations");
      }
      catch (RemoteException paramMediaDescriptionCompat)
      {
        Log.e("MediaControllerCompat", "Dead object in removeQueueItem.", paramMediaDescriptionCompat);
      }
    }
    
    public MediaMetadataCompat c()
    {
      try
      {
        MediaMetadataCompat localMediaMetadataCompat = a.getMetadata();
        return localMediaMetadataCompat;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getMetadata.", localRemoteException);
      }
      return null;
    }
    
    public List<MediaSessionCompat.QueueItem> d()
    {
      try
      {
        List localList = a.getQueue();
        return localList;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getQueue.", localRemoteException);
      }
      return null;
    }
    
    public CharSequence e()
    {
      try
      {
        CharSequence localCharSequence = a.getQueueTitle();
        return localCharSequence;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getQueueTitle.", localRemoteException);
      }
      return null;
    }
    
    public Bundle f()
    {
      try
      {
        Bundle localBundle = a.getExtras();
        return localBundle;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getExtras.", localRemoteException);
      }
      return null;
    }
    
    public int g()
    {
      try
      {
        int i = a.getRatingType();
        return i;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getRatingType.", localRemoteException);
      }
      return 0;
    }
    
    public boolean h()
    {
      try
      {
        boolean bool = a.isCaptioningEnabled();
        return bool;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in isCaptioningEnabled.", localRemoteException);
      }
      return false;
    }
    
    public int i()
    {
      try
      {
        int i = a.getRepeatMode();
        return i;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getRepeatMode.", localRemoteException);
      }
      return -1;
    }
    
    public int j()
    {
      try
      {
        int i = a.getShuffleMode();
        return i;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getShuffleMode.", localRemoteException);
      }
      return -1;
    }
    
    public long k()
    {
      try
      {
        long l = a.getFlags();
        return l;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getFlags.", localRemoteException);
      }
      return 0L;
    }
    
    public MediaControllerCompat.PlaybackInfo l()
    {
      try
      {
        Object localObject = a.getVolumeAttributes();
        localObject = new MediaControllerCompat.PlaybackInfo(volumeType, audioStream, controlType, maxVolume, currentVolume);
        return localObject;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo.", localRemoteException);
      }
      return null;
    }
    
    public PendingIntent m()
    {
      try
      {
        PendingIntent localPendingIntent = a.getLaunchPendingIntent();
        return localPendingIntent;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getSessionActivity.", localRemoteException);
      }
      return null;
    }
    
    public boolean n()
    {
      return true;
    }
    
    public String o()
    {
      try
      {
        String str = a.getPackageName();
        return str;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in getPackageName.", localRemoteException);
      }
      return null;
    }
    
    public Object p()
    {
      return null;
    }
  }
  
  static class f
    extends MediaControllerCompat.TransportControls
  {
    protected final Object a;
    
    public f(Object paramObject)
    {
      a = paramObject;
    }
    
    public void fastForward()
    {
      MediaControllerCompatApi21.TransportControls.fastForward(a);
    }
    
    public void pause()
    {
      MediaControllerCompatApi21.TransportControls.pause(a);
    }
    
    public void play()
    {
      MediaControllerCompatApi21.TransportControls.play(a);
    }
    
    public void playFromMediaId(String paramString, Bundle paramBundle)
    {
      MediaControllerCompatApi21.TransportControls.playFromMediaId(a, paramString, paramBundle);
    }
    
    public void playFromSearch(String paramString, Bundle paramBundle)
    {
      MediaControllerCompatApi21.TransportControls.playFromSearch(a, paramString, paramBundle);
    }
    
    public void playFromUri(Uri paramUri, Bundle paramBundle)
    {
      if ((paramUri != null) && (!Uri.EMPTY.equals(paramUri)))
      {
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", paramUri);
        localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
        sendCustomAction("android.support.v4.media.session.action.PLAY_FROM_URI", localBundle);
        return;
      }
      throw new IllegalArgumentException("You must specify a non-empty Uri for playFromUri.");
    }
    
    public void prepare()
    {
      sendCustomAction("android.support.v4.media.session.action.PREPARE", null);
    }
    
    public void prepareFromMediaId(String paramString, Bundle paramBundle)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID", paramString);
      localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
      sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID", localBundle);
    }
    
    public void prepareFromSearch(String paramString, Bundle paramBundle)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("android.support.v4.media.session.action.ARGUMENT_QUERY", paramString);
      localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
      sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_SEARCH", localBundle);
    }
    
    public void prepareFromUri(Uri paramUri, Bundle paramBundle)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_URI", paramUri);
      localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
      sendCustomAction("android.support.v4.media.session.action.PREPARE_FROM_URI", localBundle);
    }
    
    public void rewind()
    {
      MediaControllerCompatApi21.TransportControls.rewind(a);
    }
    
    public void seekTo(long paramLong)
    {
      MediaControllerCompatApi21.TransportControls.seekTo(a, paramLong);
    }
    
    public void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle)
    {
      MediaControllerCompat.a(paramCustomAction.getAction(), paramBundle);
      MediaControllerCompatApi21.TransportControls.sendCustomAction(a, paramCustomAction.getAction(), paramBundle);
    }
    
    public void sendCustomAction(String paramString, Bundle paramBundle)
    {
      MediaControllerCompat.a(paramString, paramBundle);
      MediaControllerCompatApi21.TransportControls.sendCustomAction(a, paramString, paramBundle);
    }
    
    public void setCaptioningEnabled(boolean paramBoolean)
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED", paramBoolean);
      sendCustomAction("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED", localBundle);
    }
    
    public void setRating(RatingCompat paramRatingCompat)
    {
      Object localObject = a;
      if (paramRatingCompat != null) {
        paramRatingCompat = paramRatingCompat.getRating();
      } else {
        paramRatingCompat = null;
      }
      MediaControllerCompatApi21.TransportControls.setRating(localObject, paramRatingCompat);
    }
    
    public void setRating(RatingCompat paramRatingCompat, Bundle paramBundle)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("android.support.v4.media.session.action.ARGUMENT_RATING", paramRatingCompat);
      localBundle.putBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS", paramBundle);
      sendCustomAction("android.support.v4.media.session.action.SET_RATING", localBundle);
    }
    
    public void setRepeatMode(int paramInt)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE", paramInt);
      sendCustomAction("android.support.v4.media.session.action.SET_REPEAT_MODE", localBundle);
    }
    
    public void setShuffleMode(int paramInt)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE", paramInt);
      sendCustomAction("android.support.v4.media.session.action.SET_SHUFFLE_MODE", localBundle);
    }
    
    public void skipToNext()
    {
      MediaControllerCompatApi21.TransportControls.skipToNext(a);
    }
    
    public void skipToPrevious()
    {
      MediaControllerCompatApi21.TransportControls.skipToPrevious(a);
    }
    
    public void skipToQueueItem(long paramLong)
    {
      MediaControllerCompatApi21.TransportControls.skipToQueueItem(a, paramLong);
    }
    
    public void stop()
    {
      MediaControllerCompatApi21.TransportControls.stop(a);
    }
  }
  
  @RequiresApi(23)
  static class g
    extends MediaControllerCompat.f
  {
    public g(Object paramObject)
    {
      super();
    }
    
    public void playFromUri(Uri paramUri, Bundle paramBundle)
    {
      MediaControllerCompatApi23.TransportControls.playFromUri(a, paramUri, paramBundle);
    }
  }
  
  @RequiresApi(24)
  static class h
    extends MediaControllerCompat.g
  {
    public h(Object paramObject)
    {
      super();
    }
    
    public void prepare()
    {
      MediaControllerCompatApi24.TransportControls.prepare(a);
    }
    
    public void prepareFromMediaId(String paramString, Bundle paramBundle)
    {
      MediaControllerCompatApi24.TransportControls.prepareFromMediaId(a, paramString, paramBundle);
    }
    
    public void prepareFromSearch(String paramString, Bundle paramBundle)
    {
      MediaControllerCompatApi24.TransportControls.prepareFromSearch(a, paramString, paramBundle);
    }
    
    public void prepareFromUri(Uri paramUri, Bundle paramBundle)
    {
      MediaControllerCompatApi24.TransportControls.prepareFromUri(a, paramUri, paramBundle);
    }
  }
  
  static class i
    extends MediaControllerCompat.TransportControls
  {
    private IMediaSession a;
    
    public i(IMediaSession paramIMediaSession)
    {
      a = paramIMediaSession;
    }
    
    public void fastForward()
    {
      try
      {
        a.fastForward();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in fastForward.", localRemoteException);
      }
    }
    
    public void pause()
    {
      try
      {
        a.pause();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in pause.", localRemoteException);
      }
    }
    
    public void play()
    {
      try
      {
        a.play();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in play.", localRemoteException);
      }
    }
    
    public void playFromMediaId(String paramString, Bundle paramBundle)
    {
      try
      {
        a.playFromMediaId(paramString, paramBundle);
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in playFromMediaId.", paramString);
      }
    }
    
    public void playFromSearch(String paramString, Bundle paramBundle)
    {
      try
      {
        a.playFromSearch(paramString, paramBundle);
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in playFromSearch.", paramString);
      }
    }
    
    public void playFromUri(Uri paramUri, Bundle paramBundle)
    {
      try
      {
        a.playFromUri(paramUri, paramBundle);
        return;
      }
      catch (RemoteException paramUri)
      {
        Log.e("MediaControllerCompat", "Dead object in playFromUri.", paramUri);
      }
    }
    
    public void prepare()
    {
      try
      {
        a.prepare();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in prepare.", localRemoteException);
      }
    }
    
    public void prepareFromMediaId(String paramString, Bundle paramBundle)
    {
      try
      {
        a.prepareFromMediaId(paramString, paramBundle);
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in prepareFromMediaId.", paramString);
      }
    }
    
    public void prepareFromSearch(String paramString, Bundle paramBundle)
    {
      try
      {
        a.prepareFromSearch(paramString, paramBundle);
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in prepareFromSearch.", paramString);
      }
    }
    
    public void prepareFromUri(Uri paramUri, Bundle paramBundle)
    {
      try
      {
        a.prepareFromUri(paramUri, paramBundle);
        return;
      }
      catch (RemoteException paramUri)
      {
        Log.e("MediaControllerCompat", "Dead object in prepareFromUri.", paramUri);
      }
    }
    
    public void rewind()
    {
      try
      {
        a.rewind();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in rewind.", localRemoteException);
      }
    }
    
    public void seekTo(long paramLong)
    {
      try
      {
        a.seekTo(paramLong);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in seekTo.", localRemoteException);
      }
    }
    
    public void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle)
    {
      sendCustomAction(paramCustomAction.getAction(), paramBundle);
    }
    
    public void sendCustomAction(String paramString, Bundle paramBundle)
    {
      MediaControllerCompat.a(paramString, paramBundle);
      try
      {
        a.sendCustomAction(paramString, paramBundle);
        return;
      }
      catch (RemoteException paramString)
      {
        Log.e("MediaControllerCompat", "Dead object in sendCustomAction.", paramString);
      }
    }
    
    public void setCaptioningEnabled(boolean paramBoolean)
    {
      try
      {
        a.setCaptioningEnabled(paramBoolean);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in setCaptioningEnabled.", localRemoteException);
      }
    }
    
    public void setRating(RatingCompat paramRatingCompat)
    {
      try
      {
        a.rate(paramRatingCompat);
        return;
      }
      catch (RemoteException paramRatingCompat)
      {
        Log.e("MediaControllerCompat", "Dead object in setRating.", paramRatingCompat);
      }
    }
    
    public void setRating(RatingCompat paramRatingCompat, Bundle paramBundle)
    {
      try
      {
        a.rateWithExtras(paramRatingCompat, paramBundle);
        return;
      }
      catch (RemoteException paramRatingCompat)
      {
        Log.e("MediaControllerCompat", "Dead object in setRating.", paramRatingCompat);
      }
    }
    
    public void setRepeatMode(int paramInt)
    {
      try
      {
        a.setRepeatMode(paramInt);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in setRepeatMode.", localRemoteException);
      }
    }
    
    public void setShuffleMode(int paramInt)
    {
      try
      {
        a.setShuffleMode(paramInt);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in setShuffleMode.", localRemoteException);
      }
    }
    
    public void skipToNext()
    {
      try
      {
        a.next();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in skipToNext.", localRemoteException);
      }
    }
    
    public void skipToPrevious()
    {
      try
      {
        a.previous();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in skipToPrevious.", localRemoteException);
      }
    }
    
    public void skipToQueueItem(long paramLong)
    {
      try
      {
        a.skipToQueueItem(paramLong);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in skipToQueueItem.", localRemoteException);
      }
    }
    
    public void stop()
    {
      try
      {
        a.stop();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in stop.", localRemoteException);
      }
    }
  }
}
