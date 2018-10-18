package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaSessionCompatApi23
{
  public static Object a(Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  public static abstract interface Callback
    extends a.a
  {
    public abstract void onPlayFromUri(Uri paramUri, Bundle paramBundle);
  }
  
  static class a<T extends MediaSessionCompatApi23.Callback>
    extends a.b<T>
  {
    public a(T paramT)
    {
      super();
    }
    
    public void onPlayFromUri(Uri paramUri, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((MediaSessionCompatApi23.Callback)a).onPlayFromUri(paramUri, paramBundle);
    }
  }
}
