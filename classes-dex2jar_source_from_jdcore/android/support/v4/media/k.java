package android.support.v4.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.provider.Settings.Secure;
import android.support.annotation.NonNull;
import android.support.v4.util.ObjectsCompat;
import android.text.TextUtils;
import android.util.Log;

class k
  implements MediaSessionManager.a
{
  private static final boolean a = MediaSessionManager.a;
  Context b;
  ContentResolver c;
  
  k(Context paramContext)
  {
    b = paramContext;
    c = b.getContentResolver();
  }
  
  private boolean a(MediaSessionManager.b paramB, String paramString)
  {
    int i = paramB.b();
    boolean bool2 = false;
    boolean bool1 = false;
    if (i < 0)
    {
      if (b.getPackageManager().checkPermission(paramString, paramB.a()) == 0) {
        bool1 = true;
      }
      return bool1;
    }
    bool1 = bool2;
    if (b.checkPermission(paramString, paramB.b(), paramB.c()) == 0) {
      bool1 = true;
    }
    return bool1;
  }
  
  public Context a()
  {
    return b;
  }
  
  public boolean a(@NonNull MediaSessionManager.b paramB)
  {
    boolean bool = false;
    try
    {
      localObject = b.getPackageManager().getApplicationInfo(paramB.a(), 0);
      if (uid != paramB.c())
      {
        if (a)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Package name ");
          ((StringBuilder)localObject).append(paramB.a());
          ((StringBuilder)localObject).append(" doesn't match with the uid ");
          ((StringBuilder)localObject).append(paramB.c());
          Log.d("MediaSessionManager", ((StringBuilder)localObject).toString());
        }
        return false;
      }
      if ((a(paramB, "android.permission.STATUS_BAR_SERVICE")) || (a(paramB, "android.permission.MEDIA_CONTENT_CONTROL")) || (paramB.c() == 1000) || (b(paramB))) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Object localObject;
      for (;;) {}
    }
    if (a)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Package ");
      ((StringBuilder)localObject).append(paramB.a());
      ((StringBuilder)localObject).append(" doesn't exist");
      Log.d("MediaSessionManager", ((StringBuilder)localObject).toString());
    }
    return false;
  }
  
  boolean b(@NonNull MediaSessionManager.b paramB)
  {
    Object localObject = Settings.Secure.getString(c, "enabled_notification_listeners");
    if (localObject != null)
    {
      localObject = ((String)localObject).split(":");
      int i = 0;
      while (i < localObject.length)
      {
        ComponentName localComponentName = ComponentName.unflattenFromString(localObject[i]);
        if ((localComponentName != null) && (localComponentName.getPackageName().equals(paramB.a()))) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  static class a
    implements MediaSessionManager.b
  {
    private String a;
    private int b;
    private int c;
    
    a(String paramString, int paramInt1, int paramInt2)
    {
      a = paramString;
      b = paramInt1;
      c = paramInt2;
    }
    
    public String a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
    
    public int c()
    {
      return c;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof a)) {
        return false;
      }
      paramObject = (a)paramObject;
      return (TextUtils.equals(a, a)) && (b == b) && (c == c);
    }
    
    public int hashCode()
    {
      return ObjectsCompat.hash(new Object[] { a, Integer.valueOf(b), Integer.valueOf(c) });
    }
  }
}
