package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.IMediaSession.Stub;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class MediaBrowserCompat
{
  public static final String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
  public static final String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
  public static final String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
  public static final String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
  public static final String EXTRA_PAGE = "android.media.browse.extra.PAGE";
  public static final String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
  static final boolean a = Log.isLoggable("MediaBrowserCompat", 3);
  private final b b;
  
  public MediaBrowserCompat(Context paramContext, ComponentName paramComponentName, ConnectionCallback paramConnectionCallback, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 26)
    {
      b = new e(paramContext, paramComponentName, paramConnectionCallback, paramBundle);
      return;
    }
    if (Build.VERSION.SDK_INT >= 23)
    {
      b = new d(paramContext, paramComponentName, paramConnectionCallback, paramBundle);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new c(paramContext, paramComponentName, paramConnectionCallback, paramBundle);
      return;
    }
    b = new f(paramContext, paramComponentName, paramConnectionCallback, paramBundle);
  }
  
  public void connect()
  {
    b.d();
  }
  
  public void disconnect()
  {
    b.e();
  }
  
  @Nullable
  public Bundle getExtras()
  {
    return b.i();
  }
  
  public void getItem(@NonNull String paramString, @NonNull ItemCallback paramItemCallback)
  {
    b.a(paramString, paramItemCallback);
  }
  
  @Nullable
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public Bundle getNotifyChildrenChangedOptions()
  {
    return b.k();
  }
  
  @NonNull
  public String getRoot()
  {
    return b.h();
  }
  
  @NonNull
  public ComponentName getServiceComponent()
  {
    return b.g();
  }
  
  @NonNull
  public MediaSessionCompat.Token getSessionToken()
  {
    return b.j();
  }
  
  public boolean isConnected()
  {
    return b.f();
  }
  
  public void search(@NonNull String paramString, Bundle paramBundle, @NonNull SearchCallback paramSearchCallback)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (paramSearchCallback != null)
      {
        b.a(paramString, paramBundle, paramSearchCallback);
        return;
      }
      throw new IllegalArgumentException("callback cannot be null");
    }
    throw new IllegalArgumentException("query cannot be empty");
  }
  
  public void sendCustomAction(@NonNull String paramString, Bundle paramBundle, @Nullable CustomActionCallback paramCustomActionCallback)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      b.a(paramString, paramBundle, paramCustomActionCallback);
      return;
    }
    throw new IllegalArgumentException("action cannot be empty");
  }
  
  public void subscribe(@NonNull String paramString, @NonNull Bundle paramBundle, @NonNull SubscriptionCallback paramSubscriptionCallback)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (paramSubscriptionCallback != null)
      {
        if (paramBundle != null)
        {
          b.a(paramString, paramBundle, paramSubscriptionCallback);
          return;
        }
        throw new IllegalArgumentException("options are null");
      }
      throw new IllegalArgumentException("callback is null");
    }
    throw new IllegalArgumentException("parentId is empty");
  }
  
  public void subscribe(@NonNull String paramString, @NonNull SubscriptionCallback paramSubscriptionCallback)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (paramSubscriptionCallback != null)
      {
        b.a(paramString, null, paramSubscriptionCallback);
        return;
      }
      throw new IllegalArgumentException("callback is null");
    }
    throw new IllegalArgumentException("parentId is empty");
  }
  
  public void unsubscribe(@NonNull String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      b.a(paramString, null);
      return;
    }
    throw new IllegalArgumentException("parentId is empty");
  }
  
  public void unsubscribe(@NonNull String paramString, @NonNull SubscriptionCallback paramSubscriptionCallback)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (paramSubscriptionCallback != null)
      {
        b.a(paramString, paramSubscriptionCallback);
        return;
      }
      throw new IllegalArgumentException("callback is null");
    }
    throw new IllegalArgumentException("parentId is empty");
  }
  
  public static class ConnectionCallback
  {
    final Object a;
    a b;
    
    public ConnectionCallback()
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        a = d.a(new b());
        return;
      }
      a = null;
    }
    
    void a(a paramA)
    {
      b = paramA;
    }
    
    public void onConnected() {}
    
    public void onConnectionFailed() {}
    
    public void onConnectionSuspended() {}
    
    static abstract interface a
    {
      public abstract void a();
      
      public abstract void b();
      
      public abstract void c();
    }
    
    private class b
      implements d.a
    {
      b() {}
      
      public void a()
      {
        if (b != null) {
          b.a();
        }
        onConnected();
      }
      
      public void b()
      {
        if (b != null) {
          b.b();
        }
        onConnectionSuspended();
      }
      
      public void c()
      {
        if (b != null) {
          b.c();
        }
        onConnectionFailed();
      }
    }
  }
  
  public static abstract class CustomActionCallback
  {
    public CustomActionCallback() {}
    
    public void onError(String paramString, Bundle paramBundle1, Bundle paramBundle2) {}
    
    public void onProgressUpdate(String paramString, Bundle paramBundle1, Bundle paramBundle2) {}
    
    public void onResult(String paramString, Bundle paramBundle1, Bundle paramBundle2) {}
  }
  
  private static class CustomActionResultReceiver
    extends ResultReceiver
  {
    private final String d;
    private final Bundle e;
    private final MediaBrowserCompat.CustomActionCallback f;
    
    CustomActionResultReceiver(String paramString, Bundle paramBundle, MediaBrowserCompat.CustomActionCallback paramCustomActionCallback, Handler paramHandler)
    {
      super();
      d = paramString;
      e = paramBundle;
      f = paramCustomActionCallback;
    }
    
    protected void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      if (f == null) {
        return;
      }
      MediaSessionCompat.ensureClassLoader(paramBundle);
      switch (paramInt)
      {
      default: 
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown result code: ");
        localStringBuilder.append(paramInt);
        localStringBuilder.append(" (extras=");
        localStringBuilder.append(e);
        localStringBuilder.append(", resultData=");
        localStringBuilder.append(paramBundle);
        localStringBuilder.append(")");
        Log.w("MediaBrowserCompat", localStringBuilder.toString());
        return;
      case 1: 
        f.onProgressUpdate(d, e, paramBundle);
        return;
      case 0: 
        f.onResult(d, e, paramBundle);
        return;
      }
      f.onError(d, e, paramBundle);
    }
  }
  
  public static abstract class ItemCallback
  {
    final Object a;
    
    public ItemCallback()
    {
      if (Build.VERSION.SDK_INT >= 23)
      {
        a = e.a(new a());
        return;
      }
      a = null;
    }
    
    public void onError(@NonNull String paramString) {}
    
    public void onItemLoaded(MediaBrowserCompat.MediaItem paramMediaItem) {}
    
    private class a
      implements e.a
    {
      a() {}
      
      public void a(Parcel paramParcel)
      {
        if (paramParcel == null)
        {
          onItemLoaded(null);
          return;
        }
        paramParcel.setDataPosition(0);
        MediaBrowserCompat.MediaItem localMediaItem = (MediaBrowserCompat.MediaItem)MediaBrowserCompat.MediaItem.CREATOR.createFromParcel(paramParcel);
        paramParcel.recycle();
        onItemLoaded(localMediaItem);
      }
      
      public void a(@NonNull String paramString)
      {
        onError(paramString);
      }
    }
  }
  
  private static class ItemReceiver
    extends ResultReceiver
  {
    private final String d;
    private final MediaBrowserCompat.ItemCallback e;
    
    ItemReceiver(String paramString, MediaBrowserCompat.ItemCallback paramItemCallback, Handler paramHandler)
    {
      super();
      d = paramString;
      e = paramItemCallback;
    }
    
    protected void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("media_item")))
      {
        paramBundle = paramBundle.getParcelable("media_item");
        if ((paramBundle != null) && (!(paramBundle instanceof MediaBrowserCompat.MediaItem)))
        {
          e.onError(d);
          return;
        }
        e.onItemLoaded((MediaBrowserCompat.MediaItem)paramBundle);
        return;
      }
      e.onError(d);
    }
  }
  
  public static class MediaItem
    implements Parcelable
  {
    public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator()
    {
      public MediaBrowserCompat.MediaItem a(Parcel paramAnonymousParcel)
      {
        return new MediaBrowserCompat.MediaItem(paramAnonymousParcel);
      }
      
      public MediaBrowserCompat.MediaItem[] a(int paramAnonymousInt)
      {
        return new MediaBrowserCompat.MediaItem[paramAnonymousInt];
      }
    };
    public static final int FLAG_BROWSABLE = 1;
    public static final int FLAG_PLAYABLE = 2;
    private final int a;
    private final MediaDescriptionCompat b;
    
    MediaItem(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
    }
    
    public MediaItem(@NonNull MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
    {
      if (paramMediaDescriptionCompat != null)
      {
        if (!TextUtils.isEmpty(paramMediaDescriptionCompat.getMediaId()))
        {
          a = paramInt;
          b = paramMediaDescriptionCompat;
          return;
        }
        throw new IllegalArgumentException("description must have a non-empty media id");
      }
      throw new IllegalArgumentException("description cannot be null");
    }
    
    public static MediaItem fromMediaItem(Object paramObject)
    {
      if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
      {
        int i = d.c.a(paramObject);
        return new MediaItem(MediaDescriptionCompat.fromMediaDescription(d.c.b(paramObject)), i);
      }
      return null;
    }
    
    public static List<MediaItem> fromMediaItemList(List<?> paramList)
    {
      if ((paramList != null) && (Build.VERSION.SDK_INT >= 21))
      {
        ArrayList localArrayList = new ArrayList(paramList.size());
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          localArrayList.add(fromMediaItem(paramList.next()));
        }
        return localArrayList;
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    @NonNull
    public MediaDescriptionCompat getDescription()
    {
      return b;
    }
    
    public int getFlags()
    {
      return a;
    }
    
    @Nullable
    public String getMediaId()
    {
      return b.getMediaId();
    }
    
    public boolean isBrowsable()
    {
      return (a & 0x1) != 0;
    }
    
    public boolean isPlayable()
    {
      return (a & 0x2) != 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("MediaItem{");
      localStringBuilder.append("mFlags=");
      localStringBuilder.append(a);
      localStringBuilder.append(", mDescription=");
      localStringBuilder.append(b);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
      b.writeToParcel(paramParcel, paramInt);
    }
    
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static @interface Flags {}
  }
  
  public static abstract class SearchCallback
  {
    public SearchCallback() {}
    
    public void onError(@NonNull String paramString, Bundle paramBundle) {}
    
    public void onSearchResult(@NonNull String paramString, Bundle paramBundle, @NonNull List<MediaBrowserCompat.MediaItem> paramList) {}
  }
  
  private static class SearchResultReceiver
    extends ResultReceiver
  {
    private final String d;
    private final Bundle e;
    private final MediaBrowserCompat.SearchCallback f;
    
    SearchResultReceiver(String paramString, Bundle paramBundle, MediaBrowserCompat.SearchCallback paramSearchCallback, Handler paramHandler)
    {
      super();
      d = paramString;
      e = paramBundle;
      f = paramSearchCallback;
    }
    
    protected void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("search_results")))
      {
        Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("search_results");
        paramBundle = null;
        if (arrayOfParcelable != null)
        {
          ArrayList localArrayList = new ArrayList();
          int i = arrayOfParcelable.length;
          paramInt = 0;
          for (;;)
          {
            paramBundle = localArrayList;
            if (paramInt >= i) {
              break;
            }
            localArrayList.add((MediaBrowserCompat.MediaItem)arrayOfParcelable[paramInt]);
            paramInt += 1;
          }
        }
        f.onSearchResult(d, e, paramBundle);
        return;
      }
      f.onError(d, e);
    }
  }
  
  public static abstract class SubscriptionCallback
  {
    final Object a;
    final IBinder b = new Binder();
    WeakReference<MediaBrowserCompat.i> c;
    
    public SubscriptionCallback()
    {
      if (Build.VERSION.SDK_INT >= 26)
      {
        a = f.a(new b());
        return;
      }
      if (Build.VERSION.SDK_INT >= 21)
      {
        a = d.a(new a());
        return;
      }
      a = null;
    }
    
    void a(MediaBrowserCompat.i paramI)
    {
      c = new WeakReference(paramI);
    }
    
    public void onChildrenLoaded(@NonNull String paramString, @NonNull List<MediaBrowserCompat.MediaItem> paramList) {}
    
    public void onChildrenLoaded(@NonNull String paramString, @NonNull List<MediaBrowserCompat.MediaItem> paramList, @NonNull Bundle paramBundle) {}
    
    public void onError(@NonNull String paramString) {}
    
    public void onError(@NonNull String paramString, @NonNull Bundle paramBundle) {}
    
    private class a
      implements d.d
    {
      a() {}
      
      List<MediaBrowserCompat.MediaItem> a(List<MediaBrowserCompat.MediaItem> paramList, Bundle paramBundle)
      {
        if (paramList == null) {
          return null;
        }
        int i = paramBundle.getInt("android.media.browse.extra.PAGE", -1);
        int m = paramBundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if ((i == -1) && (m == -1)) {
          return paramList;
        }
        int k = m * i;
        int j = k + m;
        if ((i >= 0) && (m >= 1) && (k < paramList.size()))
        {
          i = j;
          if (j > paramList.size()) {
            i = paramList.size();
          }
          return paramList.subList(k, i);
        }
        return Collections.emptyList();
      }
      
      public void a(@NonNull String paramString)
      {
        onError(paramString);
      }
      
      public void a(@NonNull String paramString, List<?> paramList)
      {
        if (c == null) {
          localObject = null;
        } else {
          localObject = (MediaBrowserCompat.i)c.get();
        }
        if (localObject == null)
        {
          onChildrenLoaded(paramString, MediaBrowserCompat.MediaItem.fromMediaItemList(paramList));
          return;
        }
        paramList = MediaBrowserCompat.MediaItem.fromMediaItemList(paramList);
        List localList = ((MediaBrowserCompat.i)localObject).c();
        Object localObject = ((MediaBrowserCompat.i)localObject).b();
        int i = 0;
        while (i < localList.size())
        {
          Bundle localBundle = (Bundle)((List)localObject).get(i);
          if (localBundle == null) {
            onChildrenLoaded(paramString, paramList);
          } else {
            onChildrenLoaded(paramString, a(paramList, localBundle), localBundle);
          }
          i += 1;
        }
      }
    }
    
    private class b
      extends MediaBrowserCompat.SubscriptionCallback.a
      implements f.a
    {
      b()
      {
        super();
      }
      
      public void a(@NonNull String paramString, @NonNull Bundle paramBundle)
      {
        onError(paramString, paramBundle);
      }
      
      public void a(@NonNull String paramString, List<?> paramList, @NonNull Bundle paramBundle)
      {
        onChildrenLoaded(paramString, MediaBrowserCompat.MediaItem.fromMediaItemList(paramList), paramBundle);
      }
    }
  }
  
  private static class a
    extends Handler
  {
    private final WeakReference<MediaBrowserCompat.g> a;
    private WeakReference<Messenger> b;
    
    a(MediaBrowserCompat.g paramG)
    {
      a = new WeakReference(paramG);
    }
    
    void a(Messenger paramMessenger)
    {
      b = new WeakReference(paramMessenger);
    }
    
    public void handleMessage(Message paramMessage)
    {
      MediaBrowserCompat.g localG;
      Messenger localMessenger;
      if ((b != null) && (b.get() != null))
      {
        if (a.get() == null) {
          return;
        }
        localObject = paramMessage.getData();
        MediaSessionCompat.ensureClassLoader((Bundle)localObject);
        localG = (MediaBrowserCompat.g)a.get();
        localMessenger = (Messenger)b.get();
      }
      try
      {
        switch (what)
        {
        case 3: 
          localBundle1 = ((Bundle)localObject).getBundle("data_options");
          MediaSessionCompat.ensureClassLoader(localBundle1);
          Bundle localBundle2 = ((Bundle)localObject).getBundle("data_notify_children_changed_options");
          MediaSessionCompat.ensureClassLoader(localBundle2);
          localG.a(localMessenger, ((Bundle)localObject).getString("data_media_item_id"), ((Bundle)localObject).getParcelableArrayList("data_media_item_list"), localBundle1, localBundle2);
          return;
        }
      }
      catch (BadParcelableException localBadParcelableException)
      {
        for (;;)
        {
          Bundle localBundle1;
        }
      }
      localG.a(localMessenger);
      return;
      localBundle1 = ((Bundle)localObject).getBundle("data_root_hints");
      MediaSessionCompat.ensureClassLoader(localBundle1);
      localG.a(localMessenger, ((Bundle)localObject).getString("data_media_item_id"), (MediaSessionCompat.Token)((Bundle)localObject).getParcelable("data_media_session_token"), localBundle1);
      return;
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Unhandled message: ");
      ((StringBuilder)localObject).append(paramMessage);
      ((StringBuilder)localObject).append("\n  Client version: ");
      ((StringBuilder)localObject).append(1);
      ((StringBuilder)localObject).append("\n  Service version: ");
      ((StringBuilder)localObject).append(arg1);
      Log.w("MediaBrowserCompat", ((StringBuilder)localObject).toString());
      return;
      Log.e("MediaBrowserCompat", "Could not unparcel the data.");
      if (what == 1) {
        localG.a(localMessenger);
      }
      return;
    }
  }
  
  static abstract interface b
  {
    public abstract void a(@NonNull String paramString, Bundle paramBundle, @Nullable MediaBrowserCompat.CustomActionCallback paramCustomActionCallback);
    
    public abstract void a(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat.SearchCallback paramSearchCallback);
    
    public abstract void a(@NonNull String paramString, @Nullable Bundle paramBundle, @NonNull MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback);
    
    public abstract void a(@NonNull String paramString, @NonNull MediaBrowserCompat.ItemCallback paramItemCallback);
    
    public abstract void a(@NonNull String paramString, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback);
    
    public abstract void d();
    
    public abstract void e();
    
    public abstract boolean f();
    
    public abstract ComponentName g();
    
    @NonNull
    public abstract String h();
    
    @Nullable
    public abstract Bundle i();
    
    @NonNull
    public abstract MediaSessionCompat.Token j();
    
    @Nullable
    public abstract Bundle k();
  }
  
  @RequiresApi(21)
  static class c
    implements MediaBrowserCompat.ConnectionCallback.a, MediaBrowserCompat.b, MediaBrowserCompat.g
  {
    final Context a;
    protected final Object b;
    protected final Bundle c;
    protected final MediaBrowserCompat.a d = new MediaBrowserCompat.a(this);
    protected int e;
    protected MediaBrowserCompat.h f;
    protected Messenger g;
    private final ArrayMap<String, MediaBrowserCompat.i> h = new ArrayMap();
    private MediaSessionCompat.Token i;
    private Bundle j;
    
    c(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat.ConnectionCallback paramConnectionCallback, Bundle paramBundle)
    {
      a = paramContext;
      if (paramBundle != null) {
        paramBundle = new Bundle(paramBundle);
      } else {
        paramBundle = new Bundle();
      }
      c = paramBundle;
      c.putInt("extra_client_version", 1);
      paramConnectionCallback.a(this);
      b = d.a(paramContext, paramComponentName, a, c);
    }
    
    public void a()
    {
      Object localObject = d.f(b);
      if (localObject == null) {
        return;
      }
      e = ((Bundle)localObject).getInt("extra_service_version", 0);
      IBinder localIBinder = BundleCompat.getBinder((Bundle)localObject, "extra_messenger");
      if (localIBinder != null)
      {
        f = new MediaBrowserCompat.h(localIBinder, c);
        g = new Messenger(d);
        d.a(g);
      }
      try
      {
        f.b(a, g);
      }
      catch (RemoteException localRemoteException)
      {
        for (;;) {}
      }
      Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
      localObject = IMediaSession.Stub.asInterface(BundleCompat.getBinder((Bundle)localObject, "extra_session_binder"));
      if (localObject != null) {
        i = MediaSessionCompat.Token.fromToken(d.g(b), (IMediaSession)localObject);
      }
    }
    
    public void a(Messenger paramMessenger) {}
    
    public void a(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle) {}
    
    public void a(Messenger paramMessenger, String paramString, List paramList, Bundle paramBundle1, Bundle paramBundle2)
    {
      if (g != paramMessenger) {
        return;
      }
      paramMessenger = (MediaBrowserCompat.i)h.get(paramString);
      if (paramMessenger == null)
      {
        if (MediaBrowserCompat.a)
        {
          paramMessenger = new StringBuilder();
          paramMessenger.append("onLoadChildren for id that isn't subscribed id=");
          paramMessenger.append(paramString);
          Log.d("MediaBrowserCompat", paramMessenger.toString());
        }
        return;
      }
      paramMessenger = paramMessenger.a(paramBundle1);
      if (paramMessenger != null)
      {
        if (paramBundle1 == null)
        {
          if (paramList == null)
          {
            paramMessenger.onError(paramString);
            return;
          }
          j = paramBundle2;
          paramMessenger.onChildrenLoaded(paramString, paramList);
          j = null;
          return;
        }
        if (paramList == null)
        {
          paramMessenger.onError(paramString, paramBundle1);
          return;
        }
        j = paramBundle2;
        paramMessenger.onChildrenLoaded(paramString, paramList, paramBundle1);
        j = null;
      }
    }
    
    public void a(@NonNull final String paramString, final Bundle paramBundle, @Nullable final MediaBrowserCompat.CustomActionCallback paramCustomActionCallback)
    {
      if (f())
      {
        if (f == null)
        {
          Log.i("MediaBrowserCompat", "The connected service doesn't support sendCustomAction.");
          if (paramCustomActionCallback != null) {
            d.post(new Runnable()
            {
              public void run()
              {
                paramCustomActionCallback.onError(paramString, paramBundle, null);
              }
            });
          }
        }
        MediaBrowserCompat.CustomActionResultReceiver localCustomActionResultReceiver = new MediaBrowserCompat.CustomActionResultReceiver(paramString, paramBundle, paramCustomActionCallback, d);
        try
        {
          f.b(paramString, paramBundle, localCustomActionResultReceiver, g);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Remote error sending a custom action: action=");
          localStringBuilder.append(paramString);
          localStringBuilder.append(", extras=");
          localStringBuilder.append(paramBundle);
          Log.i("MediaBrowserCompat", localStringBuilder.toString(), localRemoteException);
          if (paramCustomActionCallback != null) {
            d.post(new Runnable()
            {
              public void run()
              {
                paramCustomActionCallback.onError(paramString, paramBundle, null);
              }
            });
          }
          return;
        }
      }
      paramCustomActionCallback = new StringBuilder();
      paramCustomActionCallback.append("Cannot send a custom action (");
      paramCustomActionCallback.append(paramString);
      paramCustomActionCallback.append(") with ");
      paramCustomActionCallback.append("extras ");
      paramCustomActionCallback.append(paramBundle);
      paramCustomActionCallback.append(" because the browser is not connected to the ");
      paramCustomActionCallback.append("service.");
      throw new IllegalStateException(paramCustomActionCallback.toString());
    }
    
    public void a(@NonNull final String paramString, final Bundle paramBundle, @NonNull final MediaBrowserCompat.SearchCallback paramSearchCallback)
    {
      if (f())
      {
        if (f == null)
        {
          Log.i("MediaBrowserCompat", "The connected service doesn't support search.");
          d.post(new Runnable()
          {
            public void run()
            {
              paramSearchCallback.onError(paramString, paramBundle);
            }
          });
          return;
        }
        MediaBrowserCompat.SearchResultReceiver localSearchResultReceiver = new MediaBrowserCompat.SearchResultReceiver(paramString, paramBundle, paramSearchCallback, d);
        try
        {
          f.a(paramString, paramBundle, localSearchResultReceiver, g);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Remote error searching items with query: ");
          localStringBuilder.append(paramString);
          Log.i("MediaBrowserCompat", localStringBuilder.toString(), localRemoteException);
          d.post(new Runnable()
          {
            public void run()
            {
              paramSearchCallback.onError(paramString, paramBundle);
            }
          });
          return;
        }
      }
      throw new IllegalStateException("search() called while not connected");
    }
    
    public void a(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      MediaBrowserCompat.i localI2 = (MediaBrowserCompat.i)h.get(paramString);
      MediaBrowserCompat.i localI1 = localI2;
      if (localI2 == null)
      {
        localI1 = new MediaBrowserCompat.i();
        h.put(paramString, localI1);
      }
      paramSubscriptionCallback.a(localI1);
      if (paramBundle == null) {
        paramBundle = null;
      } else {
        paramBundle = new Bundle(paramBundle);
      }
      localI1.a(paramBundle, paramSubscriptionCallback);
      if (f == null)
      {
        d.a(b, paramString, a);
        return;
      }
      try
      {
        f.a(paramString, b, paramBundle, g);
        return;
      }
      catch (RemoteException paramBundle)
      {
        for (;;) {}
      }
      paramBundle = new StringBuilder();
      paramBundle.append("Remote error subscribing media item: ");
      paramBundle.append(paramString);
      Log.i("MediaBrowserCompat", paramBundle.toString());
    }
    
    public void a(@NonNull final String paramString, @NonNull final MediaBrowserCompat.ItemCallback paramItemCallback)
    {
      if (!TextUtils.isEmpty(paramString)) {
        if (paramItemCallback != null)
        {
          if (!d.c(b))
          {
            Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
            d.post(new Runnable()
            {
              public void run()
              {
                paramItemCallback.onError(paramString);
              }
            });
            return;
          }
          if (f == null)
          {
            d.post(new Runnable()
            {
              public void run()
              {
                paramItemCallback.onError(paramString);
              }
            });
            return;
          }
          localObject = new MediaBrowserCompat.ItemReceiver(paramString, paramItemCallback, d);
        }
      }
      try
      {
        f.a(paramString, (ResultReceiver)localObject, g);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;) {}
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Remote error getting media item: ");
      ((StringBuilder)localObject).append(paramString);
      Log.i("MediaBrowserCompat", ((StringBuilder)localObject).toString());
      d.post(new Runnable()
      {
        public void run()
        {
          paramItemCallback.onError(paramString);
        }
      });
      return;
      throw new IllegalArgumentException("cb is null");
      throw new IllegalArgumentException("mediaId is empty");
    }
    
    public void a(@NonNull String paramString, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 66	android/support/v4/media/MediaBrowserCompat$c:h	Landroid/support/v4/util/ArrayMap;
      //   4: aload_1
      //   5: invokevirtual 171	android/support/v4/util/ArrayMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   8: checkcast 173	android/support/v4/media/MediaBrowserCompat$i
      //   11: astore 4
      //   13: aload 4
      //   15: ifnonnull +4 -> 19
      //   18: return
      //   19: aload_0
      //   20: getfield 125	android/support/v4/media/MediaBrowserCompat$c:f	Landroid/support/v4/media/MediaBrowserCompat$h;
      //   23: ifnonnull +104 -> 127
      //   26: aload_2
      //   27: ifnonnull +14 -> 41
      //   30: aload_0
      //   31: getfield 96	android/support/v4/media/MediaBrowserCompat$c:b	Ljava/lang/Object;
      //   34: aload_1
      //   35: invokestatic 341	android/support/v4/media/d:a	(Ljava/lang/Object;Ljava/lang/String;)V
      //   38: goto +226 -> 264
      //   41: aload 4
      //   43: invokevirtual 344	android/support/v4/media/MediaBrowserCompat$i:c	()Ljava/util/List;
      //   46: astore 5
      //   48: aload 4
      //   50: invokevirtual 346	android/support/v4/media/MediaBrowserCompat$i:b	()Ljava/util/List;
      //   53: astore 6
      //   55: aload 5
      //   57: invokeinterface 352 1 0
      //   62: iconst_1
      //   63: isub
      //   64: istore_3
      //   65: iload_3
      //   66: iflt +40 -> 106
      //   69: aload 5
      //   71: iload_3
      //   72: invokeinterface 355 2 0
      //   77: aload_2
      //   78: if_acmpne +21 -> 99
      //   81: aload 5
      //   83: iload_3
      //   84: invokeinterface 358 2 0
      //   89: pop
      //   90: aload 6
      //   92: iload_3
      //   93: invokeinterface 358 2 0
      //   98: pop
      //   99: iload_3
      //   100: iconst_1
      //   101: isub
      //   102: istore_3
      //   103: goto -38 -> 65
      //   106: aload 5
      //   108: invokeinterface 352 1 0
      //   113: ifne +151 -> 264
      //   116: aload_0
      //   117: getfield 96	android/support/v4/media/MediaBrowserCompat$c:b	Ljava/lang/Object;
      //   120: aload_1
      //   121: invokestatic 341	android/support/v4/media/d:a	(Ljava/lang/Object;Ljava/lang/String;)V
      //   124: goto +140 -> 264
      //   127: aload_2
      //   128: ifnonnull +19 -> 147
      //   131: aload_0
      //   132: getfield 125	android/support/v4/media/MediaBrowserCompat$c:f	Landroid/support/v4/media/MediaBrowserCompat$h;
      //   135: aload_1
      //   136: aconst_null
      //   137: aload_0
      //   138: getfield 132	android/support/v4/media/MediaBrowserCompat$c:g	Landroid/os/Messenger;
      //   141: invokevirtual 361	android/support/v4/media/MediaBrowserCompat$h:a	(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
      //   144: goto +120 -> 264
      //   147: aload 4
      //   149: invokevirtual 344	android/support/v4/media/MediaBrowserCompat$i:c	()Ljava/util/List;
      //   152: astore 5
      //   154: aload 4
      //   156: invokevirtual 346	android/support/v4/media/MediaBrowserCompat$i:b	()Ljava/util/List;
      //   159: astore 6
      //   161: aload 5
      //   163: invokeinterface 352 1 0
      //   168: iconst_1
      //   169: isub
      //   170: istore_3
      //   171: iload_3
      //   172: iflt +92 -> 264
      //   175: aload 5
      //   177: iload_3
      //   178: invokeinterface 355 2 0
      //   183: aload_2
      //   184: if_acmpne +37 -> 221
      //   187: aload_0
      //   188: getfield 125	android/support/v4/media/MediaBrowserCompat$c:f	Landroid/support/v4/media/MediaBrowserCompat$h;
      //   191: aload_1
      //   192: aload_2
      //   193: getfield 298	android/support/v4/media/MediaBrowserCompat$SubscriptionCallback:b	Landroid/os/IBinder;
      //   196: aload_0
      //   197: getfield 132	android/support/v4/media/MediaBrowserCompat$c:g	Landroid/os/Messenger;
      //   200: invokevirtual 361	android/support/v4/media/MediaBrowserCompat$h:a	(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Messenger;)V
      //   203: aload 5
      //   205: iload_3
      //   206: invokeinterface 358 2 0
      //   211: pop
      //   212: aload 6
      //   214: iload_3
      //   215: invokeinterface 358 2 0
      //   220: pop
      //   221: iload_3
      //   222: iconst_1
      //   223: isub
      //   224: istore_3
      //   225: goto -54 -> 171
      //   228: new 178	java/lang/StringBuilder
      //   231: dup
      //   232: invokespecial 179	java/lang/StringBuilder:<init>	()V
      //   235: astore 5
      //   237: aload 5
      //   239: ldc_w 363
      //   242: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   245: pop
      //   246: aload 5
      //   248: aload_1
      //   249: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   252: pop
      //   253: ldc -116
      //   255: aload 5
      //   257: invokevirtual 189	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   260: invokestatic 191	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   263: pop
      //   264: aload 4
      //   266: invokevirtual 365	android/support/v4/media/MediaBrowserCompat$i:a	()Z
      //   269: ifne +7 -> 276
      //   272: aload_2
      //   273: ifnonnull +12 -> 285
      //   276: aload_0
      //   277: getfield 66	android/support/v4/media/MediaBrowserCompat$c:h	Landroid/support/v4/util/ArrayMap;
      //   280: aload_1
      //   281: invokevirtual 367	android/support/v4/util/ArrayMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
      //   284: pop
      //   285: return
      //   286: astore 5
      //   288: goto -60 -> 228
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	291	0	this	c
      //   0	291	1	paramString	String
      //   0	291	2	paramSubscriptionCallback	MediaBrowserCompat.SubscriptionCallback
      //   64	161	3	k	int
      //   11	254	4	localI	MediaBrowserCompat.i
      //   46	210	5	localObject	Object
      //   286	1	5	localRemoteException	RemoteException
      //   53	160	6	localList	List
      // Exception table:
      //   from	to	target	type
      //   131	144	286	android/os/RemoteException
      //   147	171	286	android/os/RemoteException
      //   175	221	286	android/os/RemoteException
    }
    
    public void b()
    {
      f = null;
      g = null;
      i = null;
      d.a(null);
    }
    
    public void c() {}
    
    public void d()
    {
      d.a(b);
    }
    
    public void e()
    {
      if ((f != null) && (g != null)) {}
      try
      {
        f.b(g);
      }
      catch (RemoteException localRemoteException)
      {
        for (;;) {}
      }
      Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
      d.b(b);
    }
    
    public boolean f()
    {
      return d.c(b);
    }
    
    public ComponentName g()
    {
      return d.d(b);
    }
    
    @NonNull
    public String h()
    {
      return d.e(b);
    }
    
    @Nullable
    public Bundle i()
    {
      return d.f(b);
    }
    
    @NonNull
    public MediaSessionCompat.Token j()
    {
      if (i == null) {
        i = MediaSessionCompat.Token.fromToken(d.g(b));
      }
      return i;
    }
    
    public Bundle k()
    {
      return j;
    }
  }
  
  @RequiresApi(23)
  static class d
    extends MediaBrowserCompat.c
  {
    d(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat.ConnectionCallback paramConnectionCallback, Bundle paramBundle)
    {
      super(paramComponentName, paramConnectionCallback, paramBundle);
    }
    
    public void a(@NonNull String paramString, @NonNull MediaBrowserCompat.ItemCallback paramItemCallback)
    {
      if (f == null)
      {
        e.a(b, paramString, a);
        return;
      }
      super.a(paramString, paramItemCallback);
    }
  }
  
  @RequiresApi(26)
  static class e
    extends MediaBrowserCompat.d
  {
    e(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat.ConnectionCallback paramConnectionCallback, Bundle paramBundle)
    {
      super(paramComponentName, paramConnectionCallback, paramBundle);
    }
    
    public void a(@NonNull String paramString, @Nullable Bundle paramBundle, @NonNull MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      if ((f != null) && (e >= 2))
      {
        super.a(paramString, paramBundle, paramSubscriptionCallback);
        return;
      }
      if (paramBundle == null)
      {
        d.a(b, paramString, a);
        return;
      }
      f.a(b, paramString, paramBundle, a);
    }
    
    public void a(@NonNull String paramString, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      if ((f != null) && (e >= 2))
      {
        super.a(paramString, paramSubscriptionCallback);
        return;
      }
      if (paramSubscriptionCallback == null)
      {
        d.a(b, paramString);
        return;
      }
      f.a(b, paramString, a);
    }
  }
  
  static class f
    implements MediaBrowserCompat.b, MediaBrowserCompat.g
  {
    final Context a;
    final ComponentName b;
    final MediaBrowserCompat.ConnectionCallback c;
    final Bundle d;
    final MediaBrowserCompat.a e = new MediaBrowserCompat.a(this);
    int f = 1;
    a g;
    MediaBrowserCompat.h h;
    Messenger i;
    private final ArrayMap<String, MediaBrowserCompat.i> j = new ArrayMap();
    private String k;
    private MediaSessionCompat.Token l;
    private Bundle m;
    private Bundle n;
    
    public f(Context paramContext, ComponentName paramComponentName, MediaBrowserCompat.ConnectionCallback paramConnectionCallback, Bundle paramBundle)
    {
      if (paramContext != null)
      {
        if (paramComponentName != null)
        {
          if (paramConnectionCallback != null)
          {
            a = paramContext;
            b = paramComponentName;
            c = paramConnectionCallback;
            if (paramBundle == null) {
              paramContext = null;
            } else {
              paramContext = new Bundle(paramBundle);
            }
            d = paramContext;
            return;
          }
          throw new IllegalArgumentException("connection callback must not be null");
        }
        throw new IllegalArgumentException("service component must not be null");
      }
      throw new IllegalArgumentException("context must not be null");
    }
    
    private static String a(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("UNKNOWN/");
        localStringBuilder.append(paramInt);
        return localStringBuilder.toString();
      case 4: 
        return "CONNECT_STATE_SUSPENDED";
      case 3: 
        return "CONNECT_STATE_CONNECTED";
      case 2: 
        return "CONNECT_STATE_CONNECTING";
      case 1: 
        return "CONNECT_STATE_DISCONNECTED";
      }
      return "CONNECT_STATE_DISCONNECTING";
    }
    
    private boolean a(Messenger paramMessenger, String paramString)
    {
      if ((i == paramMessenger) && (f != 0) && (f != 1)) {
        return true;
      }
      if ((f != 0) && (f != 1))
      {
        paramMessenger = new StringBuilder();
        paramMessenger.append(paramString);
        paramMessenger.append(" for ");
        paramMessenger.append(b);
        paramMessenger.append(" with mCallbacksMessenger=");
        paramMessenger.append(i);
        paramMessenger.append(" this=");
        paramMessenger.append(this);
        Log.i("MediaBrowserCompat", paramMessenger.toString());
      }
      return false;
    }
    
    void a()
    {
      if (g != null) {
        a.unbindService(g);
      }
      f = 1;
      g = null;
      h = null;
      i = null;
      e.a(null);
      k = null;
      l = null;
    }
    
    public void a(Messenger paramMessenger)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onConnectFailed for ");
      localStringBuilder.append(b);
      Log.e("MediaBrowserCompat", localStringBuilder.toString());
      if (!a(paramMessenger, "onConnectFailed")) {
        return;
      }
      if (f != 2)
      {
        paramMessenger = new StringBuilder();
        paramMessenger.append("onConnect from service while mState=");
        paramMessenger.append(a(f));
        paramMessenger.append("... ignoring");
        Log.w("MediaBrowserCompat", paramMessenger.toString());
        return;
      }
      a();
      c.onConnectionFailed();
    }
    
    public void a(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle)
    {
      if (!a(paramMessenger, "onConnect")) {
        return;
      }
      if (f != 2)
      {
        paramMessenger = new StringBuilder();
        paramMessenger.append("onConnect from service while mState=");
        paramMessenger.append(a(f));
        paramMessenger.append("... ignoring");
        Log.w("MediaBrowserCompat", paramMessenger.toString());
        return;
      }
      k = paramString;
      l = paramToken;
      m = paramBundle;
      f = 3;
      if (MediaBrowserCompat.a)
      {
        Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
        b();
      }
      c.onConnected();
      try
      {
        paramMessenger = j.entrySet().iterator();
        while (paramMessenger.hasNext())
        {
          paramToken = (Map.Entry)paramMessenger.next();
          paramString = (String)paramToken.getKey();
          paramBundle = (MediaBrowserCompat.i)paramToken.getValue();
          paramToken = paramBundle.c();
          paramBundle = paramBundle.b();
          int i1 = 0;
          while (i1 < paramToken.size())
          {
            h.a(paramString, getb, (Bundle)paramBundle.get(i1), i);
            i1 += 1;
          }
        }
      }
      catch (RemoteException paramMessenger)
      {
        for (;;) {}
      }
      Log.d("MediaBrowserCompat", "addSubscription failed with RemoteException.");
    }
    
    public void a(Messenger paramMessenger, String paramString, List paramList, Bundle paramBundle1, Bundle paramBundle2)
    {
      if (!a(paramMessenger, "onLoadChildren")) {
        return;
      }
      if (MediaBrowserCompat.a)
      {
        paramMessenger = new StringBuilder();
        paramMessenger.append("onLoadChildren for ");
        paramMessenger.append(b);
        paramMessenger.append(" id=");
        paramMessenger.append(paramString);
        Log.d("MediaBrowserCompat", paramMessenger.toString());
      }
      paramMessenger = (MediaBrowserCompat.i)j.get(paramString);
      if (paramMessenger == null)
      {
        if (MediaBrowserCompat.a)
        {
          paramMessenger = new StringBuilder();
          paramMessenger.append("onLoadChildren for id that isn't subscribed id=");
          paramMessenger.append(paramString);
          Log.d("MediaBrowserCompat", paramMessenger.toString());
        }
        return;
      }
      paramMessenger = paramMessenger.a(paramBundle1);
      if (paramMessenger != null)
      {
        if (paramBundle1 == null)
        {
          if (paramList == null)
          {
            paramMessenger.onError(paramString);
            return;
          }
          n = paramBundle2;
          paramMessenger.onChildrenLoaded(paramString, paramList);
          n = null;
          return;
        }
        if (paramList == null)
        {
          paramMessenger.onError(paramString, paramBundle1);
          return;
        }
        n = paramBundle2;
        paramMessenger.onChildrenLoaded(paramString, paramList, paramBundle1);
        n = null;
      }
    }
    
    public void a(@NonNull final String paramString, final Bundle paramBundle, @Nullable final MediaBrowserCompat.CustomActionCallback paramCustomActionCallback)
    {
      if (f())
      {
        MediaBrowserCompat.CustomActionResultReceiver localCustomActionResultReceiver = new MediaBrowserCompat.CustomActionResultReceiver(paramString, paramBundle, paramCustomActionCallback, e);
        try
        {
          h.b(paramString, paramBundle, localCustomActionResultReceiver, i);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Remote error sending a custom action: action=");
          localStringBuilder.append(paramString);
          localStringBuilder.append(", extras=");
          localStringBuilder.append(paramBundle);
          Log.i("MediaBrowserCompat", localStringBuilder.toString(), localRemoteException);
          if (paramCustomActionCallback != null) {
            e.post(new Runnable()
            {
              public void run()
              {
                paramCustomActionCallback.onError(paramString, paramBundle, null);
              }
            });
          }
          return;
        }
      }
      paramCustomActionCallback = new StringBuilder();
      paramCustomActionCallback.append("Cannot send a custom action (");
      paramCustomActionCallback.append(paramString);
      paramCustomActionCallback.append(") with ");
      paramCustomActionCallback.append("extras ");
      paramCustomActionCallback.append(paramBundle);
      paramCustomActionCallback.append(" because the browser is not connected to the ");
      paramCustomActionCallback.append("service.");
      throw new IllegalStateException(paramCustomActionCallback.toString());
    }
    
    public void a(@NonNull final String paramString, final Bundle paramBundle, @NonNull final MediaBrowserCompat.SearchCallback paramSearchCallback)
    {
      if (f())
      {
        MediaBrowserCompat.SearchResultReceiver localSearchResultReceiver = new MediaBrowserCompat.SearchResultReceiver(paramString, paramBundle, paramSearchCallback, e);
        try
        {
          h.a(paramString, paramBundle, localSearchResultReceiver, i);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Remote error searching items with query: ");
          localStringBuilder.append(paramString);
          Log.i("MediaBrowserCompat", localStringBuilder.toString(), localRemoteException);
          e.post(new Runnable()
          {
            public void run()
            {
              paramSearchCallback.onError(paramString, paramBundle);
            }
          });
          return;
        }
      }
      paramString = new StringBuilder();
      paramString.append("search() called while not connected (state=");
      paramString.append(a(f));
      paramString.append(")");
      throw new IllegalStateException(paramString.toString());
    }
    
    public void a(@NonNull String paramString, Bundle paramBundle, @NonNull MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      MediaBrowserCompat.i localI2 = (MediaBrowserCompat.i)j.get(paramString);
      MediaBrowserCompat.i localI1 = localI2;
      if (localI2 == null)
      {
        localI1 = new MediaBrowserCompat.i();
        j.put(paramString, localI1);
      }
      if (paramBundle == null) {
        paramBundle = null;
      } else {
        paramBundle = new Bundle(paramBundle);
      }
      localI1.a(paramBundle, paramSubscriptionCallback);
      if (f()) {}
      try
      {
        h.a(paramString, b, paramBundle, i);
        return;
      }
      catch (RemoteException paramBundle)
      {
        for (;;) {}
      }
      paramBundle = new StringBuilder();
      paramBundle.append("addSubscription failed with RemoteException parentId=");
      paramBundle.append(paramString);
      Log.d("MediaBrowserCompat", paramBundle.toString());
    }
    
    public void a(@NonNull final String paramString, @NonNull final MediaBrowserCompat.ItemCallback paramItemCallback)
    {
      if (!TextUtils.isEmpty(paramString)) {
        if (paramItemCallback != null)
        {
          if (!f())
          {
            Log.i("MediaBrowserCompat", "Not connected, unable to retrieve the MediaItem.");
            e.post(new Runnable()
            {
              public void run()
              {
                paramItemCallback.onError(paramString);
              }
            });
            return;
          }
          localObject = new MediaBrowserCompat.ItemReceiver(paramString, paramItemCallback, e);
        }
      }
      try
      {
        h.a(paramString, (ResultReceiver)localObject, i);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;) {}
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Remote error getting media item: ");
      ((StringBuilder)localObject).append(paramString);
      Log.i("MediaBrowserCompat", ((StringBuilder)localObject).toString());
      e.post(new Runnable()
      {
        public void run()
        {
          paramItemCallback.onError(paramString);
        }
      });
      return;
      throw new IllegalArgumentException("cb is null");
      throw new IllegalArgumentException("mediaId is empty");
    }
    
    public void a(@NonNull String paramString, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      MediaBrowserCompat.i localI = (MediaBrowserCompat.i)j.get(paramString);
      if (localI == null) {
        return;
      }
      if (paramSubscriptionCallback == null) {}
      try
      {
        if (!f()) {
          break label170;
        }
        h.a(paramString, null, i);
      }
      catch (RemoteException localRemoteException)
      {
        Object localObject;
        List localList;
        int i1;
        for (;;) {}
      }
      localObject = localI.c();
      localList = localI.b();
      i1 = ((List)localObject).size() - 1;
      while (i1 >= 0)
      {
        if (((List)localObject).get(i1) == paramSubscriptionCallback)
        {
          if (f()) {
            h.a(paramString, b, i);
          }
          ((List)localObject).remove(i1);
          localList.remove(i1);
        }
        i1 -= 1;
        continue;
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("removeSubscription failed with RemoteException parentId=");
        ((StringBuilder)localObject).append(paramString);
        Log.d("MediaBrowserCompat", ((StringBuilder)localObject).toString());
      }
      label170:
      if ((localI.a()) || (paramSubscriptionCallback == null)) {
        j.remove(paramString);
      }
    }
    
    void b()
    {
      Log.d("MediaBrowserCompat", "MediaBrowserCompat...");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mServiceComponent=");
      localStringBuilder.append(b);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mCallback=");
      localStringBuilder.append(c);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mRootHints=");
      localStringBuilder.append(d);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mState=");
      localStringBuilder.append(a(f));
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mServiceConnection=");
      localStringBuilder.append(g);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mServiceBinderWrapper=");
      localStringBuilder.append(h);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mCallbacksMessenger=");
      localStringBuilder.append(i);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mRootId=");
      localStringBuilder.append(k);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("  mMediaSessionToken=");
      localStringBuilder.append(l);
      Log.d("MediaBrowserCompat", localStringBuilder.toString());
    }
    
    public void d()
    {
      if ((f != 0) && (f != 1))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("connect() called while neigther disconnecting nor disconnected (state=");
        localStringBuilder.append(a(f));
        localStringBuilder.append(")");
        throw new IllegalStateException(localStringBuilder.toString());
      }
      f = 2;
      e.post(new Runnable()
      {
        public void run()
        {
          if (f == 0) {
            return;
          }
          f = 2;
          if ((MediaBrowserCompat.a) && (g != null))
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("mServiceConnection should be null. Instead it is ");
            ((StringBuilder)localObject).append(g);
            throw new RuntimeException(((StringBuilder)localObject).toString());
          }
          if (h == null) {
            if (i == null)
            {
              localObject = new Intent("android.media.browse.MediaBrowserService");
              ((Intent)localObject).setComponent(b);
              g = new MediaBrowserCompat.f.a(MediaBrowserCompat.f.this);
            }
          }
          try
          {
            bool = a.bindService((Intent)localObject, g, 1);
          }
          catch (Exception localException)
          {
            boolean bool;
            for (;;) {}
          }
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Failed binding to service ");
          ((StringBuilder)localObject).append(b);
          Log.e("MediaBrowserCompat", ((StringBuilder)localObject).toString());
          bool = false;
          if (!bool)
          {
            a();
            c.onConnectionFailed();
          }
          if (MediaBrowserCompat.a)
          {
            Log.d("MediaBrowserCompat", "connect...");
            b();
          }
          return;
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("mCallbacksMessenger should be null. Instead it is ");
          ((StringBuilder)localObject).append(i);
          throw new RuntimeException(((StringBuilder)localObject).toString());
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("mServiceBinderWrapper should be null. Instead it is ");
          ((StringBuilder)localObject).append(h);
          throw new RuntimeException(((StringBuilder)localObject).toString());
        }
      });
    }
    
    public void e()
    {
      f = 0;
      e.post(new Runnable()
      {
        public void run()
        {
          if (MediaBrowserCompat.f.this.i != null) {}
          try
          {
            h.a(MediaBrowserCompat.f.this.i);
          }
          catch (RemoteException localRemoteException)
          {
            StringBuilder localStringBuilder;
            int i;
            for (;;) {}
          }
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("RemoteException during connect for ");
          localStringBuilder.append(b);
          Log.w("MediaBrowserCompat", localStringBuilder.toString());
          i = f;
          a();
          if (i != 0) {
            f = i;
          }
          if (MediaBrowserCompat.a)
          {
            Log.d("MediaBrowserCompat", "disconnect...");
            b();
          }
        }
      });
    }
    
    public boolean f()
    {
      return f == 3;
    }
    
    @NonNull
    public ComponentName g()
    {
      if (f()) {
        return b;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getServiceComponent() called while not connected (state=");
      localStringBuilder.append(f);
      localStringBuilder.append(")");
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    @NonNull
    public String h()
    {
      if (f()) {
        return k;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getRoot() called while not connected(state=");
      localStringBuilder.append(a(f));
      localStringBuilder.append(")");
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    @Nullable
    public Bundle i()
    {
      if (f()) {
        return m;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getExtras() called while not connected (state=");
      localStringBuilder.append(a(f));
      localStringBuilder.append(")");
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    @NonNull
    public MediaSessionCompat.Token j()
    {
      if (f()) {
        return l;
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getSessionToken() called while not connected(state=");
      localStringBuilder.append(f);
      localStringBuilder.append(")");
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    public Bundle k()
    {
      return n;
    }
    
    private class a
      implements ServiceConnection
    {
      a() {}
      
      private void a(Runnable paramRunnable)
      {
        if (Thread.currentThread() == e.getLooper().getThread())
        {
          paramRunnable.run();
          return;
        }
        e.post(paramRunnable);
      }
      
      boolean a(String paramString)
      {
        if ((g == this) && (f != 0) && (f != 1)) {
          return true;
        }
        if ((f != 0) && (f != 1))
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(paramString);
          localStringBuilder.append(" for ");
          localStringBuilder.append(b);
          localStringBuilder.append(" with mServiceConnection=");
          localStringBuilder.append(g);
          localStringBuilder.append(" this=");
          localStringBuilder.append(this);
          Log.i("MediaBrowserCompat", localStringBuilder.toString());
        }
        return false;
      }
      
      public void onServiceConnected(final ComponentName paramComponentName, final IBinder paramIBinder)
      {
        a(new Runnable()
        {
          public void run()
          {
            if (MediaBrowserCompat.a)
            {
              localStringBuilder = new StringBuilder();
              localStringBuilder.append("MediaServiceConnection.onServiceConnected name=");
              localStringBuilder.append(paramComponentName);
              localStringBuilder.append(" binder=");
              localStringBuilder.append(paramIBinder);
              Log.d("MediaBrowserCompat", localStringBuilder.toString());
              b();
            }
            if (!a("onServiceConnected")) {
              return;
            }
            h = new MediaBrowserCompat.h(paramIBinder, d);
            i = new Messenger(e);
            e.a(i);
            f = 2;
            try
            {
              if (MediaBrowserCompat.a)
              {
                Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                b();
              }
              h.a(a, i);
              return;
            }
            catch (RemoteException localRemoteException)
            {
              for (;;) {}
            }
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("RemoteException during connect for ");
            localStringBuilder.append(b);
            Log.w("MediaBrowserCompat", localStringBuilder.toString());
            if (MediaBrowserCompat.a)
            {
              Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
              b();
            }
          }
        });
      }
      
      public void onServiceDisconnected(final ComponentName paramComponentName)
      {
        a(new Runnable()
        {
          public void run()
          {
            if (MediaBrowserCompat.a)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("MediaServiceConnection.onServiceDisconnected name=");
              localStringBuilder.append(paramComponentName);
              localStringBuilder.append(" this=");
              localStringBuilder.append(this);
              localStringBuilder.append(" mServiceConnection=");
              localStringBuilder.append(g);
              Log.d("MediaBrowserCompat", localStringBuilder.toString());
              b();
            }
            if (!a("onServiceDisconnected")) {
              return;
            }
            h = null;
            i = null;
            e.a(null);
            f = 4;
            c.onConnectionSuspended();
          }
        });
      }
    }
  }
  
  static abstract interface g
  {
    public abstract void a(Messenger paramMessenger);
    
    public abstract void a(Messenger paramMessenger, String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle);
    
    public abstract void a(Messenger paramMessenger, String paramString, List paramList, Bundle paramBundle1, Bundle paramBundle2);
  }
  
  private static class h
  {
    private Messenger a;
    private Bundle b;
    
    public h(IBinder paramIBinder, Bundle paramBundle)
    {
      a = new Messenger(paramIBinder);
      b = paramBundle;
    }
    
    private void a(int paramInt, Bundle paramBundle, Messenger paramMessenger)
      throws RemoteException
    {
      Message localMessage = Message.obtain();
      what = paramInt;
      arg1 = 1;
      localMessage.setData(paramBundle);
      replyTo = paramMessenger;
      a.send(localMessage);
    }
    
    void a(Context paramContext, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_package_name", paramContext.getPackageName());
      localBundle.putBundle("data_root_hints", b);
      a(1, localBundle, paramMessenger);
    }
    
    void a(Messenger paramMessenger)
      throws RemoteException
    {
      a(2, null, paramMessenger);
    }
    
    void a(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_search_query", paramString);
      localBundle.putBundle("data_search_extras", paramBundle);
      localBundle.putParcelable("data_result_receiver", paramResultReceiver);
      a(8, localBundle, paramMessenger);
    }
    
    void a(String paramString, IBinder paramIBinder, Bundle paramBundle, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_media_item_id", paramString);
      BundleCompat.putBinder(localBundle, "data_callback_token", paramIBinder);
      localBundle.putBundle("data_options", paramBundle);
      a(3, localBundle, paramMessenger);
    }
    
    void a(String paramString, IBinder paramIBinder, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_media_item_id", paramString);
      BundleCompat.putBinder(localBundle, "data_callback_token", paramIBinder);
      a(4, localBundle, paramMessenger);
    }
    
    void a(String paramString, ResultReceiver paramResultReceiver, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_media_item_id", paramString);
      localBundle.putParcelable("data_result_receiver", paramResultReceiver);
      a(5, localBundle, paramMessenger);
    }
    
    void b(Context paramContext, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_package_name", paramContext.getPackageName());
      localBundle.putBundle("data_root_hints", b);
      a(6, localBundle, paramMessenger);
    }
    
    void b(Messenger paramMessenger)
      throws RemoteException
    {
      a(7, null, paramMessenger);
    }
    
    void b(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver, Messenger paramMessenger)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_custom_action", paramString);
      localBundle.putBundle("data_custom_action_extras", paramBundle);
      localBundle.putParcelable("data_result_receiver", paramResultReceiver);
      a(9, localBundle, paramMessenger);
    }
  }
  
  private static class i
  {
    private final List<MediaBrowserCompat.SubscriptionCallback> a = new ArrayList();
    private final List<Bundle> b = new ArrayList();
    
    public i() {}
    
    public MediaBrowserCompat.SubscriptionCallback a(Bundle paramBundle)
    {
      int i = 0;
      while (i < b.size())
      {
        if (MediaBrowserCompatUtils.areSameOptions((Bundle)b.get(i), paramBundle)) {
          return (MediaBrowserCompat.SubscriptionCallback)a.get(i);
        }
        i += 1;
      }
      return null;
    }
    
    public void a(Bundle paramBundle, MediaBrowserCompat.SubscriptionCallback paramSubscriptionCallback)
    {
      int i = 0;
      while (i < b.size())
      {
        if (MediaBrowserCompatUtils.areSameOptions((Bundle)b.get(i), paramBundle))
        {
          a.set(i, paramSubscriptionCallback);
          return;
        }
        i += 1;
      }
      a.add(paramSubscriptionCallback);
      b.add(paramBundle);
    }
    
    public boolean a()
    {
      return a.isEmpty();
    }
    
    public List<Bundle> b()
    {
      return b;
    }
    
    public List<MediaBrowserCompat.SubscriptionCallback> c()
    {
      return a;
    }
  }
}
