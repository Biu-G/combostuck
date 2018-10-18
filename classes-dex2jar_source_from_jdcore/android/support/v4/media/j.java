package android.support.v4.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.media.session.MediaSessionManager.RemoteUserInfo;
import android.support.annotation.RequiresApi;
import android.support.v4.util.ObjectsCompat;

@RequiresApi(28)
class j
  extends i
{
  MediaSessionManager a;
  
  j(Context paramContext)
  {
    super(paramContext);
    a = ((MediaSessionManager)paramContext.getSystemService("media_session"));
  }
  
  public boolean a(MediaSessionManager.b paramB)
  {
    if ((paramB instanceof a)) {
      return a.isTrustedForMediaControl(a);
    }
    return false;
  }
  
  static final class a
    implements MediaSessionManager.b
  {
    final MediaSessionManager.RemoteUserInfo a;
    
    a(MediaSessionManager.RemoteUserInfo paramRemoteUserInfo)
    {
      a = paramRemoteUserInfo;
    }
    
    a(String paramString, int paramInt1, int paramInt2)
    {
      a = new MediaSessionManager.RemoteUserInfo(paramString, paramInt1, paramInt2);
    }
    
    public String a()
    {
      return a.getPackageName();
    }
    
    public int b()
    {
      return a.getPid();
    }
    
    public int c()
    {
      return a.getUid();
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
      return a.equals(a);
    }
    
    public int hashCode()
    {
      return ObjectsCompat.hash(new Object[] { a });
    }
  }
}
