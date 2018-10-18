package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.media.browse.MediaBrowser.ItemCallback;
import android.media.browse.MediaBrowser.MediaItem;
import android.os.Parcel;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class e
{
  public static Object a(a paramA)
  {
    return new b(paramA);
  }
  
  public static void a(Object paramObject1, String paramString, Object paramObject2)
  {
    ((MediaBrowser)paramObject1).getItem(paramString, (MediaBrowser.ItemCallback)paramObject2);
  }
  
  static abstract interface a
  {
    public abstract void a(Parcel paramParcel);
    
    public abstract void a(@NonNull String paramString);
  }
  
  static class b<T extends e.a>
    extends MediaBrowser.ItemCallback
  {
    protected final T a;
    
    public b(T paramT)
    {
      a = paramT;
    }
    
    public void onError(@NonNull String paramString)
    {
      a.a(paramString);
    }
    
    public void onItemLoaded(MediaBrowser.MediaItem paramMediaItem)
    {
      if (paramMediaItem == null)
      {
        a.a(null);
        return;
      }
      Parcel localParcel = Parcel.obtain();
      paramMediaItem.writeToParcel(localParcel, 0);
      a.a(localParcel);
    }
  }
}
