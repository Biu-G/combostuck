package android.support.v4.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.Pair;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class MediaBrowserServiceCompat
  extends Service
{
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String KEY_MEDIA_ITEM = "media_item";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final String KEY_SEARCH_RESULTS = "search_results";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final int RESULT_ERROR = -1;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final int RESULT_OK = 0;
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public static final int RESULT_PROGRESS_UPDATE = 1;
  public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
  static final boolean a = Log.isLoggable("MBServiceCompat", 3);
  final ArrayMap<IBinder, a> b = new ArrayMap();
  a c;
  final k d = new k();
  MediaSessionCompat.Token e;
  private b f;
  
  public MediaBrowserServiceCompat() {}
  
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
  
  void a(String paramString, Bundle paramBundle, a paramA, final ResultReceiver paramResultReceiver)
  {
    paramResultReceiver = new Result(paramString)
    {
      void a(List<MediaBrowserCompat.MediaItem> paramAnonymousList)
      {
        if (((b() & 0x4) == 0) && (paramAnonymousList != null))
        {
          Bundle localBundle = new Bundle();
          localBundle.putParcelableArray("search_results", (Parcelable[])paramAnonymousList.toArray(new MediaBrowserCompat.MediaItem[0]));
          paramResultReceiver.send(0, localBundle);
          return;
        }
        paramResultReceiver.send(-1, null);
      }
    };
    c = paramA;
    onSearch(paramString, paramBundle, paramResultReceiver);
    c = null;
    if (paramResultReceiver.a()) {
      return;
    }
    paramBundle = new StringBuilder();
    paramBundle.append("onSearch must call detach() or sendResult() before returning for query=");
    paramBundle.append(paramString);
    throw new IllegalStateException(paramBundle.toString());
  }
  
  void a(final String paramString, final a paramA, final Bundle paramBundle1, final Bundle paramBundle2)
  {
    paramBundle2 = new Result(paramString)
    {
      void a(List<MediaBrowserCompat.MediaItem> paramAnonymousList)
      {
        if (b.get(paramAf.a()) != paramA)
        {
          if (MediaBrowserServiceCompat.a)
          {
            paramAnonymousList = new StringBuilder();
            paramAnonymousList.append("Not sending onLoadChildren result for connection that has been disconnected. pkg=");
            paramAnonymousList.append(paramAa);
            paramAnonymousList.append(" id=");
            paramAnonymousList.append(paramString);
            Log.d("MBServiceCompat", paramAnonymousList.toString());
          }
          return;
        }
        Object localObject = paramAnonymousList;
        if ((b() & 0x1) != 0) {
          localObject = a(paramAnonymousList, paramBundle1);
        }
        try
        {
          paramAf.a(paramString, (List)localObject, paramBundle1, paramBundle2);
          return;
        }
        catch (RemoteException paramAnonymousList)
        {
          for (;;) {}
        }
        paramAnonymousList = new StringBuilder();
        paramAnonymousList.append("Calling onLoadChildren() failed for id=");
        paramAnonymousList.append(paramString);
        paramAnonymousList.append(" package=");
        paramAnonymousList.append(paramAa);
        Log.w("MBServiceCompat", paramAnonymousList.toString());
      }
    };
    c = paramA;
    if (paramBundle1 == null) {
      onLoadChildren(paramString, paramBundle2);
    } else {
      onLoadChildren(paramString, paramBundle2, paramBundle1);
    }
    c = null;
    if (paramBundle2.a()) {
      return;
    }
    paramBundle1 = new StringBuilder();
    paramBundle1.append("onLoadChildren must call detach() or sendResult() before returning for package=");
    paramBundle1.append(a);
    paramBundle1.append(" id=");
    paramBundle1.append(paramString);
    throw new IllegalStateException(paramBundle1.toString());
  }
  
  void a(String paramString, a paramA, IBinder paramIBinder, Bundle paramBundle)
  {
    Object localObject2 = (List)g.get(paramString);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new ArrayList();
    }
    localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Pair localPair = (Pair)((Iterator)localObject2).next();
      if ((paramIBinder == first) && (MediaBrowserCompatUtils.areSameOptions(paramBundle, (Bundle)second))) {
        return;
      }
    }
    ((List)localObject1).add(new Pair(paramIBinder, paramBundle));
    g.put(paramString, localObject1);
    a(paramString, paramA, paramBundle, null);
    c = paramA;
    onSubscribe(paramString, paramBundle);
    c = null;
  }
  
  void a(String paramString, a paramA, final ResultReceiver paramResultReceiver)
  {
    paramResultReceiver = new Result(paramString)
    {
      void a(MediaBrowserCompat.MediaItem paramAnonymousMediaItem)
      {
        if ((b() & 0x2) != 0)
        {
          paramResultReceiver.send(-1, null);
          return;
        }
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("media_item", paramAnonymousMediaItem);
        paramResultReceiver.send(0, localBundle);
      }
    };
    c = paramA;
    onLoadItem(paramString, paramResultReceiver);
    c = null;
    if (paramResultReceiver.a()) {
      return;
    }
    paramA = new StringBuilder();
    paramA.append("onLoadItem must call detach() or sendResult() before returning for id=");
    paramA.append(paramString);
    throw new IllegalStateException(paramA.toString());
  }
  
  boolean a(String paramString, int paramInt)
  {
    if (paramString == null) {
      return false;
    }
    String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
    int i = arrayOfString.length;
    paramInt = 0;
    while (paramInt < i)
    {
      if (arrayOfString[paramInt].equals(paramString)) {
        return true;
      }
      paramInt += 1;
    }
    return false;
  }
  
  boolean a(String paramString, a paramA, IBinder paramIBinder)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1 = false;
    if (paramIBinder == null) {
      try
      {
        paramIBinder = g.remove(paramString);
        if (paramIBinder != null) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }
        c = paramA;
        onUnsubscribe(paramString);
        c = null;
        return bool1;
      }
      finally
      {
        break label174;
      }
    }
    List localList = (List)g.get(paramString);
    bool2 = bool3;
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext()) {
        if (paramIBinder == nextfirst)
        {
          localIterator.remove();
          bool1 = true;
        }
      }
      bool2 = bool1;
      if (localList.size() == 0)
      {
        g.remove(paramString);
        bool2 = bool1;
      }
    }
    c = paramA;
    onUnsubscribe(paramString);
    c = null;
    return bool2;
    label174:
    c = paramA;
    onUnsubscribe(paramString);
    c = null;
    throw paramIBinder;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  public void attachToBaseContext(Context paramContext)
  {
    attachBaseContext(paramContext);
  }
  
  void b(String paramString, Bundle paramBundle, a paramA, final ResultReceiver paramResultReceiver)
  {
    paramResultReceiver = new Result(paramString)
    {
      void a(Bundle paramAnonymousBundle)
      {
        paramResultReceiver.send(0, paramAnonymousBundle);
      }
      
      void b(Bundle paramAnonymousBundle)
      {
        paramResultReceiver.send(1, paramAnonymousBundle);
      }
      
      void c(Bundle paramAnonymousBundle)
      {
        paramResultReceiver.send(-1, paramAnonymousBundle);
      }
    };
    c = paramA;
    onCustomAction(paramString, paramBundle, paramResultReceiver);
    c = null;
    if (paramResultReceiver.a()) {
      return;
    }
    paramA = new StringBuilder();
    paramA.append("onCustomAction must call detach() or sendResult() or sendError() before returning for action=");
    paramA.append(paramString);
    paramA.append(" extras=");
    paramA.append(paramBundle);
    throw new IllegalStateException(paramA.toString());
  }
  
  public void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public final Bundle getBrowserRootHints()
  {
    return f.b();
  }
  
  @NonNull
  public final MediaSessionManager.RemoteUserInfo getCurrentBrowserInfo()
  {
    return f.c();
  }
  
  @Nullable
  public MediaSessionCompat.Token getSessionToken()
  {
    return e;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void notifyChildrenChanged(@NonNull MediaSessionManager.RemoteUserInfo paramRemoteUserInfo, @NonNull String paramString, @NonNull Bundle paramBundle)
  {
    if (paramRemoteUserInfo != null)
    {
      if (paramString != null)
      {
        if (paramBundle != null)
        {
          f.a(paramRemoteUserInfo, paramString, paramBundle);
          return;
        }
        throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
      }
      throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
    }
    throw new IllegalArgumentException("remoteUserInfo cannot be null in notifyChildrenChanged");
  }
  
  public void notifyChildrenChanged(@NonNull String paramString)
  {
    if (paramString != null)
    {
      f.a(paramString, null);
      return;
    }
    throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
  }
  
  public void notifyChildrenChanged(@NonNull String paramString, @NonNull Bundle paramBundle)
  {
    if (paramString != null)
    {
      if (paramBundle != null)
      {
        f.a(paramString, paramBundle);
        return;
      }
      throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
    }
    throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return f.a(paramIntent);
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (Build.VERSION.SDK_INT >= 28) {
      f = new f();
    } else if (Build.VERSION.SDK_INT >= 26) {
      f = new e();
    } else if (Build.VERSION.SDK_INT >= 23) {
      f = new d();
    } else if (Build.VERSION.SDK_INT >= 21) {
      f = new c();
    } else {
      f = new g();
    }
    f.a();
  }
  
  public void onCustomAction(@NonNull String paramString, Bundle paramBundle, @NonNull Result<Bundle> paramResult)
  {
    paramResult.sendError(null);
  }
  
  @Nullable
  public abstract BrowserRoot onGetRoot(@NonNull String paramString, int paramInt, @Nullable Bundle paramBundle);
  
  public abstract void onLoadChildren(@NonNull String paramString, @NonNull Result<List<MediaBrowserCompat.MediaItem>> paramResult);
  
  public void onLoadChildren(@NonNull String paramString, @NonNull Result<List<MediaBrowserCompat.MediaItem>> paramResult, @NonNull Bundle paramBundle)
  {
    paramResult.a(1);
    onLoadChildren(paramString, paramResult);
  }
  
  public void onLoadItem(String paramString, @NonNull Result<MediaBrowserCompat.MediaItem> paramResult)
  {
    paramResult.a(2);
    paramResult.sendResult(null);
  }
  
  public void onSearch(@NonNull String paramString, Bundle paramBundle, @NonNull Result<List<MediaBrowserCompat.MediaItem>> paramResult)
  {
    paramResult.a(4);
    paramResult.sendResult(null);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void onSubscribe(String paramString, Bundle paramBundle) {}
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void onUnsubscribe(String paramString) {}
  
  public void setSessionToken(MediaSessionCompat.Token paramToken)
  {
    if (paramToken != null)
    {
      if (e == null)
      {
        e = paramToken;
        f.a(paramToken);
        return;
      }
      throw new IllegalStateException("The session token has already been set.");
    }
    throw new IllegalArgumentException("Session token may not be null.");
  }
  
  public static final class BrowserRoot
  {
    public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
    public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
    public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
    @Deprecated
    public static final String EXTRA_SUGGESTION_KEYWORDS = "android.service.media.extra.SUGGESTION_KEYWORDS";
    private final String a;
    private final Bundle b;
    
    public BrowserRoot(@NonNull String paramString, @Nullable Bundle paramBundle)
    {
      if (paramString != null)
      {
        a = paramString;
        b = paramBundle;
        return;
      }
      throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
    }
    
    public Bundle getExtras()
    {
      return b;
    }
    
    public String getRootId()
    {
      return a;
    }
  }
  
  public static class Result<T>
  {
    private final Object a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private int f;
    
    Result(Object paramObject)
    {
      a = paramObject;
    }
    
    private void a(Bundle paramBundle)
    {
      if (paramBundle == null) {
        return;
      }
      if (paramBundle.containsKey("android.media.browse.extra.DOWNLOAD_PROGRESS"))
      {
        float f1 = paramBundle.getFloat("android.media.browse.extra.DOWNLOAD_PROGRESS");
        if ((f1 >= -1.0E-5F) && (f1 <= 1.00001F)) {
          return;
        }
        throw new IllegalArgumentException("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0].");
      }
    }
    
    void a(int paramInt)
    {
      f = paramInt;
    }
    
    void a(T paramT) {}
    
    boolean a()
    {
      return (b) || (c) || (e);
    }
    
    int b()
    {
      return f;
    }
    
    void b(Bundle paramBundle)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("It is not supported to send an interim update for ");
      paramBundle.append(a);
      throw new UnsupportedOperationException(paramBundle.toString());
    }
    
    void c(Bundle paramBundle)
    {
      paramBundle = new StringBuilder();
      paramBundle.append("It is not supported to send an error for ");
      paramBundle.append(a);
      throw new UnsupportedOperationException(paramBundle.toString());
    }
    
    public void detach()
    {
      if (!b)
      {
        if (!c)
        {
          if (!e)
          {
            b = true;
            return;
          }
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("detach() called when sendError() had already been called for: ");
          localStringBuilder.append(a);
          throw new IllegalStateException(localStringBuilder.toString());
        }
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("detach() called when sendResult() had already been called for: ");
        localStringBuilder.append(a);
        throw new IllegalStateException(localStringBuilder.toString());
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("detach() called when detach() had already been called for: ");
      localStringBuilder.append(a);
      throw new IllegalStateException(localStringBuilder.toString());
    }
    
    public void sendError(Bundle paramBundle)
    {
      if ((!c) && (!e))
      {
        e = true;
        c(paramBundle);
        return;
      }
      paramBundle = new StringBuilder();
      paramBundle.append("sendError() called when either sendResult() or sendError() had already been called for: ");
      paramBundle.append(a);
      throw new IllegalStateException(paramBundle.toString());
    }
    
    public void sendProgressUpdate(Bundle paramBundle)
    {
      if ((!c) && (!e))
      {
        a(paramBundle);
        d = true;
        b(paramBundle);
        return;
      }
      paramBundle = new StringBuilder();
      paramBundle.append("sendProgressUpdate() called when either sendResult() or sendError() had already been called for: ");
      paramBundle.append(a);
      throw new IllegalStateException(paramBundle.toString());
    }
    
    public void sendResult(T paramT)
    {
      if ((!c) && (!e))
      {
        c = true;
        a(paramT);
        return;
      }
      paramT = new StringBuilder();
      paramT.append("sendResult() called when either sendResult() or sendError() had already been called for: ");
      paramT.append(a);
      throw new IllegalStateException(paramT.toString());
    }
  }
  
  private class a
    implements IBinder.DeathRecipient
  {
    public final String a;
    public final int b;
    public final int c;
    public final MediaSessionManager.RemoteUserInfo d;
    public final Bundle e;
    public final MediaBrowserServiceCompat.i f;
    public final HashMap<String, List<Pair<IBinder, Bundle>>> g = new HashMap();
    public MediaBrowserServiceCompat.BrowserRoot h;
    
    a(String paramString, int paramInt1, int paramInt2, Bundle paramBundle, MediaBrowserServiceCompat.i paramI)
    {
      a = paramString;
      b = paramInt1;
      c = paramInt2;
      d = new MediaSessionManager.RemoteUserInfo(paramString, paramInt1, paramInt2);
      e = paramBundle;
      f = paramI;
    }
    
    public void binderDied()
    {
      d.post(new Runnable()
      {
        public void run()
        {
          b.remove(f.a());
        }
      });
    }
  }
  
  static abstract interface b
  {
    public abstract IBinder a(Intent paramIntent);
    
    public abstract void a();
    
    public abstract void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo, String paramString, Bundle paramBundle);
    
    public abstract void a(MediaSessionCompat.Token paramToken);
    
    public abstract void a(String paramString, Bundle paramBundle);
    
    public abstract Bundle b();
    
    public abstract MediaSessionManager.RemoteUserInfo c();
  }
  
  @RequiresApi(21)
  class c
    implements MediaBrowserServiceCompat.b, MediaBrowserServiceCompatApi21.ServiceCompatProxy
  {
    final List<Bundle> a = new ArrayList();
    Object b;
    Messenger c;
    
    c() {}
    
    public IBinder a(Intent paramIntent)
    {
      return MediaBrowserServiceCompatApi21.a(b, paramIntent);
    }
    
    public void a()
    {
      b = MediaBrowserServiceCompatApi21.a(MediaBrowserServiceCompat.this, this);
      MediaBrowserServiceCompatApi21.a(b);
    }
    
    void a(MediaBrowserServiceCompat.a paramA, String paramString, Bundle paramBundle)
    {
      Object localObject = (List)g.get(paramString);
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Pair localPair = (Pair)((Iterator)localObject).next();
          if (MediaBrowserCompatUtils.hasDuplicatedItems(paramBundle, (Bundle)second)) {
            a(paramString, paramA, (Bundle)second, paramBundle);
          }
        }
      }
    }
    
    public void a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo, String paramString, Bundle paramBundle)
    {
      b(paramRemoteUserInfo, paramString, paramBundle);
    }
    
    public void a(final MediaSessionCompat.Token paramToken)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          if (!a.isEmpty())
          {
            IMediaSession localIMediaSession = paramToken.getExtraBinder();
            if (localIMediaSession != null)
            {
              Iterator localIterator = a.iterator();
              while (localIterator.hasNext()) {
                BundleCompat.putBinder((Bundle)localIterator.next(), "extra_session_binder", localIMediaSession.asBinder());
              }
            }
            a.clear();
          }
          MediaBrowserServiceCompatApi21.a(b, paramToken.getToken());
        }
      });
    }
    
    public void a(String paramString, Bundle paramBundle)
    {
      b(paramString, paramBundle);
      c(paramString, paramBundle);
    }
    
    public Bundle b()
    {
      if (c == null) {
        return null;
      }
      if (c != null)
      {
        if (c.e == null) {
          return null;
        }
        return new Bundle(c.e);
      }
      throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
    }
    
    void b(final MediaSessionManager.RemoteUserInfo paramRemoteUserInfo, final String paramString, final Bundle paramBundle)
    {
      d.post(new Runnable()
      {
        public void run()
        {
          int i = 0;
          while (i < b.size())
          {
            MediaBrowserServiceCompat.a localA = (MediaBrowserServiceCompat.a)b.valueAt(i);
            if (d.equals(paramRemoteUserInfo)) {
              a(localA, paramString, paramBundle);
            }
            i += 1;
          }
        }
      });
    }
    
    void b(String paramString, Bundle paramBundle)
    {
      MediaBrowserServiceCompatApi21.a(b, paramString);
    }
    
    public MediaSessionManager.RemoteUserInfo c()
    {
      if (c != null) {
        return c.d;
      }
      throw new IllegalStateException("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
    }
    
    void c(final String paramString, final Bundle paramBundle)
    {
      d.post(new Runnable()
      {
        public void run()
        {
          Iterator localIterator = b.keySet().iterator();
          while (localIterator.hasNext())
          {
            Object localObject = (IBinder)localIterator.next();
            localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
            a((MediaBrowserServiceCompat.a)localObject, paramString, paramBundle);
          }
        }
      });
    }
    
    public MediaBrowserServiceCompatApi21.a onGetRoot(String paramString, int paramInt, Bundle paramBundle)
    {
      Object localObject;
      if ((paramBundle != null) && (paramBundle.getInt("extra_client_version", 0) != 0))
      {
        paramBundle.remove("extra_client_version");
        c = new Messenger(d);
        Bundle localBundle = new Bundle();
        localBundle.putInt("extra_service_version", 2);
        BundleCompat.putBinder(localBundle, "extra_messenger", c.getBinder());
        if (e != null)
        {
          localObject = e.getExtraBinder();
          if (localObject == null) {
            localObject = null;
          } else {
            localObject = ((IMediaSession)localObject).asBinder();
          }
          BundleCompat.putBinder(localBundle, "extra_session_binder", (IBinder)localObject);
          localObject = localBundle;
        }
        else
        {
          a.add(localBundle);
          localObject = localBundle;
        }
      }
      else
      {
        localObject = null;
      }
      c = new MediaBrowserServiceCompat.a(MediaBrowserServiceCompat.this, paramString, -1, paramInt, paramBundle, null);
      paramBundle = onGetRoot(paramString, paramInt, paramBundle);
      c = null;
      if (paramBundle == null) {
        return null;
      }
      if (localObject == null)
      {
        paramString = paramBundle.getExtras();
      }
      else
      {
        paramString = (String)localObject;
        if (paramBundle.getExtras() != null)
        {
          ((Bundle)localObject).putAll(paramBundle.getExtras());
          paramString = (String)localObject;
        }
      }
      return new MediaBrowserServiceCompatApi21.a(paramBundle.getRootId(), paramString);
    }
    
    public void onLoadChildren(String paramString, final MediaBrowserServiceCompatApi21.c<List<Parcel>> paramC)
    {
      paramC = new MediaBrowserServiceCompat.Result(paramString)
      {
        void a(List<MediaBrowserCompat.MediaItem> paramAnonymousList)
        {
          if (paramAnonymousList != null)
          {
            ArrayList localArrayList = new ArrayList();
            Iterator localIterator = paramAnonymousList.iterator();
            for (;;)
            {
              paramAnonymousList = localArrayList;
              if (!localIterator.hasNext()) {
                break;
              }
              paramAnonymousList = (MediaBrowserCompat.MediaItem)localIterator.next();
              Parcel localParcel = Parcel.obtain();
              paramAnonymousList.writeToParcel(localParcel, 0);
              localArrayList.add(localParcel);
            }
          }
          paramAnonymousList = null;
          paramC.a(paramAnonymousList);
        }
        
        public void detach()
        {
          paramC.a();
        }
      };
      onLoadChildren(paramString, paramC);
    }
  }
  
  @RequiresApi(23)
  class d
    extends MediaBrowserServiceCompat.c
    implements MediaBrowserServiceCompatApi23.ServiceCompatProxy
  {
    d()
    {
      super();
    }
    
    public void a()
    {
      b = MediaBrowserServiceCompatApi23.a(MediaBrowserServiceCompat.this, this);
      MediaBrowserServiceCompatApi21.a(b);
    }
    
    public void onLoadItem(String paramString, final MediaBrowserServiceCompatApi21.c<Parcel> paramC)
    {
      paramC = new MediaBrowserServiceCompat.Result(paramString)
      {
        void a(MediaBrowserCompat.MediaItem paramAnonymousMediaItem)
        {
          if (paramAnonymousMediaItem == null)
          {
            paramC.a(null);
            return;
          }
          Parcel localParcel = Parcel.obtain();
          paramAnonymousMediaItem.writeToParcel(localParcel, 0);
          paramC.a(localParcel);
        }
        
        public void detach()
        {
          paramC.a();
        }
      };
      onLoadItem(paramString, paramC);
    }
  }
  
  @RequiresApi(26)
  class e
    extends MediaBrowserServiceCompat.d
    implements MediaBrowserServiceCompatApi26.ServiceCompatProxy
  {
    e()
    {
      super();
    }
    
    public void a()
    {
      b = MediaBrowserServiceCompatApi26.a(MediaBrowserServiceCompat.this, this);
      MediaBrowserServiceCompatApi21.a(b);
    }
    
    public Bundle b()
    {
      if (c != null)
      {
        if (c.e == null) {
          return null;
        }
        return new Bundle(c.e);
      }
      return MediaBrowserServiceCompatApi26.a(b);
    }
    
    void b(String paramString, Bundle paramBundle)
    {
      if (paramBundle != null)
      {
        MediaBrowserServiceCompatApi26.a(b, paramString, paramBundle);
        return;
      }
      super.b(paramString, paramBundle);
    }
    
    public void onLoadChildren(String paramString, final MediaBrowserServiceCompatApi26.b paramB, Bundle paramBundle)
    {
      paramB = new MediaBrowserServiceCompat.Result(paramString)
      {
        void a(List<MediaBrowserCompat.MediaItem> paramAnonymousList)
        {
          if (paramAnonymousList != null)
          {
            ArrayList localArrayList = new ArrayList();
            Iterator localIterator = paramAnonymousList.iterator();
            for (;;)
            {
              paramAnonymousList = localArrayList;
              if (!localIterator.hasNext()) {
                break;
              }
              paramAnonymousList = (MediaBrowserCompat.MediaItem)localIterator.next();
              Parcel localParcel = Parcel.obtain();
              paramAnonymousList.writeToParcel(localParcel, 0);
              localArrayList.add(localParcel);
            }
          }
          paramAnonymousList = null;
          paramB.a(paramAnonymousList, b());
        }
        
        public void detach()
        {
          paramB.a();
        }
      };
      onLoadChildren(paramString, paramB, paramBundle);
    }
  }
  
  @RequiresApi(28)
  class f
    extends MediaBrowserServiceCompat.e
  {
    f()
    {
      super();
    }
    
    public MediaSessionManager.RemoteUserInfo c()
    {
      if (c != null) {
        return c.d;
      }
      return new MediaSessionManager.RemoteUserInfo(((MediaBrowserService)b).getCurrentBrowserInfo());
    }
  }
  
  class g
    implements MediaBrowserServiceCompat.b
  {
    private Messenger b;
    
    g() {}
    
    public IBinder a(Intent paramIntent)
    {
      if ("android.media.browse.MediaBrowserService".equals(paramIntent.getAction())) {
        return b.getBinder();
      }
      return null;
    }
    
    public void a()
    {
      b = new Messenger(d);
    }
    
    void a(MediaBrowserServiceCompat.a paramA, String paramString, Bundle paramBundle)
    {
      Object localObject = (List)g.get(paramString);
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Pair localPair = (Pair)((Iterator)localObject).next();
          if (MediaBrowserCompatUtils.hasDuplicatedItems(paramBundle, (Bundle)second)) {
            a(paramString, paramA, (Bundle)second, paramBundle);
          }
        }
      }
    }
    
    public void a(@NonNull final MediaSessionManager.RemoteUserInfo paramRemoteUserInfo, @NonNull final String paramString, final Bundle paramBundle)
    {
      d.post(new Runnable()
      {
        public void run()
        {
          int i = 0;
          while (i < b.size())
          {
            MediaBrowserServiceCompat.a localA = (MediaBrowserServiceCompat.a)b.valueAt(i);
            if (d.equals(paramRemoteUserInfo))
            {
              a(localA, paramString, paramBundle);
              return;
            }
            i += 1;
          }
        }
      });
    }
    
    public void a(final MediaSessionCompat.Token paramToken)
    {
      d.post(new Runnable()
      {
        public void run()
        {
          Iterator localIterator = b.values().iterator();
          while (localIterator.hasNext())
          {
            MediaBrowserServiceCompat.a localA = (MediaBrowserServiceCompat.a)localIterator.next();
            try
            {
              f.a(h.getRootId(), paramToken, h.getExtras());
            }
            catch (RemoteException localRemoteException)
            {
              StringBuilder localStringBuilder;
              for (;;) {}
            }
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("Connection for ");
            localStringBuilder.append(a);
            localStringBuilder.append(" is no longer valid.");
            Log.w("MBServiceCompat", localStringBuilder.toString());
            localIterator.remove();
          }
        }
      });
    }
    
    public void a(@NonNull final String paramString, final Bundle paramBundle)
    {
      d.post(new Runnable()
      {
        public void run()
        {
          Iterator localIterator = b.keySet().iterator();
          while (localIterator.hasNext())
          {
            Object localObject = (IBinder)localIterator.next();
            localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
            a((MediaBrowserServiceCompat.a)localObject, paramString, paramBundle);
          }
        }
      });
    }
    
    public Bundle b()
    {
      if (c != null)
      {
        if (c.e == null) {
          return null;
        }
        return new Bundle(c.e);
      }
      throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
    }
    
    public MediaSessionManager.RemoteUserInfo c()
    {
      if (c != null) {
        return c.d;
      }
      throw new IllegalStateException("This should be called inside of onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
    }
  }
  
  private class h
  {
    h() {}
    
    public void a(final MediaBrowserServiceCompat.i paramI)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          Object localObject = paramI.a();
          localObject = (MediaBrowserServiceCompat.a)b.remove(localObject);
          if (localObject != null) {
            f.a().unlinkToDeath((IBinder.DeathRecipient)localObject, 0);
          }
        }
      });
    }
    
    public void a(final MediaBrowserServiceCompat.i paramI, final String paramString, final int paramInt1, final int paramInt2, final Bundle paramBundle)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          IBinder localIBinder = paramI.a();
          b.remove(localIBinder);
          MediaBrowserServiceCompat.a localA = new MediaBrowserServiceCompat.a(MediaBrowserServiceCompat.this, paramString, paramInt1, paramInt2, paramBundle, paramI);
          b.put(localIBinder, localA);
          try
          {
            localIBinder.linkToDeath(localA, 0);
            return;
          }
          catch (RemoteException localRemoteException)
          {
            for (;;) {}
          }
          Log.w("MBServiceCompat", "IBinder is already dead.");
        }
      });
    }
    
    public void a(final String paramString, final int paramInt1, final int paramInt2, final Bundle paramBundle, final MediaBrowserServiceCompat.i paramI)
    {
      if (a(paramString, paramInt2))
      {
        d.a(new Runnable()
        {
          public void run()
          {
            Object localObject1 = paramI.a();
            b.remove(localObject1);
            Object localObject2 = new MediaBrowserServiceCompat.a(MediaBrowserServiceCompat.this, paramString, paramInt1, paramInt2, paramBundle, paramI);
            c = ((MediaBrowserServiceCompat.a)localObject2);
            h = onGetRoot(paramString, paramInt2, paramBundle);
            c = null;
            if (h == null)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("No root for client ");
              ((StringBuilder)localObject1).append(paramString);
              ((StringBuilder)localObject1).append(" from service ");
              ((StringBuilder)localObject1).append(getClass().getName());
              Log.i("MBServiceCompat", ((StringBuilder)localObject1).toString());
            }
            try
            {
              paramI.b();
              return;
            }
            catch (RemoteException localRemoteException1)
            {
              for (;;) {}
            }
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Calling onConnectFailed() failed. Ignoring. pkg=");
            ((StringBuilder)localObject1).append(paramString);
            Log.w("MBServiceCompat", ((StringBuilder)localObject1).toString());
            return;
            try
            {
              b.put(localObject1, localObject2);
              ((IBinder)localObject1).linkToDeath((IBinder.DeathRecipient)localObject2, 0);
              if (e == null) {
                break label333;
              }
              paramI.a(h.getRootId(), e, h.getExtras());
              return;
            }
            catch (RemoteException localRemoteException2)
            {
              for (;;) {}
            }
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Calling onConnect() failed. Dropping client. pkg=");
            ((StringBuilder)localObject2).append(paramString);
            Log.w("MBServiceCompat", ((StringBuilder)localObject2).toString());
            b.remove(localObject1);
            label333:
          }
        });
        return;
      }
      paramBundle = new StringBuilder();
      paramBundle.append("Package/uid mismatch: uid=");
      paramBundle.append(paramInt2);
      paramBundle.append(" package=");
      paramBundle.append(paramString);
      throw new IllegalArgumentException(paramBundle.toString());
    }
    
    public void a(final String paramString, final Bundle paramBundle, final ResultReceiver paramResultReceiver, final MediaBrowserServiceCompat.i paramI)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        if (paramResultReceiver == null) {
          return;
        }
        d.a(new Runnable()
        {
          public void run()
          {
            Object localObject = paramI.a();
            localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
            if (localObject == null)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("search for callback that isn't registered query=");
              ((StringBuilder)localObject).append(paramString);
              Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
              return;
            }
            a(paramString, paramBundle, (MediaBrowserServiceCompat.a)localObject, paramResultReceiver);
          }
        });
        return;
      }
    }
    
    public void a(final String paramString, final IBinder paramIBinder, final Bundle paramBundle, final MediaBrowserServiceCompat.i paramI)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          Object localObject = paramI.a();
          localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
          if (localObject == null)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("addSubscription for callback that isn't registered id=");
            ((StringBuilder)localObject).append(paramString);
            Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
            return;
          }
          a(paramString, (MediaBrowserServiceCompat.a)localObject, paramIBinder, paramBundle);
        }
      });
    }
    
    public void a(final String paramString, final IBinder paramIBinder, final MediaBrowserServiceCompat.i paramI)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          Object localObject = paramI.a();
          localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
          if (localObject == null)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("removeSubscription for callback that isn't registered id=");
            ((StringBuilder)localObject).append(paramString);
            Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
            return;
          }
          if (!a(paramString, (MediaBrowserServiceCompat.a)localObject, paramIBinder))
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("removeSubscription called for ");
            ((StringBuilder)localObject).append(paramString);
            ((StringBuilder)localObject).append(" which is not subscribed");
            Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
          }
        }
      });
    }
    
    public void a(final String paramString, final ResultReceiver paramResultReceiver, final MediaBrowserServiceCompat.i paramI)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        if (paramResultReceiver == null) {
          return;
        }
        d.a(new Runnable()
        {
          public void run()
          {
            Object localObject = paramI.a();
            localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
            if (localObject == null)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("getMediaItem for callback that isn't registered id=");
              ((StringBuilder)localObject).append(paramString);
              Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
              return;
            }
            a(paramString, (MediaBrowserServiceCompat.a)localObject, paramResultReceiver);
          }
        });
        return;
      }
    }
    
    public void b(final MediaBrowserServiceCompat.i paramI)
    {
      d.a(new Runnable()
      {
        public void run()
        {
          IBinder localIBinder = paramI.a();
          MediaBrowserServiceCompat.a localA = (MediaBrowserServiceCompat.a)b.remove(localIBinder);
          if (localA != null) {
            localIBinder.unlinkToDeath(localA, 0);
          }
        }
      });
    }
    
    public void b(final String paramString, final Bundle paramBundle, final ResultReceiver paramResultReceiver, final MediaBrowserServiceCompat.i paramI)
    {
      if (!TextUtils.isEmpty(paramString))
      {
        if (paramResultReceiver == null) {
          return;
        }
        d.a(new Runnable()
        {
          public void run()
          {
            Object localObject = paramI.a();
            localObject = (MediaBrowserServiceCompat.a)b.get(localObject);
            if (localObject == null)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("sendCustomAction for callback that isn't registered action=");
              ((StringBuilder)localObject).append(paramString);
              ((StringBuilder)localObject).append(", extras=");
              ((StringBuilder)localObject).append(paramBundle);
              Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
              return;
            }
            b(paramString, paramBundle, (MediaBrowserServiceCompat.a)localObject, paramResultReceiver);
          }
        });
        return;
      }
    }
  }
  
  private static abstract interface i
  {
    public abstract IBinder a();
    
    public abstract void a(String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle)
      throws RemoteException;
    
    public abstract void a(String paramString, List<MediaBrowserCompat.MediaItem> paramList, Bundle paramBundle1, Bundle paramBundle2)
      throws RemoteException;
    
    public abstract void b()
      throws RemoteException;
  }
  
  private static class j
    implements MediaBrowserServiceCompat.i
  {
    final Messenger a;
    
    j(Messenger paramMessenger)
    {
      a = paramMessenger;
    }
    
    private void a(int paramInt, Bundle paramBundle)
      throws RemoteException
    {
      Message localMessage = Message.obtain();
      what = paramInt;
      arg1 = 2;
      localMessage.setData(paramBundle);
      a.send(localMessage);
    }
    
    public IBinder a()
    {
      return a.getBinder();
    }
    
    public void a(String paramString, MediaSessionCompat.Token paramToken, Bundle paramBundle)
      throws RemoteException
    {
      Bundle localBundle = paramBundle;
      if (paramBundle == null) {
        localBundle = new Bundle();
      }
      localBundle.putInt("extra_service_version", 2);
      paramBundle = new Bundle();
      paramBundle.putString("data_media_item_id", paramString);
      paramBundle.putParcelable("data_media_session_token", paramToken);
      paramBundle.putBundle("data_root_hints", localBundle);
      a(1, paramBundle);
    }
    
    public void a(String paramString, List<MediaBrowserCompat.MediaItem> paramList, Bundle paramBundle1, Bundle paramBundle2)
      throws RemoteException
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("data_media_item_id", paramString);
      localBundle.putBundle("data_options", paramBundle1);
      localBundle.putBundle("data_notify_children_changed_options", paramBundle2);
      if (paramList != null)
      {
        if ((paramList instanceof ArrayList)) {
          paramString = (ArrayList)paramList;
        } else {
          paramString = new ArrayList(paramList);
        }
        localBundle.putParcelableArrayList("data_media_item_list", paramString);
      }
      a(3, localBundle);
    }
    
    public void b()
      throws RemoteException
    {
      a(2, null);
    }
  }
  
  private final class k
    extends Handler
  {
    private final MediaBrowserServiceCompat.h b = new MediaBrowserServiceCompat.h(MediaBrowserServiceCompat.this);
    
    k() {}
    
    public void a(Runnable paramRunnable)
    {
      if (Thread.currentThread() == getLooper().getThread())
      {
        paramRunnable.run();
        return;
      }
      post(paramRunnable);
    }
    
    public void handleMessage(Message paramMessage)
    {
      Object localObject = paramMessage.getData();
      switch (what)
      {
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unhandled message: ");
        ((StringBuilder)localObject).append(paramMessage);
        ((StringBuilder)localObject).append("\n  Service version: ");
        ((StringBuilder)localObject).append(2);
        ((StringBuilder)localObject).append("\n  Client version: ");
        ((StringBuilder)localObject).append(arg1);
        Log.w("MBServiceCompat", ((StringBuilder)localObject).toString());
        return;
      case 9: 
        localBundle = ((Bundle)localObject).getBundle("data_custom_action_extras");
        MediaSessionCompat.ensureClassLoader(localBundle);
        b.b(((Bundle)localObject).getString("data_custom_action"), localBundle, (ResultReceiver)((Bundle)localObject).getParcelable("data_result_receiver"), new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 8: 
        localBundle = ((Bundle)localObject).getBundle("data_search_extras");
        MediaSessionCompat.ensureClassLoader(localBundle);
        b.a(((Bundle)localObject).getString("data_search_query"), localBundle, (ResultReceiver)((Bundle)localObject).getParcelable("data_result_receiver"), new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 7: 
        b.b(new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 6: 
        localBundle = ((Bundle)localObject).getBundle("data_root_hints");
        MediaSessionCompat.ensureClassLoader(localBundle);
        b.a(new MediaBrowserServiceCompat.j(replyTo), ((Bundle)localObject).getString("data_package_name"), ((Bundle)localObject).getInt("data_calling_pid"), ((Bundle)localObject).getInt("data_calling_uid"), localBundle);
        return;
      case 5: 
        b.a(((Bundle)localObject).getString("data_media_item_id"), (ResultReceiver)((Bundle)localObject).getParcelable("data_result_receiver"), new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 4: 
        b.a(((Bundle)localObject).getString("data_media_item_id"), BundleCompat.getBinder((Bundle)localObject, "data_callback_token"), new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 3: 
        localBundle = ((Bundle)localObject).getBundle("data_options");
        MediaSessionCompat.ensureClassLoader(localBundle);
        b.a(((Bundle)localObject).getString("data_media_item_id"), BundleCompat.getBinder((Bundle)localObject, "data_callback_token"), localBundle, new MediaBrowserServiceCompat.j(replyTo));
        return;
      case 2: 
        b.a(new MediaBrowserServiceCompat.j(replyTo));
        return;
      }
      Bundle localBundle = ((Bundle)localObject).getBundle("data_root_hints");
      MediaSessionCompat.ensureClassLoader(localBundle);
      b.a(((Bundle)localObject).getString("data_package_name"), ((Bundle)localObject).getInt("data_calling_pid"), ((Bundle)localObject).getInt("data_calling_uid"), localBundle, new MediaBrowserServiceCompat.j(replyTo));
    }
    
    public boolean sendMessageAtTime(Message paramMessage, long paramLong)
    {
      Bundle localBundle = paramMessage.getData();
      localBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
      localBundle.putInt("data_calling_uid", Binder.getCallingUid());
      localBundle.putInt("data_calling_pid", Binder.getCallingPid());
      return super.sendMessageAtTime(paramMessage, paramLong);
    }
  }
}
