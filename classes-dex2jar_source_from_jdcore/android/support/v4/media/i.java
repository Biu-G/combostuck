package android.support.v4.media;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
class i
  extends k
{
  i(Context paramContext)
  {
    super(paramContext);
    b = paramContext;
  }
  
  private boolean c(@NonNull MediaSessionManager.b paramB)
  {
    return a().checkPermission("android.permission.MEDIA_CONTENT_CONTROL", paramB.b(), paramB.c()) == 0;
  }
  
  public boolean a(@NonNull MediaSessionManager.b paramB)
  {
    return (c(paramB)) || (super.a(paramB));
  }
}
