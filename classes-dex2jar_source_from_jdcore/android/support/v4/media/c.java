package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.Arrays;

class c
  implements a
{
  int a = 0;
  int b = 0;
  int c = 0;
  int d = -1;
  
  c() {}
  
  c(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b = paramInt1;
    c = paramInt2;
    a = paramInt3;
    d = paramInt4;
  }
  
  public static a a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    int i = paramBundle.getInt("android.support.v4.media.audio_attrs.USAGE", 0);
    return new c(paramBundle.getInt("android.support.v4.media.audio_attrs.CONTENT_TYPE", 0), paramBundle.getInt("android.support.v4.media.audio_attrs.FLAGS", 0), i, paramBundle.getInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", -1));
  }
  
  public Object a()
  {
    return null;
  }
  
  public int b()
  {
    return AudioAttributesCompat.a(true, c, a);
  }
  
  public int c()
  {
    if (d != -1) {
      return d;
    }
    return AudioAttributesCompat.a(false, c, a);
  }
  
  public int d()
  {
    return d;
  }
  
  public int e()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof c;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (c)paramObject;
    bool1 = bool2;
    if (b == paramObject.e())
    {
      bool1 = bool2;
      if (c == paramObject.g())
      {
        bool1 = bool2;
        if (a == paramObject.f())
        {
          bool1 = bool2;
          if (d == d) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int f()
  {
    return a;
  }
  
  public int g()
  {
    int j = c;
    int k = c();
    int i;
    if (k == 6)
    {
      i = j | 0x4;
    }
    else
    {
      i = j;
      if (k == 7) {
        i = j | 0x1;
      }
    }
    return i & 0x111;
  }
  
  @NonNull
  public Bundle h()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("android.support.v4.media.audio_attrs.USAGE", a);
    localBundle.putInt("android.support.v4.media.audio_attrs.CONTENT_TYPE", b);
    localBundle.putInt("android.support.v4.media.audio_attrs.FLAGS", c);
    if (d != -1) {
      localBundle.putInt("android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE", d);
    }
    return localBundle;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(b), Integer.valueOf(c), Integer.valueOf(a), Integer.valueOf(d) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("AudioAttributesCompat:");
    if (d != -1)
    {
      localStringBuilder.append(" stream=");
      localStringBuilder.append(d);
      localStringBuilder.append(" derived");
    }
    localStringBuilder.append(" usage=");
    localStringBuilder.append(AudioAttributesCompat.a(a));
    localStringBuilder.append(" content=");
    localStringBuilder.append(b);
    localStringBuilder.append(" flags=0x");
    localStringBuilder.append(Integer.toHexString(c).toUpperCase());
    return localStringBuilder.toString();
  }
}
