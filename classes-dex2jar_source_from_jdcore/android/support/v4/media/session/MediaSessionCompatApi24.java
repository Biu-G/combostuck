package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(24)
class MediaSessionCompatApi24
{
  public static Object a(Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  public static String a(Object paramObject)
  {
    paramObject = (MediaSession)paramObject;
    try
    {
      paramObject = (String)paramObject.getClass().getMethod("getCallingPackage", new Class[0]).invoke(paramObject, new Object[0]);
      return paramObject;
    }
    catch (NoSuchMethodException|InvocationTargetException|IllegalAccessException paramObject)
    {
      Log.e("MediaSessionCompatApi24", "Cannot execute MediaSession.getCallingPackage()", paramObject);
    }
    return null;
  }
  
  public static abstract interface Callback
    extends MediaSessionCompatApi23.Callback
  {
    public abstract void onPrepare();
    
    public abstract void onPrepareFromMediaId(String paramString, Bundle paramBundle);
    
    public abstract void onPrepareFromSearch(String paramString, Bundle paramBundle);
    
    public abstract void onPrepareFromUri(Uri paramUri, Bundle paramBundle);
  }
  
  static class a<T extends MediaSessionCompatApi24.Callback>
    extends MediaSessionCompatApi23.a<T>
  {
    public a(T paramT)
    {
      super();
    }
    
    public void onPrepare()
    {
      ((MediaSessionCompatApi24.Callback)a).onPrepare();
    }
    
    public void onPrepareFromMediaId(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((MediaSessionCompatApi24.Callback)a).onPrepareFromMediaId(paramString, paramBundle);
    }
    
    public void onPrepareFromSearch(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((MediaSessionCompatApi24.Callback)a).onPrepareFromSearch(paramString, paramBundle);
    }
    
    public void onPrepareFromUri(Uri paramUri, Bundle paramBundle)
    {
      MediaSessionCompat.ensureClassLoader(paramBundle);
      ((MediaSessionCompatApi24.Callback)a).onPrepareFromUri(paramUri, paramBundle);
    }
  }
}
