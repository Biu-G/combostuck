package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(21)
class b
  implements a
{
  static Method c;
  AudioAttributes a;
  int b = -1;
  
  b() {}
  
  b(AudioAttributes paramAudioAttributes)
  {
    this(paramAudioAttributes, -1);
  }
  
  b(AudioAttributes paramAudioAttributes, int paramInt)
  {
    a = paramAudioAttributes;
    b = paramInt;
  }
  
  public static a a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    AudioAttributes localAudioAttributes = (AudioAttributes)paramBundle.getParcelable("android.support.v4.media.audio_attrs.FRAMEWORKS");
    if (localAudioAttributes == null) {
      return null;
    }
    return new b(localAudioAttributes, paramBundle.getInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", -1));
  }
  
  static Method i()
  {
    try
    {
      if (c == null) {
        c = AudioAttributes.class.getMethod("toLegacyStreamType", new Class[] { AudioAttributes.class });
      }
      return c;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
    return null;
  }
  
  public Object a()
  {
    return a;
  }
  
  public int b()
  {
    if (Build.VERSION.SDK_INT >= 26) {
      return a.getVolumeControlStream();
    }
    return AudioAttributesCompat.a(true, g(), f());
  }
  
  public int c()
  {
    if (b != -1) {
      return b;
    }
    Object localObject = i();
    if (localObject == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("No AudioAttributes#toLegacyStreamType() on API: ");
      ((StringBuilder)localObject).append(Build.VERSION.SDK_INT);
      Log.w("AudioAttributesCompat21", ((StringBuilder)localObject).toString());
      return -1;
    }
    try
    {
      int i = ((Integer)((Method)localObject).invoke(null, new Object[] { a })).intValue();
      return i;
    }
    catch (InvocationTargetException|IllegalAccessException localInvocationTargetException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getLegacyStreamType() failed on API: ");
      localStringBuilder.append(Build.VERSION.SDK_INT);
      Log.w("AudioAttributesCompat21", localStringBuilder.toString(), localInvocationTargetException);
    }
    return -1;
  }
  
  public int d()
  {
    return b;
  }
  
  public int e()
  {
    return a.getContentType();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    return a.equals(a);
  }
  
  public int f()
  {
    return a.getUsage();
  }
  
  public int g()
  {
    return a.getFlags();
  }
  
  @NonNull
  public Bundle h()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("android.support.v4.media.audio_attrs.FRAMEWORKS", a);
    if (b != -1) {
      localBundle.putInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", b);
    }
    return localBundle;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AudioAttributesCompat: audioattributes=");
    localStringBuilder.append(a);
    return localStringBuilder.toString();
  }
}
