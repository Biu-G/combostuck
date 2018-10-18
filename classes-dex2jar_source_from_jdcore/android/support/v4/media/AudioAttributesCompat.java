package android.support.v4.media;

import android.media.AudioAttributes;
import android.media.AudioAttributes.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class AudioAttributesCompat
  implements VersionedParcelable
{
  public static final int CONTENT_TYPE_MOVIE = 3;
  public static final int CONTENT_TYPE_MUSIC = 2;
  public static final int CONTENT_TYPE_SONIFICATION = 4;
  public static final int CONTENT_TYPE_SPEECH = 1;
  public static final int CONTENT_TYPE_UNKNOWN = 0;
  public static final int FLAG_AUDIBILITY_ENFORCED = 1;
  public static final int FLAG_HW_AV_SYNC = 16;
  public static final int USAGE_ALARM = 4;
  public static final int USAGE_ASSISTANCE_ACCESSIBILITY = 11;
  public static final int USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
  public static final int USAGE_ASSISTANCE_SONIFICATION = 13;
  public static final int USAGE_ASSISTANT = 16;
  public static final int USAGE_GAME = 14;
  public static final int USAGE_MEDIA = 1;
  public static final int USAGE_NOTIFICATION = 5;
  public static final int USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
  public static final int USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
  public static final int USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
  public static final int USAGE_NOTIFICATION_EVENT = 10;
  public static final int USAGE_NOTIFICATION_RINGTONE = 6;
  public static final int USAGE_UNKNOWN = 0;
  public static final int USAGE_VOICE_COMMUNICATION = 2;
  public static final int USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
  static boolean a;
  private static final SparseIntArray c = new SparseIntArray();
  private static final int[] d = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16 };
  a b;
  
  static
  {
    c.put(5, 1);
    c.put(6, 2);
    c.put(7, 2);
    c.put(8, 1);
    c.put(9, 1);
    c.put(10, 1);
  }
  
  AudioAttributesCompat() {}
  
  AudioAttributesCompat(a paramA)
  {
    b = paramA;
  }
  
  static int a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1)
    {
      if (paramBoolean) {
        return 1;
      }
      return 7;
    }
    if ((paramInt1 & 0x4) == 4)
    {
      if (paramBoolean) {
        return 0;
      }
      return 6;
    }
    paramInt1 = 3;
    switch (paramInt2)
    {
    case 15: 
    default: 
      if (!paramBoolean) {
        return 3;
      }
      break;
    case 13: 
      return 1;
    case 11: 
      return 10;
    case 6: 
      return 2;
    case 5: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
      return 5;
    case 4: 
      return 4;
    case 3: 
      if (paramBoolean) {
        return 0;
      }
      return 8;
    case 2: 
      return 0;
    case 1: 
    case 12: 
    case 14: 
    case 16: 
      return 3;
    case 0: 
      if (paramBoolean) {
        paramInt1 = Integer.MIN_VALUE;
      }
      return paramInt1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Unknown usage value ");
    localStringBuilder.append(paramInt2);
    localStringBuilder.append(" in audio attributes");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  static String a(int paramInt)
  {
    switch (paramInt)
    {
    case 15: 
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("unknown usage ");
      localStringBuilder.append(paramInt);
      return localStringBuilder.toString();
    case 16: 
      return "USAGE_ASSISTANT";
    case 14: 
      return "USAGE_GAME";
    case 13: 
      return "USAGE_ASSISTANCE_SONIFICATION";
    case 12: 
      return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
    case 11: 
      return "USAGE_ASSISTANCE_ACCESSIBILITY";
    case 10: 
      return "USAGE_NOTIFICATION_EVENT";
    case 9: 
      return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
    case 8: 
      return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
    case 7: 
      return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
    case 6: 
      return "USAGE_NOTIFICATION_RINGTONE";
    case 5: 
      return "USAGE_NOTIFICATION";
    case 4: 
      return "USAGE_ALARM";
    case 3: 
      return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
    case 2: 
      return "USAGE_VOICE_COMMUNICATION";
    case 1: 
      return "USAGE_MEDIA";
    }
    return "USAGE_UNKNOWN";
  }
  
  static int b(int paramInt)
  {
    switch (paramInt)
    {
    case 9: 
    default: 
      return 0;
    case 10: 
      return 11;
    case 8: 
      return 3;
    case 6: 
      return 2;
    case 5: 
      return 5;
    case 4: 
      return 4;
    case 3: 
      return 1;
    case 2: 
      return 6;
    case 1: 
    case 7: 
      return 13;
    }
    return 2;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static AudioAttributesCompat fromBundle(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      paramBundle = b.a(paramBundle);
    } else {
      paramBundle = c.a(paramBundle);
    }
    if (paramBundle == null) {
      return null;
    }
    return new AudioAttributesCompat(paramBundle);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static void setForceLegacyBehavior(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  @Nullable
  public static AudioAttributesCompat wrap(@NonNull Object paramObject)
  {
    if ((Build.VERSION.SDK_INT >= 21) && (!a))
    {
      paramObject = new b((AudioAttributes)paramObject);
      AudioAttributesCompat localAudioAttributesCompat = new AudioAttributesCompat();
      b = paramObject;
      return localAudioAttributesCompat;
    }
    return null;
  }
  
  int a()
  {
    return b.d();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = paramObject instanceof AudioAttributesCompat;
    boolean bool1 = false;
    if (!bool2) {
      return false;
    }
    paramObject = (AudioAttributesCompat)paramObject;
    if (b == null)
    {
      if (b == null) {
        bool1 = true;
      }
      return bool1;
    }
    return b.equals(b);
  }
  
  public int getContentType()
  {
    return b.e();
  }
  
  public int getFlags()
  {
    return b.g();
  }
  
  public int getLegacyStreamType()
  {
    return b.c();
  }
  
  public int getUsage()
  {
    return b.f();
  }
  
  public int getVolumeControlStream()
  {
    return b.b();
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  @NonNull
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public Bundle toBundle()
  {
    return b.h();
  }
  
  public String toString()
  {
    return b.toString();
  }
  
  @Nullable
  public Object unwrap()
  {
    return b.a();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface AttributeContentType {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface AttributeUsage {}
  
  public static class Builder
  {
    private int a = 0;
    private int b = 0;
    private int c = 0;
    private int d = -1;
    
    public Builder() {}
    
    public Builder(AudioAttributesCompat paramAudioAttributesCompat)
    {
      a = paramAudioAttributesCompat.getUsage();
      b = paramAudioAttributesCompat.getContentType();
      c = paramAudioAttributesCompat.getFlags();
      d = paramAudioAttributesCompat.a();
    }
    
    Builder a(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid stream type ");
        localStringBuilder.append(paramInt);
        localStringBuilder.append(" for AudioAttributesCompat");
        Log.e("AudioAttributesCompat", localStringBuilder.toString());
        break;
      case 10: 
        b = 1;
        break;
      case 9: 
        b = 4;
        break;
      case 8: 
        b = 4;
        break;
      case 7: 
        c = (0x1 | c);
        break;
      case 6: 
        b = 1;
        c |= 0x4;
        break;
      case 5: 
        b = 4;
        break;
      case 4: 
        b = 4;
        break;
      case 3: 
        b = 2;
        break;
      case 2: 
        b = 4;
        break;
      case 1: 
        b = 4;
        break;
      }
      b = 1;
      a = AudioAttributesCompat.b(paramInt);
      return this;
    }
    
    public AudioAttributesCompat build()
    {
      Object localObject;
      if ((!AudioAttributesCompat.a) && (Build.VERSION.SDK_INT >= 21))
      {
        localObject = new AudioAttributes.Builder().setContentType(b).setFlags(c).setUsage(a);
        if (d != -1) {
          ((AudioAttributes.Builder)localObject).setLegacyStreamType(d);
        }
        localObject = new b(((AudioAttributes.Builder)localObject).build(), d);
      }
      else
      {
        localObject = new c(b, c, a, d);
      }
      return new AudioAttributesCompat((a)localObject);
    }
    
    public Builder setContentType(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        a = 0;
        return this;
      }
      b = paramInt;
      return this;
    }
    
    public Builder setFlags(int paramInt)
    {
      c = (paramInt & 0x3FF | c);
      return this;
    }
    
    public Builder setLegacyStreamType(int paramInt)
    {
      if (paramInt != 10)
      {
        d = paramInt;
        if (Build.VERSION.SDK_INT >= 21) {
          return a(paramInt);
        }
        return this;
      }
      throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
    }
    
    public Builder setUsage(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        a = 0;
        return this;
      case 16: 
        if ((!AudioAttributesCompat.a) && (Build.VERSION.SDK_INT > 25))
        {
          a = paramInt;
          return this;
        }
        a = 12;
        return this;
      }
      a = paramInt;
      return this;
    }
  }
}
