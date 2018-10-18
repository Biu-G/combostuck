package android.support.v4.media;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.util.Log;

public final class MediaSessionManager
{
  static final boolean a = Log.isLoggable("MediaSessionManager", 3);
  private static final Object c = new Object();
  private static volatile MediaSessionManager d;
  a b;
  
  private MediaSessionManager(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 28)
    {
      b = new j(paramContext);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new i(paramContext);
      return;
    }
    b = new k(paramContext);
  }
  
  @NonNull
  public static MediaSessionManager getSessionManager(@NonNull Context paramContext)
  {
    Object localObject1 = d;
    if (localObject1 == null) {
      synchronized (c)
      {
        MediaSessionManager localMediaSessionManager = d;
        localObject1 = localMediaSessionManager;
        if (localMediaSessionManager == null)
        {
          d = new MediaSessionManager(paramContext.getApplicationContext());
          localObject1 = d;
        }
        return localObject1;
      }
    }
    return localObject1;
  }
  
  public boolean isTrustedForMediaControl(@NonNull RemoteUserInfo paramRemoteUserInfo)
  {
    if (paramRemoteUserInfo != null) {
      return b.a(a);
    }
    throw new IllegalArgumentException("userInfo should not be null");
  }
  
  public static final class RemoteUserInfo
  {
    public static final String LEGACY_CONTROLLER = "android.media.session.MediaController";
    MediaSessionManager.b a;
    
    @RequiresApi(28)
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public RemoteUserInfo(android.media.session.MediaSessionManager.RemoteUserInfo paramRemoteUserInfo)
    {
      a = new j.a(paramRemoteUserInfo);
    }
    
    public RemoteUserInfo(@NonNull String paramString, int paramInt1, int paramInt2)
    {
      if (Build.VERSION.SDK_INT >= 28)
      {
        a = new j.a(paramString, paramInt1, paramInt2);
        return;
      }
      a = new k.a(paramString, paramInt1, paramInt2);
    }
    
    public boolean equals(@Nullable Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof RemoteUserInfo)) {
        return false;
      }
      return a.equals(a);
    }
    
    @NonNull
    public String getPackageName()
    {
      return a.a();
    }
    
    public int getPid()
    {
      return a.b();
    }
    
    public int getUid()
    {
      return a.c();
    }
    
    public int hashCode()
    {
      return a.hashCode();
    }
  }
  
  static abstract interface a
  {
    public abstract boolean a(MediaSessionManager.b paramB);
  }
  
  static abstract interface b
  {
    public abstract String a();
    
    public abstract int b();
    
    public abstract int c();
  }
}
