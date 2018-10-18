package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadataEditor;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.RemoteControlClient.MetadataEditor;
import android.media.RemoteControlClient.OnMetadataUpdateListener;
import android.media.RemoteControlClient.OnPlaybackPositionUpdateListener;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.MediaMetadataCompat.Builder;
import android.support.v4.media.MediaSessionManager.RemoteUserInfo;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat.Callback;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSessionCompat
{
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
  public static final String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
  public static final String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
  public static final String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
  public static final String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
  public static final String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
  public static final String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";
  public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
  public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;
  public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static final String KEY_SESSION_TOKEN2_BUNDLE = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static final String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
  public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
  public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
  public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;
  static int a;
  private final a b;
  private final MediaControllerCompat c;
  private final ArrayList<OnActiveChangeListener> d = new ArrayList();
  
  private MediaSessionCompat(Context paramContext, a paramA)
  {
    b = paramA;
    if ((Build.VERSION.SDK_INT >= 21) && (!a.f(paramA.e()))) {
      setCallback(new Callback() {});
    }
    c = new MediaControllerCompat(paramContext, this);
  }
  
  public MediaSessionCompat(Context paramContext, String paramString)
  {
    this(paramContext, paramString, null, null);
  }
  
  public MediaSessionCompat(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent)
  {
    this(paramContext, paramString, paramComponentName, paramPendingIntent, null);
  }
  
  private MediaSessionCompat(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    if (paramContext != null)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        ComponentName localComponentName = paramComponentName;
        if (paramComponentName == null)
        {
          paramComponentName = MediaButtonReceiver.getMediaButtonReceiverComponent(paramContext);
          localComponentName = paramComponentName;
          if (paramComponentName == null)
          {
            Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
            localComponentName = paramComponentName;
          }
        }
        paramComponentName = paramPendingIntent;
        if (localComponentName != null)
        {
          paramComponentName = paramPendingIntent;
          if (paramPendingIntent == null)
          {
            paramComponentName = new Intent("android.intent.action.MEDIA_BUTTON");
            paramComponentName.setComponent(localComponentName);
            paramComponentName = PendingIntent.getBroadcast(paramContext, 0, paramComponentName, 0);
          }
        }
        if (Build.VERSION.SDK_INT >= 28)
        {
          b = new e(paramContext, paramString, paramBundle);
          setCallback(new Callback() {});
          b.b(paramComponentName);
        }
        else if (Build.VERSION.SDK_INT >= 21)
        {
          b = new d(paramContext, paramString, paramBundle);
          setCallback(new Callback() {});
          b.b(paramComponentName);
        }
        else if (Build.VERSION.SDK_INT >= 19)
        {
          b = new c(paramContext, paramString, localComponentName, paramComponentName);
        }
        else if (Build.VERSION.SDK_INT >= 18)
        {
          b = new b(paramContext, paramString, localComponentName, paramComponentName);
        }
        else
        {
          b = new f(paramContext, paramString, localComponentName, paramComponentName);
        }
        c = new MediaControllerCompat(paramContext, this);
        if (a == 0) {
          a = (int)(TypedValue.applyDimension(1, 320.0F, paramContext.getResources().getDisplayMetrics()) + 0.5F);
        }
        return;
      }
      throw new IllegalArgumentException("tag must not be null or empty");
    }
    throw new IllegalArgumentException("context must not be null");
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public MediaSessionCompat(Context paramContext, String paramString, Bundle paramBundle)
  {
    this(paramContext, paramString, null, null, paramBundle);
  }
  
  static PlaybackStateCompat a(PlaybackStateCompat paramPlaybackStateCompat, MediaMetadataCompat paramMediaMetadataCompat)
  {
    if (paramPlaybackStateCompat != null)
    {
      long l1 = paramPlaybackStateCompat.getPosition();
      long l2 = -1L;
      if (l1 == -1L) {
        return paramPlaybackStateCompat;
      }
      if ((paramPlaybackStateCompat.getState() == 3) || (paramPlaybackStateCompat.getState() == 4) || (paramPlaybackStateCompat.getState() == 5))
      {
        l1 = paramPlaybackStateCompat.getLastPositionUpdateTime();
        if (l1 > 0L)
        {
          long l4 = SystemClock.elapsedRealtime();
          long l3 = (paramPlaybackStateCompat.getPlaybackSpeed() * (float)(l4 - l1)) + paramPlaybackStateCompat.getPosition();
          l1 = l2;
          if (paramMediaMetadataCompat != null)
          {
            l1 = l2;
            if (paramMediaMetadataCompat.containsKey("android.media.metadata.DURATION")) {
              l1 = paramMediaMetadataCompat.getLong("android.media.metadata.DURATION");
            }
          }
          if ((l1 < 0L) || (l3 <= l1)) {
            if (l3 < 0L) {
              l1 = 0L;
            } else {
              l1 = l3;
            }
          }
          return new PlaybackStateCompat.Builder(paramPlaybackStateCompat).setState(paramPlaybackStateCompat.getState(), l1, paramPlaybackStateCompat.getPlaybackSpeed(), l4).build();
        }
      }
      return paramPlaybackStateCompat;
    }
    return paramPlaybackStateCompat;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static void ensureClassLoader(@Nullable Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
    }
  }
  
  public static MediaSessionCompat fromMediaSession(Context paramContext, Object paramObject)
  {
    if ((paramContext != null) && (paramObject != null) && (Build.VERSION.SDK_INT >= 21)) {
      return new MediaSessionCompat(paramContext, new d(paramObject));
    }
    return null;
  }
  
  public void addOnActiveChangeListener(OnActiveChangeListener paramOnActiveChangeListener)
  {
    if (paramOnActiveChangeListener != null)
    {
      d.add(paramOnActiveChangeListener);
      return;
    }
    throw new IllegalArgumentException("Listener may not be null");
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public String getCallingPackage()
  {
    return b.g();
  }
  
  public MediaControllerCompat getController()
  {
    return c;
  }
  
  @NonNull
  public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo()
  {
    return b.h();
  }
  
  public Object getMediaSession()
  {
    return b.e();
  }
  
  public Object getRemoteControlClient()
  {
    return b.f();
  }
  
  public Token getSessionToken()
  {
    return b.c();
  }
  
  public boolean isActive()
  {
    return b.a();
  }
  
  public void release()
  {
    b.b();
  }
  
  public void removeOnActiveChangeListener(OnActiveChangeListener paramOnActiveChangeListener)
  {
    if (paramOnActiveChangeListener != null)
    {
      d.remove(paramOnActiveChangeListener);
      return;
    }
    throw new IllegalArgumentException("Listener may not be null");
  }
  
  public void sendSessionEvent(String paramString, Bundle paramBundle)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      b.a(paramString, paramBundle);
      return;
    }
    throw new IllegalArgumentException("event cannot be null or empty");
  }
  
  public void setActive(boolean paramBoolean)
  {
    b.a(paramBoolean);
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      ((OnActiveChangeListener)localIterator.next()).onActiveChanged();
    }
  }
  
  public void setCallback(Callback paramCallback)
  {
    setCallback(paramCallback, null);
  }
  
  public void setCallback(Callback paramCallback, Handler paramHandler)
  {
    if (paramCallback == null)
    {
      b.a(null, null);
      return;
    }
    a localA = b;
    if (paramHandler == null) {
      paramHandler = new Handler();
    }
    localA.a(paramCallback, paramHandler);
  }
  
  public void setCaptioningEnabled(boolean paramBoolean)
  {
    b.b(paramBoolean);
  }
  
  public void setExtras(Bundle paramBundle)
  {
    b.a(paramBundle);
  }
  
  public void setFlags(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void setMediaButtonReceiver(PendingIntent paramPendingIntent)
  {
    b.b(paramPendingIntent);
  }
  
  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat)
  {
    b.a(paramMediaMetadataCompat);
  }
  
  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat)
  {
    b.a(paramPlaybackStateCompat);
  }
  
  public void setPlaybackToLocal(int paramInt)
  {
    b.b(paramInt);
  }
  
  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat)
  {
    if (paramVolumeProviderCompat != null)
    {
      b.a(paramVolumeProviderCompat);
      return;
    }
    throw new IllegalArgumentException("volumeProvider may not be null!");
  }
  
  public void setQueue(List<QueueItem> paramList)
  {
    b.a(paramList);
  }
  
  public void setQueueTitle(CharSequence paramCharSequence)
  {
    b.a(paramCharSequence);
  }
  
  public void setRatingType(int paramInt)
  {
    b.c(paramInt);
  }
  
  public void setRepeatMode(int paramInt)
  {
    b.d(paramInt);
  }
  
  public void setSessionActivity(PendingIntent paramPendingIntent)
  {
    b.a(paramPendingIntent);
  }
  
  public void setShuffleMode(int paramInt)
  {
    b.e(paramInt);
  }
  
  public static abstract class Callback
  {
    private a a = null;
    final Object b;
    WeakReference<MediaSessionCompat.a> c;
    private boolean d;
    
    public Callback()
    {
      if (Build.VERSION.SDK_INT >= 24)
      {
        b = MediaSessionCompatApi24.a(new d());
        return;
      }
      if (Build.VERSION.SDK_INT >= 23)
      {
        b = MediaSessionCompatApi23.a(new c());
        return;
      }
      if (Build.VERSION.SDK_INT >= 21)
      {
        b = a.a(new b());
        return;
      }
      b = null;
    }
    
    void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo)
    {
      if (!d) {
        return;
      }
      int k = 0;
      d = false;
      a.removeMessages(1);
      MediaSessionCompat.a localA = (MediaSessionCompat.a)c.get();
      if (localA == null) {
        return;
      }
      PlaybackStateCompat localPlaybackStateCompat = localA.d();
      long l;
      if (localPlaybackStateCompat == null) {
        l = 0L;
      } else {
        l = localPlaybackStateCompat.getActions();
      }
      int i;
      if ((localPlaybackStateCompat != null) && (localPlaybackStateCompat.getState() == 3)) {
        i = 1;
      } else {
        i = 0;
      }
      int j;
      if ((0x204 & l) != 0L) {
        j = 1;
      } else {
        j = 0;
      }
      if ((l & 0x202) != 0L) {
        k = 1;
      }
      localA.a(paramRemoteUserInfo);
      if ((i != 0) && (k != 0)) {
        onPause();
      } else if ((i == 0) && (j != 0)) {
        onPlay();
      }
      localA.a(null);
    }
    
    void a(MediaSessionCompat.a paramA, Handler paramHandler)
    {
      c = new WeakReference(paramA);
      if (a != null) {
        a.removeCallbacksAndMessages(null);
      }
      a = new a(paramHandler.getLooper());
    }
    
    public void onAddQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {}
    
    public void onAddQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt) {}
    
    public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver) {}
    
    public void onCustomAction(String paramString, Bundle paramBundle) {}
    
    public void onFastForward() {}
    
    public boolean onMediaButtonEvent(Intent paramIntent)
    {
      if (Build.VERSION.SDK_INT >= 27) {
        return false;
      }
      MediaSessionCompat.a localA = (MediaSessionCompat.a)c.get();
      if (localA != null)
      {
        if (a == null) {
          return false;
        }
        paramIntent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (paramIntent != null)
        {
          if (paramIntent.getAction() != 0) {
            return false;
          }
          MediaSessionManager.RemoteUserInfo localRemoteUserInfo = localA.h();
          int i = paramIntent.getKeyCode();
          if ((i != 79) && (i != 85))
          {
            a(localRemoteUserInfo);
            return false;
          }
          if (paramIntent.getRepeatCount() > 0)
          {
            a(localRemoteUserInfo);
            return true;
          }
          if (d)
          {
            a.removeMessages(1);
            d = false;
            paramIntent = localA.d();
            long l;
            if (paramIntent == null) {
              l = 0L;
            } else {
              l = paramIntent.getActions();
            }
            if ((l & 0x20) != 0L)
            {
              onSkipToNext();
              return true;
            }
          }
          else
          {
            d = true;
            a.sendMessageDelayed(a.obtainMessage(1, localRemoteUserInfo), ViewConfiguration.getDoubleTapTimeout());
          }
          return true;
        }
        return false;
      }
      return false;
    }
    
    public void onPause() {}
    
    public void onPlay() {}
    
    public void onPlayFromMediaId(String paramString, Bundle paramBundle) {}
    
    public void onPlayFromSearch(String paramString, Bundle paramBundle) {}
    
    public void onPlayFromUri(Uri paramUri, Bundle paramBundle) {}
    
    public void onPrepare() {}
    
    public void onPrepareFromMediaId(String paramString, Bundle paramBundle) {}
    
    public void onPrepareFromSearch(String paramString, Bundle paramBundle) {}
    
    public void onPrepareFromUri(Uri paramUri, Bundle paramBundle) {}
    
    public void onRemoveQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat) {}
    
    @Deprecated
    public void onRemoveQueueItemAt(int paramInt) {}
    
    public void onRewind() {}
    
    public void onSeekTo(long paramLong) {}
    
    public void onSetCaptioningEnabled(boolean paramBoolean) {}
    
    public void onSetRating(RatingCompat paramRatingCompat) {}
    
    public void onSetRating(RatingCompat paramRatingCompat, Bundle paramBundle) {}
    
    public void onSetRepeatMode(int paramInt) {}
    
    public void onSetShuffleMode(int paramInt) {}
    
    public void onSkipToNext() {}
    
    public void onSkipToPrevious() {}
    
    public void onSkipToQueueItem(long paramLong) {}
    
    public void onStop() {}
    
    private class a
      extends Handler
    {
      a(Looper paramLooper)
      {
        super();
      }
      
      public void handleMessage(Message paramMessage)
      {
        if (what == 1) {
          a((MediaSessionManager.RemoteUserInfo)obj);
        }
      }
    }
    
    @RequiresApi(21)
    private class b
      implements a.a
    {
      b() {}
      
      public void a()
      {
        onPlay();
      }
      
      public void a(long paramLong)
      {
        onSkipToQueueItem(paramLong);
      }
      
      public void a(Object paramObject)
      {
        onSetRating(RatingCompat.fromRating(paramObject));
      }
      
      public void a(String paramString, Bundle paramBundle)
      {
        onPlayFromMediaId(paramString, paramBundle);
      }
      
      public void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
      {
        try
        {
          boolean bool = paramString.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER");
          MediaSessionCompat.Token localToken = null;
          Object localObject = null;
          if (bool)
          {
            paramString = (MediaSessionCompat.d)c.get();
            if (paramString == null) {
              break label301;
            }
            paramBundle = new Bundle();
            localToken = paramString.c();
            paramString = localToken.getExtraBinder();
            if (paramString == null) {
              paramString = localObject;
            } else {
              paramString = paramString.asBinder();
            }
            BundleCompat.putBinder(paramBundle, "android.support.v4.media.session.EXTRA_BINDER", paramString);
            paramBundle.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", localToken.getSessionToken2Bundle());
            paramResultReceiver.send(0, paramBundle);
            return;
          }
          if (paramString.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM"))
          {
            onAddQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
            return;
          }
          if (paramString.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"))
          {
            onAddQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), paramBundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
            return;
          }
          if (paramString.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"))
          {
            onRemoveQueueItem((MediaDescriptionCompat)paramBundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
            return;
          }
          if (paramString.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"))
          {
            paramResultReceiver = (MediaSessionCompat.d)c.get();
            if ((paramResultReceiver == null) || (f == null)) {
              break label301;
            }
            int i = paramBundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
            paramString = localToken;
            if (i >= 0)
            {
              paramString = localToken;
              if (i < f.size()) {
                paramString = (MediaSessionCompat.QueueItem)f.get(i);
              }
            }
            if (paramString == null) {
              break label301;
            }
            onRemoveQueueItem(paramString.getDescription());
            return;
          }
          onCommand(paramString, paramBundle, paramResultReceiver);
          return;
        }
        catch (BadParcelableException paramString)
        {
          label301:
          for (;;) {}
        }
        Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
      }
      
      public boolean a(Intent paramIntent)
      {
        return onMediaButtonEvent(paramIntent);
      }
      
      public void b()
      {
        onPause();
      }
      
      public void b(long paramLong)
      {
        onSeekTo(paramLong);
      }
      
      public void b(String paramString, Bundle paramBundle)
      {
        onPlayFromSearch(paramString, paramBundle);
      }
      
      public void c()
      {
        onSkipToNext();
      }
      
      public void c(String paramString, Bundle paramBundle)
      {
        Bundle localBundle = paramBundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
        MediaSessionCompat.ensureClassLoader(localBundle);
        if (paramString.equals("android.support.v4.media.session.action.PLAY_FROM_URI"))
        {
          paramString = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
          onPlayFromUri(paramString, localBundle);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.PREPARE"))
        {
          onPrepare();
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"))
        {
          paramString = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
          onPrepareFromMediaId(paramString, localBundle);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH"))
        {
          paramString = paramBundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
          onPrepareFromSearch(paramString, localBundle);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.PREPARE_FROM_URI"))
        {
          paramString = (Uri)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
          onPrepareFromUri(paramString, localBundle);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"))
        {
          boolean bool = paramBundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
          onSetCaptioningEnabled(bool);
          return;
        }
        int i;
        if (paramString.equals("android.support.v4.media.session.action.SET_REPEAT_MODE"))
        {
          i = paramBundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE");
          onSetRepeatMode(i);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE"))
        {
          i = paramBundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE");
          onSetShuffleMode(i);
          return;
        }
        if (paramString.equals("android.support.v4.media.session.action.SET_RATING"))
        {
          paramString = (RatingCompat)paramBundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING");
          onSetRating(paramString, localBundle);
          return;
        }
        onCustomAction(paramString, paramBundle);
      }
      
      public void d()
      {
        onSkipToPrevious();
      }
      
      public void e()
      {
        onFastForward();
      }
      
      public void f()
      {
        onRewind();
      }
      
      public void g()
      {
        onStop();
      }
    }
    
    @RequiresApi(23)
    private class c
      extends MediaSessionCompat.Callback.b
      implements MediaSessionCompatApi23.Callback
    {
      c()
      {
        super();
      }
      
      public void onPlayFromUri(Uri paramUri, Bundle paramBundle)
      {
        MediaSessionCompat.Callback.this.onPlayFromUri(paramUri, paramBundle);
      }
    }
    
    @RequiresApi(24)
    private class d
      extends MediaSessionCompat.Callback.c
      implements MediaSessionCompatApi24.Callback
    {
      d()
      {
        super();
      }
      
      public void onPrepare()
      {
        MediaSessionCompat.Callback.this.onPrepare();
      }
      
      public void onPrepareFromMediaId(String paramString, Bundle paramBundle)
      {
        MediaSessionCompat.Callback.this.onPrepareFromMediaId(paramString, paramBundle);
      }
      
      public void onPrepareFromSearch(String paramString, Bundle paramBundle)
      {
        MediaSessionCompat.Callback.this.onPrepareFromSearch(paramString, paramBundle);
      }
      
      public void onPrepareFromUri(Uri paramUri, Bundle paramBundle)
      {
        MediaSessionCompat.Callback.this.onPrepareFromUri(paramUri, paramBundle);
      }
    }
  }
  
  public static abstract interface OnActiveChangeListener
  {
    public abstract void onActiveChanged();
  }
  
  public static final class QueueItem
    implements Parcelable
  {
    public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator()
    {
      public MediaSessionCompat.QueueItem a(Parcel paramAnonymousParcel)
      {
        return new MediaSessionCompat.QueueItem(paramAnonymousParcel);
      }
      
      public MediaSessionCompat.QueueItem[] a(int paramAnonymousInt)
      {
        return new MediaSessionCompat.QueueItem[paramAnonymousInt];
      }
    };
    public static final int UNKNOWN_ID = -1;
    private final MediaDescriptionCompat a;
    private final long b;
    private Object c;
    
    QueueItem(Parcel paramParcel)
    {
      a = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
      b = paramParcel.readLong();
    }
    
    public QueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
    {
      this(null, paramMediaDescriptionCompat, paramLong);
    }
    
    private QueueItem(Object paramObject, MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
    {
      if (paramMediaDescriptionCompat != null)
      {
        if (paramLong != -1L)
        {
          a = paramMediaDescriptionCompat;
          b = paramLong;
          c = paramObject;
          return;
        }
        throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
      }
      throw new IllegalArgumentException("Description cannot be null.");
    }
    
    public static QueueItem fromQueueItem(Object paramObject)
    {
      if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21)) {
        return new QueueItem(paramObject, MediaDescriptionCompat.fromMediaDescription(a.c.a(paramObject)), a.c.b(paramObject));
      }
      return null;
    }
    
    public static List<QueueItem> fromQueueItemList(List<?> paramList)
    {
      if ((paramList != null) && (Build.VERSION.SDK_INT >= 21))
      {
        ArrayList localArrayList = new ArrayList();
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          localArrayList.add(fromQueueItem(paramList.next()));
        }
        return localArrayList;
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public MediaDescriptionCompat getDescription()
    {
      return a;
    }
    
    public long getQueueId()
    {
      return b;
    }
    
    public Object getQueueItem()
    {
      if ((c == null) && (Build.VERSION.SDK_INT >= 21))
      {
        c = a.c.a(a.getMediaDescription(), b);
        return c;
      }
      return c;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MediaSession.QueueItem {Description=");
      localStringBuilder.append(a);
      localStringBuilder.append(", Id=");
      localStringBuilder.append(b);
      localStringBuilder.append(" }");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      a.writeToParcel(paramParcel, paramInt);
      paramParcel.writeLong(b);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final class ResultReceiverWrapper
    implements Parcelable
  {
    public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator()
    {
      public MediaSessionCompat.ResultReceiverWrapper a(Parcel paramAnonymousParcel)
      {
        return new MediaSessionCompat.ResultReceiverWrapper(paramAnonymousParcel);
      }
      
      public MediaSessionCompat.ResultReceiverWrapper[] a(int paramAnonymousInt)
      {
        return new MediaSessionCompat.ResultReceiverWrapper[paramAnonymousInt];
      }
    };
    ResultReceiver a;
    
    ResultReceiverWrapper(Parcel paramParcel)
    {
      a = ((ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel));
    }
    
    public ResultReceiverWrapper(ResultReceiver paramResultReceiver)
    {
      a = paramResultReceiver;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      a.writeToParcel(paramParcel, paramInt);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface SessionFlags {}
  
  public static final class Token
    implements Parcelable
  {
    public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator()
    {
      public MediaSessionCompat.Token a(Parcel paramAnonymousParcel)
      {
        if (Build.VERSION.SDK_INT >= 21) {
          paramAnonymousParcel = paramAnonymousParcel.readParcelable(null);
        } else {
          paramAnonymousParcel = paramAnonymousParcel.readStrongBinder();
        }
        return new MediaSessionCompat.Token(paramAnonymousParcel);
      }
      
      public MediaSessionCompat.Token[] a(int paramAnonymousInt)
      {
        return new MediaSessionCompat.Token[paramAnonymousInt];
      }
    };
    private final Object a;
    private IMediaSession b;
    private Bundle c;
    
    Token(Object paramObject)
    {
      this(paramObject, null, null);
    }
    
    Token(Object paramObject, IMediaSession paramIMediaSession)
    {
      this(paramObject, paramIMediaSession, null);
    }
    
    Token(Object paramObject, IMediaSession paramIMediaSession, Bundle paramBundle)
    {
      a = paramObject;
      b = paramIMediaSession;
      c = paramBundle;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static Token fromBundle(Bundle paramBundle)
    {
      if (paramBundle == null) {
        return null;
      }
      IMediaSession localIMediaSession = IMediaSession.Stub.asInterface(BundleCompat.getBinder(paramBundle, "android.support.v4.media.session.EXTRA_BINDER"));
      Bundle localBundle = paramBundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
      paramBundle = (Token)paramBundle.getParcelable("android.support.v4.media.session.TOKEN");
      if (paramBundle == null) {
        return null;
      }
      return new Token(a, localIMediaSession, localBundle);
    }
    
    public static Token fromToken(Object paramObject)
    {
      return fromToken(paramObject, null);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static Token fromToken(Object paramObject, IMediaSession paramIMediaSession)
    {
      if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21)) {
        return new Token(a.b(paramObject), paramIMediaSession);
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof Token)) {
        return false;
      }
      paramObject = (Token)paramObject;
      if (a == null) {
        return a == null;
      }
      if (a == null) {
        return false;
      }
      return a.equals(a);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public IMediaSession getExtraBinder()
    {
      return b;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Bundle getSessionToken2Bundle()
    {
      return c;
    }
    
    public Object getToken()
    {
      return a;
    }
    
    public int hashCode()
    {
      if (a == null) {
        return 0;
      }
      return a.hashCode();
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void setExtraBinder(IMediaSession paramIMediaSession)
    {
      b = paramIMediaSession;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public void setSessionToken2Bundle(Bundle paramBundle)
    {
      c = paramBundle;
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Bundle toBundle()
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("android.support.v4.media.session.TOKEN", this);
      if (b != null) {
        BundleCompat.putBinder(localBundle, "android.support.v4.media.session.EXTRA_BINDER", b.asBinder());
      }
      if (c != null) {
        localBundle.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", c);
      }
      return localBundle;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramParcel.writeParcelable((Parcelable)a, paramInt);
        return;
      }
      paramParcel.writeStrongBinder((IBinder)a);
    }
  }
  
  static abstract interface a
  {
    public abstract void a(int paramInt);
    
    public abstract void a(PendingIntent paramPendingIntent);
    
    public abstract void a(Bundle paramBundle);
    
    public abstract void a(MediaMetadataCompat paramMediaMetadataCompat);
    
    public abstract void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo);
    
    public abstract void a(VolumeProviderCompat paramVolumeProviderCompat);
    
    public abstract void a(MediaSessionCompat.Callback paramCallback, Handler paramHandler);
    
    public abstract void a(PlaybackStateCompat paramPlaybackStateCompat);
    
    public abstract void a(CharSequence paramCharSequence);
    
    public abstract void a(String paramString, Bundle paramBundle);
    
    public abstract void a(List<MediaSessionCompat.QueueItem> paramList);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract boolean a();
    
    public abstract void b();
    
    public abstract void b(int paramInt);
    
    public abstract void b(PendingIntent paramPendingIntent);
    
    public abstract void b(boolean paramBoolean);
    
    public abstract MediaSessionCompat.Token c();
    
    public abstract void c(int paramInt);
    
    public abstract PlaybackStateCompat d();
    
    public abstract void d(int paramInt);
    
    public abstract Object e();
    
    public abstract void e(int paramInt);
    
    public abstract Object f();
    
    public abstract String g();
    
    public abstract MediaSessionManager.RemoteUserInfo h();
  }
  
  @RequiresApi(18)
  static class b
    extends MediaSessionCompat.f
  {
    private static boolean x = true;
    
    b(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent)
    {
      super(paramString, paramComponentName, paramPendingIntent);
    }
    
    int a(long paramLong)
    {
      int j = super.a(paramLong);
      int i = j;
      if ((paramLong & 0x100) != 0L) {
        i = j | 0x100;
      }
      return i;
    }
    
    void a(PendingIntent paramPendingIntent, ComponentName paramComponentName)
    {
      if (x) {}
      try
      {
        c.registerMediaButtonEventReceiver(paramPendingIntent);
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;) {}
      }
      Log.w("MediaSessionCompat", "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
      x = false;
      if (!x) {
        super.a(paramPendingIntent, paramComponentName);
      }
    }
    
    public void a(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
    {
      super.a(paramCallback, paramHandler);
      if (paramCallback == null)
      {
        d.setPlaybackPositionUpdateListener(null);
        return;
      }
      paramCallback = new RemoteControlClient.OnPlaybackPositionUpdateListener()
      {
        public void onPlaybackPositionUpdate(long paramAnonymousLong)
        {
          a(18, -1, -1, Long.valueOf(paramAnonymousLong), null);
        }
      };
      d.setPlaybackPositionUpdateListener(paramCallback);
    }
    
    void b(PendingIntent paramPendingIntent, ComponentName paramComponentName)
    {
      if (x)
      {
        c.unregisterMediaButtonEventReceiver(paramPendingIntent);
        return;
      }
      super.b(paramPendingIntent, paramComponentName);
    }
    
    void b(PlaybackStateCompat paramPlaybackStateCompat)
    {
      long l2 = paramPlaybackStateCompat.getPosition();
      float f = paramPlaybackStateCompat.getPlaybackSpeed();
      long l4 = paramPlaybackStateCompat.getLastPositionUpdateTime();
      long l5 = SystemClock.elapsedRealtime();
      long l1 = l2;
      if (paramPlaybackStateCompat.getState() == 3)
      {
        long l3 = 0L;
        l1 = l2;
        if (l2 > 0L)
        {
          l1 = l3;
          if (l4 > 0L)
          {
            l3 = l5 - l4;
            l1 = l3;
            if (f > 0.0F)
            {
              l1 = l3;
              if (f != 1.0F) {
                l1 = ((float)l3 * f);
              }
            }
          }
          l1 = l2 + l1;
        }
      }
      d.setPlaybackState(f(paramPlaybackStateCompat.getState()), l1, f);
    }
  }
  
  @RequiresApi(19)
  static class c
    extends MediaSessionCompat.b
  {
    c(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent)
    {
      super(paramString, paramComponentName, paramPendingIntent);
    }
    
    int a(long paramLong)
    {
      int j = super.a(paramLong);
      int i = j;
      if ((paramLong & 0x80) != 0L) {
        i = j | 0x200;
      }
      return i;
    }
    
    public void a(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
    {
      super.a(paramCallback, paramHandler);
      if (paramCallback == null)
      {
        d.setMetadataUpdateListener(null);
        return;
      }
      paramCallback = new RemoteControlClient.OnMetadataUpdateListener()
      {
        public void onMetadataUpdate(int paramAnonymousInt, Object paramAnonymousObject)
        {
          if ((paramAnonymousInt == 268435457) && ((paramAnonymousObject instanceof Rating))) {
            a(19, -1, -1, RatingCompat.fromRating(paramAnonymousObject), null);
          }
        }
      };
      d.setMetadataUpdateListener(paramCallback);
    }
    
    RemoteControlClient.MetadataEditor b(Bundle paramBundle)
    {
      RemoteControlClient.MetadataEditor localMetadataEditor = super.b(paramBundle);
      long l;
      if (this.l == null) {
        l = 0L;
      } else {
        l = this.l.getActions();
      }
      if ((l & 0x80) != 0L) {
        localMetadataEditor.addEditableKey(268435457);
      }
      if (paramBundle == null) {
        return localMetadataEditor;
      }
      if (paramBundle.containsKey("android.media.metadata.YEAR")) {
        localMetadataEditor.putLong(8, paramBundle.getLong("android.media.metadata.YEAR"));
      }
      if (paramBundle.containsKey("android.media.metadata.RATING")) {
        localMetadataEditor.putObject(101, paramBundle.getParcelable("android.media.metadata.RATING"));
      }
      if (paramBundle.containsKey("android.media.metadata.USER_RATING")) {
        localMetadataEditor.putObject(268435457, paramBundle.getParcelable("android.media.metadata.USER_RATING"));
      }
      return localMetadataEditor;
    }
  }
  
  @RequiresApi(21)
  static class d
    implements MediaSessionCompat.a
  {
    final Object a;
    final MediaSessionCompat.Token b;
    boolean c = false;
    final RemoteCallbackList<IMediaControllerCallback> d = new RemoteCallbackList();
    PlaybackStateCompat e;
    List<MediaSessionCompat.QueueItem> f;
    MediaMetadataCompat g;
    int h;
    boolean i;
    int j;
    int k;
    
    d(Context paramContext, String paramString, Bundle paramBundle)
    {
      a = a.a(paramContext, paramString);
      b = new MediaSessionCompat.Token(a.e(a), new a(), paramBundle);
    }
    
    d(Object paramObject)
    {
      a = a.a(paramObject);
      b = new MediaSessionCompat.Token(a.e(a), new a());
    }
    
    public void a(int paramInt)
    {
      a.a(a, paramInt);
    }
    
    public void a(PendingIntent paramPendingIntent)
    {
      a.a(a, paramPendingIntent);
    }
    
    public void a(Bundle paramBundle)
    {
      a.a(a, paramBundle);
    }
    
    public void a(MediaMetadataCompat paramMediaMetadataCompat)
    {
      g = paramMediaMetadataCompat;
      Object localObject = a;
      if (paramMediaMetadataCompat == null) {
        paramMediaMetadataCompat = null;
      } else {
        paramMediaMetadataCompat = paramMediaMetadataCompat.getMediaMetadata();
      }
      a.c(localObject, paramMediaMetadataCompat);
    }
    
    public void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo) {}
    
    public void a(VolumeProviderCompat paramVolumeProviderCompat)
    {
      a.a(a, paramVolumeProviderCompat.getVolumeProvider());
    }
    
    public void a(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
    {
      Object localObject2 = a;
      Object localObject1;
      if (paramCallback == null) {
        localObject1 = null;
      } else {
        localObject1 = b;
      }
      a.a(localObject2, localObject1, paramHandler);
      if (paramCallback != null) {
        paramCallback.a(this, paramHandler);
      }
    }
    
    public void a(PlaybackStateCompat paramPlaybackStateCompat)
    {
      e = paramPlaybackStateCompat;
      int m = d.beginBroadcast() - 1;
      for (;;)
      {
        Object localObject;
        if (m >= 0) {
          localObject = (IMediaControllerCallback)d.getBroadcastItem(m);
        }
        try
        {
          ((IMediaControllerCallback)localObject).onPlaybackStateChanged(paramPlaybackStateCompat);
          m -= 1;
          continue;
          d.finishBroadcast();
          localObject = a;
          if (paramPlaybackStateCompat == null) {
            paramPlaybackStateCompat = null;
          } else {
            paramPlaybackStateCompat = paramPlaybackStateCompat.getPlaybackState();
          }
          a.b(localObject, paramPlaybackStateCompat);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public void a(CharSequence paramCharSequence)
    {
      a.a(a, paramCharSequence);
    }
    
    public void a(String paramString, Bundle paramBundle)
    {
      int m;
      if (Build.VERSION.SDK_INT < 23) {
        m = d.beginBroadcast() - 1;
      }
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (m >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)d.getBroadcastItem(m);
        }
        try
        {
          localIMediaControllerCallback.onEvent(paramString, paramBundle);
          m -= 1;
          continue;
          d.finishBroadcast();
          a.a(a, paramString, paramBundle);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public void a(List<MediaSessionCompat.QueueItem> paramList)
    {
      f = paramList;
      if (paramList != null)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = paramList.iterator();
        for (;;)
        {
          paramList = localArrayList;
          if (!localIterator.hasNext()) {
            break;
          }
          localArrayList.add(((MediaSessionCompat.QueueItem)localIterator.next()).getQueueItem());
        }
      }
      paramList = null;
      a.a(a, paramList);
    }
    
    public void a(boolean paramBoolean)
    {
      a.a(a, paramBoolean);
    }
    
    public boolean a()
    {
      return a.c(a);
    }
    
    public void b()
    {
      c = true;
      a.d(a);
    }
    
    public void b(int paramInt)
    {
      a.b(a, paramInt);
    }
    
    public void b(PendingIntent paramPendingIntent)
    {
      a.b(a, paramPendingIntent);
    }
    
    public void b(boolean paramBoolean)
    {
      int m;
      if (i != paramBoolean)
      {
        i = paramBoolean;
        m = d.beginBroadcast() - 1;
      }
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (m >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)d.getBroadcastItem(m);
        }
        try
        {
          localIMediaControllerCallback.onCaptioningEnabledChanged(paramBoolean);
          m -= 1;
          continue;
          d.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public MediaSessionCompat.Token c()
    {
      return b;
    }
    
    public void c(int paramInt)
    {
      if (Build.VERSION.SDK_INT < 22)
      {
        h = paramInt;
        return;
      }
      b.a(a, paramInt);
    }
    
    public PlaybackStateCompat d()
    {
      return e;
    }
    
    public void d(int paramInt)
    {
      int m;
      if (j != paramInt)
      {
        j = paramInt;
        m = d.beginBroadcast() - 1;
      }
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (m >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)d.getBroadcastItem(m);
        }
        try
        {
          localIMediaControllerCallback.onRepeatModeChanged(paramInt);
          m -= 1;
          continue;
          d.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public Object e()
    {
      return a;
    }
    
    public void e(int paramInt)
    {
      int m;
      if (k != paramInt)
      {
        k = paramInt;
        m = d.beginBroadcast() - 1;
      }
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (m >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)d.getBroadcastItem(m);
        }
        try
        {
          localIMediaControllerCallback.onShuffleModeChanged(paramInt);
          m -= 1;
          continue;
          d.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public Object f()
    {
      return null;
    }
    
    public String g()
    {
      if (Build.VERSION.SDK_INT < 24) {
        return null;
      }
      return MediaSessionCompatApi24.a(a);
    }
    
    public MediaSessionManager.RemoteUserInfo h()
    {
      return null;
    }
    
    class a
      extends IMediaSession.Stub
    {
      a() {}
      
      public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
      {
        throw new AssertionError();
      }
      
      public void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
      {
        throw new AssertionError();
      }
      
      public void adjustVolume(int paramInt1, int paramInt2, String paramString)
      {
        throw new AssertionError();
      }
      
      public void fastForward()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public Bundle getExtras()
      {
        throw new AssertionError();
      }
      
      public long getFlags()
      {
        throw new AssertionError();
      }
      
      public PendingIntent getLaunchPendingIntent()
      {
        throw new AssertionError();
      }
      
      public MediaMetadataCompat getMetadata()
      {
        throw new AssertionError();
      }
      
      public String getPackageName()
      {
        throw new AssertionError();
      }
      
      public PlaybackStateCompat getPlaybackState()
      {
        return MediaSessionCompat.a(e, g);
      }
      
      public List<MediaSessionCompat.QueueItem> getQueue()
      {
        return null;
      }
      
      public CharSequence getQueueTitle()
      {
        throw new AssertionError();
      }
      
      public int getRatingType()
      {
        return h;
      }
      
      public int getRepeatMode()
      {
        return j;
      }
      
      public int getShuffleMode()
      {
        return k;
      }
      
      public String getTag()
      {
        throw new AssertionError();
      }
      
      public ParcelableVolumeInfo getVolumeAttributes()
      {
        throw new AssertionError();
      }
      
      public boolean isCaptioningEnabled()
      {
        return i;
      }
      
      public boolean isShuffleModeEnabledRemoved()
      {
        return false;
      }
      
      public boolean isTransportControlEnabled()
      {
        throw new AssertionError();
      }
      
      public void next()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void pause()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void play()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void playFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void playFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void playFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void prepare()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void prepareFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void prepareFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void prepareFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void previous()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void rate(RatingCompat paramRatingCompat)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void rateWithExtras(RatingCompat paramRatingCompat, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback)
      {
        if (!c)
        {
          String str = g();
          Object localObject = str;
          if (str == null) {
            localObject = "android.media.session.MediaController";
          }
          localObject = new MediaSessionManager.RemoteUserInfo((String)localObject, getCallingPid(), getCallingUid());
          d.register(paramIMediaControllerCallback, localObject);
        }
      }
      
      public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
      {
        throw new AssertionError();
      }
      
      public void removeQueueItemAt(int paramInt)
      {
        throw new AssertionError();
      }
      
      public void rewind()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void seekTo(long paramLong)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat.ResultReceiverWrapper paramResultReceiverWrapper)
      {
        throw new AssertionError();
      }
      
      public void sendCustomAction(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public boolean sendMediaButton(KeyEvent paramKeyEvent)
      {
        throw new AssertionError();
      }
      
      public void setCaptioningEnabled(boolean paramBoolean)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void setRepeatMode(int paramInt)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void setShuffleMode(int paramInt)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void setShuffleModeEnabledRemoved(boolean paramBoolean)
        throws RemoteException
      {}
      
      public void setVolumeTo(int paramInt1, int paramInt2, String paramString)
      {
        throw new AssertionError();
      }
      
      public void skipToQueueItem(long paramLong)
      {
        throw new AssertionError();
      }
      
      public void stop()
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback)
      {
        d.unregister(paramIMediaControllerCallback);
      }
    }
  }
  
  @RequiresApi(28)
  static class e
    extends MediaSessionCompat.d
  {
    e(Context paramContext, String paramString, Bundle paramBundle)
    {
      super(paramString, paramBundle);
    }
    
    public void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo) {}
    
    @NonNull
    public final MediaSessionManager.RemoteUserInfo h()
    {
      return new MediaSessionManager.RemoteUserInfo(((MediaSession)a).getCurrentControllerInfo());
    }
  }
  
  static class f
    implements MediaSessionCompat.a
  {
    private final b A;
    private final MediaSessionCompat.Token B;
    private c C;
    private boolean D = false;
    private boolean E = false;
    private MediaSessionManager.RemoteUserInfo F;
    private VolumeProviderCompat.Callback G = new VolumeProviderCompat.Callback()
    {
      public void onVolumeChanged(VolumeProviderCompat paramAnonymousVolumeProviderCompat)
      {
        if (w != paramAnonymousVolumeProviderCompat) {
          return;
        }
        paramAnonymousVolumeProviderCompat = new ParcelableVolumeInfo(u, v, paramAnonymousVolumeProviderCompat.getVolumeControl(), paramAnonymousVolumeProviderCompat.getMaxVolume(), paramAnonymousVolumeProviderCompat.getCurrentVolume());
        a(paramAnonymousVolumeProviderCompat);
      }
    };
    final String a;
    final String b;
    final AudioManager c;
    final RemoteControlClient d;
    final Object e = new Object();
    final RemoteCallbackList<IMediaControllerCallback> f = new RemoteCallbackList();
    boolean g = false;
    boolean h = false;
    volatile MediaSessionCompat.Callback i;
    int j;
    MediaMetadataCompat k;
    PlaybackStateCompat l;
    PendingIntent m;
    List<MediaSessionCompat.QueueItem> n;
    CharSequence o;
    int p;
    boolean q;
    int r;
    int s;
    Bundle t;
    int u;
    int v;
    VolumeProviderCompat w;
    private final Context x;
    private final ComponentName y;
    private final PendingIntent z;
    
    public f(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent)
    {
      if (paramComponentName != null)
      {
        x = paramContext;
        a = paramContext.getPackageName();
        c = ((AudioManager)paramContext.getSystemService("audio"));
        b = paramString;
        y = paramComponentName;
        z = paramPendingIntent;
        A = new b();
        B = new MediaSessionCompat.Token(A);
        p = 0;
        u = 1;
        v = 3;
        d = new RemoteControlClient(paramPendingIntent);
        return;
      }
      throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
    }
    
    private void b(MediaMetadataCompat paramMediaMetadataCompat)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onMetadataChanged(paramMediaMetadataCompat);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void b(CharSequence paramCharSequence)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onQueueTitleChanged(paramCharSequence);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void b(String paramString, Bundle paramBundle)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onEvent(paramString, paramBundle);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void b(List<MediaSessionCompat.QueueItem> paramList)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onQueueChanged(paramList);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void c(Bundle paramBundle)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onExtrasChanged(paramBundle);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void c(PlaybackStateCompat paramPlaybackStateCompat)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onPlaybackStateChanged(paramPlaybackStateCompat);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void c(boolean paramBoolean)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onCaptioningEnabledChanged(paramBoolean);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void g(int paramInt)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onRepeatModeChanged(paramInt);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void h(int paramInt)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onShuffleModeChanged(paramInt);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    private void j()
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onSessionDestroyed();
          i1 -= 1;
          continue;
          f.finishBroadcast();
          f.kill();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    int a(long paramLong)
    {
      if ((1L & paramLong) != 0L) {
        i2 = 32;
      } else {
        i2 = 0;
      }
      int i1 = i2;
      if ((0x2 & paramLong) != 0L) {
        i1 = i2 | 0x10;
      }
      int i2 = i1;
      if ((0x4 & paramLong) != 0L) {
        i2 = i1 | 0x4;
      }
      i1 = i2;
      if ((0x8 & paramLong) != 0L) {
        i1 = i2 | 0x2;
      }
      i2 = i1;
      if ((0x10 & paramLong) != 0L) {
        i2 = i1 | 0x1;
      }
      i1 = i2;
      if ((0x20 & paramLong) != 0L) {
        i1 = i2 | 0x80;
      }
      i2 = i1;
      if ((0x40 & paramLong) != 0L) {
        i2 = i1 | 0x40;
      }
      i1 = i2;
      if ((paramLong & 0x200) != 0L) {
        i1 = i2 | 0x8;
      }
      return i1;
    }
    
    public void a(int paramInt)
    {
      synchronized (e)
      {
        j = paramInt;
        i();
        return;
      }
    }
    
    void a(int paramInt1, int paramInt2)
    {
      if (u == 2)
      {
        if (w != null) {
          w.onAdjustVolume(paramInt1);
        }
      }
      else {
        c.adjustStreamVolume(v, paramInt1, paramInt2);
      }
    }
    
    void a(int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
    {
      synchronized (e)
      {
        if (C != null)
        {
          paramObject = C.obtainMessage(paramInt1, paramInt2, paramInt3, paramObject);
          Bundle localBundle = new Bundle();
          localBundle.putString("data_calling_pkg", "android.media.session.MediaController");
          localBundle.putInt("data_calling_pid", Binder.getCallingPid());
          localBundle.putInt("data_calling_uid", Binder.getCallingUid());
          if (paramBundle != null) {
            localBundle.putBundle("data_extras", paramBundle);
          }
          paramObject.setData(localBundle);
          paramObject.sendToTarget();
        }
        return;
      }
    }
    
    public void a(PendingIntent paramPendingIntent)
    {
      synchronized (e)
      {
        m = paramPendingIntent;
        return;
      }
    }
    
    void a(PendingIntent paramPendingIntent, ComponentName paramComponentName)
    {
      c.registerMediaButtonEventReceiver(paramComponentName);
    }
    
    public void a(Bundle paramBundle)
    {
      t = paramBundle;
      c(paramBundle);
    }
    
    public void a(MediaMetadataCompat arg1)
    {
      MediaMetadataCompat localMediaMetadataCompat = ???;
      if (??? != null) {
        localMediaMetadataCompat = new MediaMetadataCompat.Builder(???, MediaSessionCompat.a).build();
      }
      synchronized (e)
      {
        k = localMediaMetadataCompat;
        b(localMediaMetadataCompat);
        if (!h) {
          return;
        }
        if (localMediaMetadataCompat == null) {
          ??? = null;
        } else {
          ??? = localMediaMetadataCompat.getBundle();
        }
        b(???).apply();
        return;
      }
    }
    
    public void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo)
    {
      synchronized (e)
      {
        F = paramRemoteUserInfo;
        return;
      }
    }
    
    public void a(VolumeProviderCompat paramVolumeProviderCompat)
    {
      if (paramVolumeProviderCompat != null)
      {
        if (w != null) {
          w.setCallback(null);
        }
        u = 2;
        w = paramVolumeProviderCompat;
        a(new ParcelableVolumeInfo(u, v, w.getVolumeControl(), w.getMaxVolume(), w.getCurrentVolume()));
        paramVolumeProviderCompat.setCallback(G);
        return;
      }
      throw new IllegalArgumentException("volumeProvider may not be null");
    }
    
    public void a(MediaSessionCompat.Callback paramCallback, Handler arg2)
    {
      i = paramCallback;
      if (paramCallback != null)
      {
        paramCallback = ???;
        if (??? == null) {
          paramCallback = new Handler();
        }
        synchronized (e)
        {
          if (C != null) {
            C.removeCallbacksAndMessages(null);
          }
          C = new c(paramCallback.getLooper());
          i.a(this, paramCallback);
          return;
        }
      }
    }
    
    void a(ParcelableVolumeInfo paramParcelableVolumeInfo)
    {
      int i1 = f.beginBroadcast() - 1;
      for (;;)
      {
        IMediaControllerCallback localIMediaControllerCallback;
        if (i1 >= 0) {
          localIMediaControllerCallback = (IMediaControllerCallback)f.getBroadcastItem(i1);
        }
        try
        {
          localIMediaControllerCallback.onVolumeInfoChanged(paramParcelableVolumeInfo);
          i1 -= 1;
          continue;
          f.finishBroadcast();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          for (;;) {}
        }
      }
    }
    
    public void a(PlaybackStateCompat paramPlaybackStateCompat)
    {
      synchronized (e)
      {
        l = paramPlaybackStateCompat;
        c(paramPlaybackStateCompat);
        if (!h) {
          return;
        }
        if (paramPlaybackStateCompat == null)
        {
          d.setPlaybackState(0);
          d.setTransportControlFlags(0);
          return;
        }
        b(paramPlaybackStateCompat);
        d.setTransportControlFlags(a(paramPlaybackStateCompat.getActions()));
        return;
      }
    }
    
    public void a(CharSequence paramCharSequence)
    {
      o = paramCharSequence;
      b(paramCharSequence);
    }
    
    public void a(String paramString, Bundle paramBundle)
    {
      b(paramString, paramBundle);
    }
    
    public void a(List<MediaSessionCompat.QueueItem> paramList)
    {
      n = paramList;
      b(paramList);
    }
    
    public void a(boolean paramBoolean)
    {
      if (paramBoolean == h) {
        return;
      }
      h = paramBoolean;
      if (i())
      {
        a(k);
        a(l);
      }
    }
    
    public boolean a()
    {
      return h;
    }
    
    RemoteControlClient.MetadataEditor b(Bundle paramBundle)
    {
      RemoteControlClient.MetadataEditor localMetadataEditor = d.editMetadata(true);
      if (paramBundle == null) {
        return localMetadataEditor;
      }
      Bitmap localBitmap2;
      Bitmap localBitmap1;
      if (paramBundle.containsKey("android.media.metadata.ART"))
      {
        localBitmap2 = (Bitmap)paramBundle.getParcelable("android.media.metadata.ART");
        localBitmap1 = localBitmap2;
        if (localBitmap2 != null) {
          localBitmap1 = localBitmap2.copy(localBitmap2.getConfig(), false);
        }
        localMetadataEditor.putBitmap(100, localBitmap1);
      }
      else if (paramBundle.containsKey("android.media.metadata.ALBUM_ART"))
      {
        localBitmap2 = (Bitmap)paramBundle.getParcelable("android.media.metadata.ALBUM_ART");
        localBitmap1 = localBitmap2;
        if (localBitmap2 != null) {
          localBitmap1 = localBitmap2.copy(localBitmap2.getConfig(), false);
        }
        localMetadataEditor.putBitmap(100, localBitmap1);
      }
      if (paramBundle.containsKey("android.media.metadata.ALBUM")) {
        localMetadataEditor.putString(1, paramBundle.getString("android.media.metadata.ALBUM"));
      }
      if (paramBundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
        localMetadataEditor.putString(13, paramBundle.getString("android.media.metadata.ALBUM_ARTIST"));
      }
      if (paramBundle.containsKey("android.media.metadata.ARTIST")) {
        localMetadataEditor.putString(2, paramBundle.getString("android.media.metadata.ARTIST"));
      }
      if (paramBundle.containsKey("android.media.metadata.AUTHOR")) {
        localMetadataEditor.putString(3, paramBundle.getString("android.media.metadata.AUTHOR"));
      }
      if (paramBundle.containsKey("android.media.metadata.COMPILATION")) {
        localMetadataEditor.putString(15, paramBundle.getString("android.media.metadata.COMPILATION"));
      }
      if (paramBundle.containsKey("android.media.metadata.COMPOSER")) {
        localMetadataEditor.putString(4, paramBundle.getString("android.media.metadata.COMPOSER"));
      }
      if (paramBundle.containsKey("android.media.metadata.DATE")) {
        localMetadataEditor.putString(5, paramBundle.getString("android.media.metadata.DATE"));
      }
      if (paramBundle.containsKey("android.media.metadata.DISC_NUMBER")) {
        localMetadataEditor.putLong(14, paramBundle.getLong("android.media.metadata.DISC_NUMBER"));
      }
      if (paramBundle.containsKey("android.media.metadata.DURATION")) {
        localMetadataEditor.putLong(9, paramBundle.getLong("android.media.metadata.DURATION"));
      }
      if (paramBundle.containsKey("android.media.metadata.GENRE")) {
        localMetadataEditor.putString(6, paramBundle.getString("android.media.metadata.GENRE"));
      }
      if (paramBundle.containsKey("android.media.metadata.TITLE")) {
        localMetadataEditor.putString(7, paramBundle.getString("android.media.metadata.TITLE"));
      }
      if (paramBundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
        localMetadataEditor.putLong(0, paramBundle.getLong("android.media.metadata.TRACK_NUMBER"));
      }
      if (paramBundle.containsKey("android.media.metadata.WRITER")) {
        localMetadataEditor.putString(11, paramBundle.getString("android.media.metadata.WRITER"));
      }
      return localMetadataEditor;
    }
    
    public void b()
    {
      h = false;
      g = true;
      i();
      j();
    }
    
    public void b(int paramInt)
    {
      if (w != null) {
        w.setCallback(null);
      }
      v = paramInt;
      u = 1;
      a(new ParcelableVolumeInfo(u, v, 2, c.getStreamMaxVolume(v), c.getStreamVolume(v)));
    }
    
    void b(int paramInt1, int paramInt2)
    {
      if (u == 2)
      {
        if (w != null) {
          w.onSetVolumeTo(paramInt1);
        }
      }
      else {
        c.setStreamVolume(v, paramInt1, paramInt2);
      }
    }
    
    public void b(PendingIntent paramPendingIntent) {}
    
    void b(PendingIntent paramPendingIntent, ComponentName paramComponentName)
    {
      c.unregisterMediaButtonEventReceiver(paramComponentName);
    }
    
    void b(PlaybackStateCompat paramPlaybackStateCompat)
    {
      d.setPlaybackState(f(paramPlaybackStateCompat.getState()));
    }
    
    public void b(boolean paramBoolean)
    {
      if (q != paramBoolean)
      {
        q = paramBoolean;
        c(paramBoolean);
      }
    }
    
    public MediaSessionCompat.Token c()
    {
      return B;
    }
    
    public void c(int paramInt)
    {
      p = paramInt;
    }
    
    public PlaybackStateCompat d()
    {
      synchronized (e)
      {
        PlaybackStateCompat localPlaybackStateCompat = l;
        return localPlaybackStateCompat;
      }
    }
    
    public void d(int paramInt)
    {
      if (r != paramInt)
      {
        r = paramInt;
        g(paramInt);
      }
    }
    
    public Object e()
    {
      return null;
    }
    
    public void e(int paramInt)
    {
      if (s != paramInt)
      {
        s = paramInt;
        h(paramInt);
      }
    }
    
    int f(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return -1;
      case 10: 
      case 11: 
        return 6;
      case 9: 
        return 7;
      case 7: 
        return 9;
      case 6: 
      case 8: 
        return 8;
      case 5: 
        return 5;
      case 4: 
        return 4;
      case 3: 
        return 3;
      case 2: 
        return 2;
      case 1: 
        return 1;
      }
      return 0;
    }
    
    public Object f()
    {
      return null;
    }
    
    public String g()
    {
      return null;
    }
    
    public MediaSessionManager.RemoteUserInfo h()
    {
      synchronized (e)
      {
        MediaSessionManager.RemoteUserInfo localRemoteUserInfo = F;
        return localRemoteUserInfo;
      }
    }
    
    boolean i()
    {
      if (h)
      {
        if ((!D) && ((j & 0x1) != 0))
        {
          a(z, y);
          D = true;
        }
        else if ((D) && ((j & 0x1) == 0))
        {
          b(z, y);
          D = false;
        }
        if ((!E) && ((j & 0x2) != 0))
        {
          c.registerRemoteControlClient(d);
          E = true;
          return true;
        }
        if ((E) && ((j & 0x2) == 0))
        {
          d.setPlaybackState(0);
          c.unregisterRemoteControlClient(d);
          E = false;
        }
      }
      else
      {
        if (D)
        {
          b(z, y);
          D = false;
        }
        if (E)
        {
          d.setPlaybackState(0);
          c.unregisterRemoteControlClient(d);
          E = false;
        }
      }
      return false;
    }
    
    private static final class a
    {
      public final String a;
      public final Bundle b;
      public final ResultReceiver c;
      
      public a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
      {
        a = paramString;
        b = paramBundle;
        c = paramResultReceiver;
      }
    }
    
    class b
      extends IMediaSession.Stub
    {
      b() {}
      
      void a(int paramInt)
      {
        a(paramInt, 0, 0, null, null);
      }
      
      void a(int paramInt1, int paramInt2)
      {
        a(paramInt1, paramInt2, 0, null, null);
      }
      
      void a(int paramInt, Object paramObject)
      {
        a(paramInt, 0, 0, paramObject, null);
      }
      
      void a(int paramInt1, Object paramObject, int paramInt2)
      {
        a(paramInt1, paramInt2, 0, paramObject, null);
      }
      
      void a(int paramInt, Object paramObject, Bundle paramBundle)
      {
        a(paramInt, 0, 0, paramObject, paramBundle);
      }
      
      public void addQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
      {
        a(25, paramMediaDescriptionCompat);
      }
      
      public void addQueueItemAt(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
      {
        a(26, paramMediaDescriptionCompat, paramInt);
      }
      
      public void adjustVolume(int paramInt1, int paramInt2, String paramString)
      {
        MediaSessionCompat.f.this.a(paramInt1, paramInt2);
      }
      
      public void fastForward()
        throws RemoteException
      {
        a(16);
      }
      
      public Bundle getExtras()
      {
        synchronized (e)
        {
          Bundle localBundle = t;
          return localBundle;
        }
      }
      
      public long getFlags()
      {
        synchronized (e)
        {
          long l = j;
          return l;
        }
      }
      
      public PendingIntent getLaunchPendingIntent()
      {
        synchronized (e)
        {
          PendingIntent localPendingIntent = m;
          return localPendingIntent;
        }
      }
      
      public MediaMetadataCompat getMetadata()
      {
        return k;
      }
      
      public String getPackageName()
      {
        return a;
      }
      
      public PlaybackStateCompat getPlaybackState()
      {
        synchronized (e)
        {
          PlaybackStateCompat localPlaybackStateCompat = l;
          MediaMetadataCompat localMediaMetadataCompat = k;
          return MediaSessionCompat.a(localPlaybackStateCompat, localMediaMetadataCompat);
        }
      }
      
      public List<MediaSessionCompat.QueueItem> getQueue()
      {
        synchronized (e)
        {
          List localList = n;
          return localList;
        }
      }
      
      public CharSequence getQueueTitle()
      {
        return o;
      }
      
      public int getRatingType()
      {
        return p;
      }
      
      public int getRepeatMode()
      {
        return r;
      }
      
      public int getShuffleMode()
      {
        return s;
      }
      
      public String getTag()
      {
        return b;
      }
      
      public ParcelableVolumeInfo getVolumeAttributes()
      {
        synchronized (e)
        {
          int m = u;
          int n = v;
          VolumeProviderCompat localVolumeProviderCompat = w;
          int j;
          int i;
          int k;
          if (m == 2)
          {
            j = localVolumeProviderCompat.getVolumeControl();
            i = localVolumeProviderCompat.getMaxVolume();
            k = localVolumeProviderCompat.getCurrentVolume();
          }
          else
          {
            i = c.getStreamMaxVolume(n);
            k = c.getStreamVolume(n);
            j = 2;
          }
          return new ParcelableVolumeInfo(m, n, j, i, k);
        }
      }
      
      public boolean isCaptioningEnabled()
      {
        return q;
      }
      
      public boolean isShuffleModeEnabledRemoved()
      {
        return false;
      }
      
      public boolean isTransportControlEnabled()
      {
        return (j & 0x2) != 0;
      }
      
      public void next()
        throws RemoteException
      {
        a(14);
      }
      
      public void pause()
        throws RemoteException
      {
        a(12);
      }
      
      public void play()
        throws RemoteException
      {
        a(7);
      }
      
      public void playFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        a(8, paramString, paramBundle);
      }
      
      public void playFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        a(9, paramString, paramBundle);
      }
      
      public void playFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        a(10, paramUri, paramBundle);
      }
      
      public void prepare()
        throws RemoteException
      {
        a(3);
      }
      
      public void prepareFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        a(4, paramString, paramBundle);
      }
      
      public void prepareFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        a(5, paramString, paramBundle);
      }
      
      public void prepareFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        a(6, paramUri, paramBundle);
      }
      
      public void previous()
        throws RemoteException
      {
        a(15);
      }
      
      public void rate(RatingCompat paramRatingCompat)
        throws RemoteException
      {
        a(19, paramRatingCompat);
      }
      
      public void rateWithExtras(RatingCompat paramRatingCompat, Bundle paramBundle)
        throws RemoteException
      {
        a(31, paramRatingCompat, paramBundle);
      }
      
      public void registerCallbackListener(IMediaControllerCallback paramIMediaControllerCallback)
      {
        if (g) {}
        try
        {
          paramIMediaControllerCallback.onSessionDestroyed();
          return;
        }
        catch (Exception paramIMediaControllerCallback) {}
        MediaSessionManager.RemoteUserInfo localRemoteUserInfo = new MediaSessionManager.RemoteUserInfo("android.media.session.MediaController", getCallingPid(), getCallingUid());
        f.register(paramIMediaControllerCallback, localRemoteUserInfo);
        return;
      }
      
      public void removeQueueItem(MediaDescriptionCompat paramMediaDescriptionCompat)
      {
        a(27, paramMediaDescriptionCompat);
      }
      
      public void removeQueueItemAt(int paramInt)
      {
        a(28, paramInt);
      }
      
      public void rewind()
        throws RemoteException
      {
        a(17);
      }
      
      public void seekTo(long paramLong)
        throws RemoteException
      {
        a(18, Long.valueOf(paramLong));
      }
      
      public void sendCommand(String paramString, Bundle paramBundle, MediaSessionCompat.ResultReceiverWrapper paramResultReceiverWrapper)
      {
        a(1, new MediaSessionCompat.f.a(paramString, paramBundle, a));
      }
      
      public void sendCustomAction(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        a(20, paramString, paramBundle);
      }
      
      public boolean sendMediaButton(KeyEvent paramKeyEvent)
      {
        int i = j;
        boolean bool = true;
        if ((i & 0x1) == 0) {
          bool = false;
        }
        if (bool) {
          a(21, paramKeyEvent);
        }
        return bool;
      }
      
      public void setCaptioningEnabled(boolean paramBoolean)
        throws RemoteException
      {
        a(29, Boolean.valueOf(paramBoolean));
      }
      
      public void setRepeatMode(int paramInt)
        throws RemoteException
      {
        a(23, paramInt);
      }
      
      public void setShuffleMode(int paramInt)
        throws RemoteException
      {
        a(30, paramInt);
      }
      
      public void setShuffleModeEnabledRemoved(boolean paramBoolean)
        throws RemoteException
      {}
      
      public void setVolumeTo(int paramInt1, int paramInt2, String paramString)
      {
        b(paramInt1, paramInt2);
      }
      
      public void skipToQueueItem(long paramLong)
      {
        a(11, Long.valueOf(paramLong));
      }
      
      public void stop()
        throws RemoteException
      {
        a(13);
      }
      
      public void unregisterCallbackListener(IMediaControllerCallback paramIMediaControllerCallback)
      {
        f.unregister(paramIMediaControllerCallback);
      }
    }
    
    class c
      extends Handler
    {
      public c(Looper paramLooper)
      {
        super();
      }
      
      private void a(KeyEvent paramKeyEvent, MediaSessionCompat.Callback paramCallback)
      {
        if (paramKeyEvent != null)
        {
          if (paramKeyEvent.getAction() != 0) {
            return;
          }
          long l;
          if (MediaSessionCompat.f.this.l == null) {
            l = 0L;
          } else {
            l = MediaSessionCompat.f.this.l.getActions();
          }
          int i = paramKeyEvent.getKeyCode();
          if (i != 79) {
            switch (i)
            {
            default: 
              switch (i)
              {
              default: 
                return;
              case 127: 
                if ((l & 0x2) == 0L) {
                  break;
                }
                paramCallback.onPause();
                return;
              case 126: 
                if ((l & 0x4) == 0L) {
                  break;
                }
                paramCallback.onPlay();
                return;
              }
              break;
            case 90: 
              if ((l & 0x40) == 0L) {
                break;
              }
              paramCallback.onFastForward();
              return;
            case 89: 
              if ((l & 0x8) == 0L) {
                break;
              }
              paramCallback.onRewind();
              return;
            case 88: 
              if ((l & 0x10) == 0L) {
                break;
              }
              paramCallback.onSkipToPrevious();
              return;
            case 87: 
              if ((l & 0x20) == 0L) {
                break;
              }
              paramCallback.onSkipToNext();
              return;
            case 86: 
              if ((l & 1L) == 0L) {
                break;
              }
              paramCallback.onStop();
              return;
            }
          } else {
            Log.w("MediaSessionCompat", "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
          }
          return;
        }
      }
      
      public void handleMessage(Message paramMessage)
      {
        MediaSessionCompat.Callback localCallback = i;
        if (localCallback == null) {
          return;
        }
        Object localObject = paramMessage.getData();
        MediaSessionCompat.ensureClassLoader((Bundle)localObject);
        a(new MediaSessionManager.RemoteUserInfo(((Bundle)localObject).getString("data_calling_pkg"), ((Bundle)localObject).getInt("data_calling_pid"), ((Bundle)localObject).getInt("data_calling_uid")));
        localObject = ((Bundle)localObject).getBundle("data_extras");
        MediaSessionCompat.ensureClassLoader((Bundle)localObject);
        for (;;)
        {
          try
          {
            switch (what)
            {
            case 31: 
              localCallback.onSetRating((RatingCompat)obj, (Bundle)localObject);
              break;
            case 30: 
              localCallback.onSetShuffleMode(arg1);
              break;
            case 29: 
              localCallback.onSetCaptioningEnabled(((Boolean)obj).booleanValue());
              break;
            case 28: 
              if (n != null)
              {
                if ((arg1 < 0) || (arg1 >= n.size())) {
                  break label711;
                }
                paramMessage = (MediaSessionCompat.QueueItem)n.get(arg1);
                if (paramMessage != null) {
                  localCallback.onRemoveQueueItem(paramMessage.getDescription());
                }
              }
              break;
            case 27: 
              localCallback.onRemoveQueueItem((MediaDescriptionCompat)obj);
              break;
            case 26: 
              localCallback.onAddQueueItem((MediaDescriptionCompat)obj, arg1);
              break;
            case 25: 
              localCallback.onAddQueueItem((MediaDescriptionCompat)obj);
              break;
            case 23: 
              localCallback.onSetRepeatMode(arg1);
              break;
            case 22: 
              b(arg1, 0);
              break;
            case 21: 
              paramMessage = (KeyEvent)obj;
              localObject = new Intent("android.intent.action.MEDIA_BUTTON");
              ((Intent)localObject).putExtra("android.intent.extra.KEY_EVENT", paramMessage);
              if (!localCallback.onMediaButtonEvent((Intent)localObject)) {
                a(paramMessage, localCallback);
              }
              break;
            case 20: 
              localCallback.onCustomAction((String)obj, (Bundle)localObject);
              break;
            case 19: 
              localCallback.onSetRating((RatingCompat)obj);
              break;
            case 18: 
              localCallback.onSeekTo(((Long)obj).longValue());
              break;
            case 17: 
              localCallback.onRewind();
              break;
            case 16: 
              localCallback.onFastForward();
              break;
            case 15: 
              localCallback.onSkipToPrevious();
              break;
            case 14: 
              localCallback.onSkipToNext();
              break;
            case 13: 
              localCallback.onStop();
              break;
            case 12: 
              localCallback.onPause();
              break;
            case 11: 
              localCallback.onSkipToQueueItem(((Long)obj).longValue());
              break;
            case 10: 
              localCallback.onPlayFromUri((Uri)obj, (Bundle)localObject);
              break;
            case 9: 
              localCallback.onPlayFromSearch((String)obj, (Bundle)localObject);
              break;
            case 8: 
              localCallback.onPlayFromMediaId((String)obj, (Bundle)localObject);
              break;
            case 7: 
              localCallback.onPlay();
              break;
            case 6: 
              localCallback.onPrepareFromUri((Uri)obj, (Bundle)localObject);
              break;
            case 5: 
              localCallback.onPrepareFromSearch((String)obj, (Bundle)localObject);
              break;
            case 4: 
              localCallback.onPrepareFromMediaId((String)obj, (Bundle)localObject);
              break;
            case 3: 
              localCallback.onPrepare();
              break;
            case 2: 
              a(arg1, 0);
              break;
            case 1: 
              paramMessage = (MediaSessionCompat.f.a)obj;
              localCallback.onCommand(a, b, c);
              return;
            }
          }
          finally
          {
            a(null);
          }
          continue;
          label711:
          paramMessage = null;
        }
      }
    }
  }
}
