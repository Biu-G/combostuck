package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser.MediaItem;
import android.media.browse.MediaBrowser.SubscriptionCallback;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

@RequiresApi(26)
class f
{
  static Object a(a paramA)
  {
    return new b(paramA);
  }
  
  public static void a(Object paramObject1, String paramString, Bundle paramBundle, Object paramObject2)
  {
    ((MediaBrowser)paramObject1).subscribe(paramString, paramBundle, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
  
  public static void a(Object paramObject1, String paramString, Object paramObject2)
  {
    ((MediaBrowser)paramObject1).unsubscribe(paramString, (MediaBrowser.SubscriptionCallback)paramObject2);
  }
  
  static abstract interface a
    extends d.d
  {
    public abstract void a(@NonNull String paramString, @NonNull Bundle paramBundle);
    
    public abstract void a(@NonNull String paramString, List<?> paramList, @NonNull Bundle paramBundle);
  }
  
  static class b<T extends f.a>
    extends d.e<T>
  {
    b(T paramT)
    {
      super();
    }
    
    public void onChildrenLoaded(@NonNull String paramString, List<MediaBrowser.MediaItem> paramList, @NonNull Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((f.a)a).a(paramString, paramList, paramBundle);
    }
    
    public void onError(@NonNull String paramString, @NonNull Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((f.a)a).a(paramString, paramBundle);
    }
  }
}
