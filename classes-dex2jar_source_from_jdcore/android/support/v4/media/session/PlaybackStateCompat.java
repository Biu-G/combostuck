package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlaybackStateCompat
  implements Parcelable
{
  public static final long ACTION_FAST_FORWARD = 64L;
  public static final long ACTION_PAUSE = 2L;
  public static final long ACTION_PLAY = 4L;
  public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024L;
  public static final long ACTION_PLAY_FROM_SEARCH = 2048L;
  public static final long ACTION_PLAY_FROM_URI = 8192L;
  public static final long ACTION_PLAY_PAUSE = 512L;
  public static final long ACTION_PREPARE = 16384L;
  public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768L;
  public static final long ACTION_PREPARE_FROM_SEARCH = 65536L;
  public static final long ACTION_PREPARE_FROM_URI = 131072L;
  public static final long ACTION_REWIND = 8L;
  public static final long ACTION_SEEK_TO = 256L;
  public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576L;
  public static final long ACTION_SET_RATING = 128L;
  public static final long ACTION_SET_REPEAT_MODE = 262144L;
  public static final long ACTION_SET_SHUFFLE_MODE = 2097152L;
  @Deprecated
  public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288L;
  public static final long ACTION_SKIP_TO_NEXT = 32L;
  public static final long ACTION_SKIP_TO_PREVIOUS = 16L;
  public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096L;
  public static final long ACTION_STOP = 1L;
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator()
  {
    public PlaybackStateCompat a(Parcel paramAnonymousParcel)
    {
      return new PlaybackStateCompat(paramAnonymousParcel);
    }
    
    public PlaybackStateCompat[] a(int paramAnonymousInt)
    {
      return new PlaybackStateCompat[paramAnonymousInt];
    }
  };
  public static final int ERROR_CODE_ACTION_ABORTED = 10;
  public static final int ERROR_CODE_APP_ERROR = 1;
  public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
  public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
  public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
  public static final int ERROR_CODE_END_OF_QUEUE = 11;
  public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
  public static final int ERROR_CODE_NOT_SUPPORTED = 2;
  public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
  public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
  public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
  public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
  public static final long PLAYBACK_POSITION_UNKNOWN = -1L;
  public static final int REPEAT_MODE_ALL = 2;
  public static final int REPEAT_MODE_GROUP = 3;
  public static final int REPEAT_MODE_INVALID = -1;
  public static final int REPEAT_MODE_NONE = 0;
  public static final int REPEAT_MODE_ONE = 1;
  public static final int SHUFFLE_MODE_ALL = 1;
  public static final int SHUFFLE_MODE_GROUP = 2;
  public static final int SHUFFLE_MODE_INVALID = -1;
  public static final int SHUFFLE_MODE_NONE = 0;
  public static final int STATE_BUFFERING = 6;
  public static final int STATE_CONNECTING = 8;
  public static final int STATE_ERROR = 7;
  public static final int STATE_FAST_FORWARDING = 4;
  public static final int STATE_NONE = 0;
  public static final int STATE_PAUSED = 2;
  public static final int STATE_PLAYING = 3;
  public static final int STATE_REWINDING = 5;
  public static final int STATE_SKIPPING_TO_NEXT = 10;
  public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
  public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
  public static final int STATE_STOPPED = 1;
  final int a;
  final long b;
  final long c;
  final float d;
  final long e;
  final int f;
  final CharSequence g;
  final long h;
  List<CustomAction> i;
  final long j;
  final Bundle k;
  private Object l;
  
  PlaybackStateCompat(int paramInt1, long paramLong1, long paramLong2, float paramFloat, long paramLong3, int paramInt2, CharSequence paramCharSequence, long paramLong4, List<CustomAction> paramList, long paramLong5, Bundle paramBundle)
  {
    a = paramInt1;
    b = paramLong1;
    c = paramLong2;
    d = paramFloat;
    e = paramLong3;
    f = paramInt2;
    g = paramCharSequence;
    h = paramLong4;
    i = new ArrayList(paramList);
    j = paramLong5;
    k = paramBundle;
  }
  
  PlaybackStateCompat(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readLong();
    d = paramParcel.readFloat();
    h = paramParcel.readLong();
    c = paramParcel.readLong();
    e = paramParcel.readLong();
    g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    i = paramParcel.createTypedArrayList(CustomAction.CREATOR);
    j = paramParcel.readLong();
    k = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
    f = paramParcel.readInt();
  }
  
  public static PlaybackStateCompat fromPlaybackState(Object paramObject)
  {
    Bundle localBundle = null;
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      Object localObject2 = c.h(paramObject);
      if (localObject2 != null)
      {
        localObject1 = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((List)localObject1).add(CustomAction.fromCustomAction(((Iterator)localObject2).next()));
        }
      }
      else
      {
        localObject1 = null;
      }
      if (Build.VERSION.SDK_INT >= 22) {
        localBundle = d.a(paramObject);
      }
      Object localObject1 = new PlaybackStateCompat(c.a(paramObject), c.b(paramObject), c.c(paramObject), c.d(paramObject), c.e(paramObject), 0, c.f(paramObject), c.g(paramObject), (List)localObject1, c.i(paramObject), localBundle);
      l = paramObject;
      return localObject1;
    }
    return null;
  }
  
  public static int toKeyCode(long paramLong)
  {
    if (paramLong == 4L) {
      return 126;
    }
    if (paramLong == 2L) {
      return 127;
    }
    if (paramLong == 32L) {
      return 87;
    }
    if (paramLong == 16L) {
      return 88;
    }
    if (paramLong == 1L) {
      return 86;
    }
    if (paramLong == 64L) {
      return 90;
    }
    if (paramLong == 8L) {
      return 89;
    }
    if (paramLong == 512L) {
      return 85;
    }
    return 0;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getActions()
  {
    return e;
  }
  
  public long getActiveQueueItemId()
  {
    return j;
  }
  
  public long getBufferedPosition()
  {
    return c;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public long getCurrentPosition(Long paramLong)
  {
    long l2 = b;
    float f1 = d;
    long l1;
    if (paramLong != null) {
      l1 = paramLong.longValue();
    } else {
      l1 = SystemClock.elapsedRealtime() - h;
    }
    return Math.max(0L, l2 + (f1 * (float)l1));
  }
  
  public List<CustomAction> getCustomActions()
  {
    return i;
  }
  
  public int getErrorCode()
  {
    return f;
  }
  
  public CharSequence getErrorMessage()
  {
    return g;
  }
  
  @Nullable
  public Bundle getExtras()
  {
    return k;
  }
  
  public long getLastPositionUpdateTime()
  {
    return h;
  }
  
  public float getPlaybackSpeed()
  {
    return d;
  }
  
  public Object getPlaybackState()
  {
    if ((l == null) && (Build.VERSION.SDK_INT >= 21))
    {
      Object localObject = null;
      if (i != null)
      {
        ArrayList localArrayList = new ArrayList(i.size());
        Iterator localIterator = i.iterator();
        for (;;)
        {
          localObject = localArrayList;
          if (!localIterator.hasNext()) {
            break;
          }
          localArrayList.add(((CustomAction)localIterator.next()).getCustomAction());
        }
      }
      if (Build.VERSION.SDK_INT >= 22) {
        l = d.a(a, b, c, d, e, g, h, localObject, j, k);
      } else {
        l = c.a(a, b, c, d, e, g, h, localObject, j);
      }
    }
    return l;
  }
  
  public long getPosition()
  {
    return b;
  }
  
  public int getState()
  {
    return a;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PlaybackState {");
    localStringBuilder.append("state=");
    localStringBuilder.append(a);
    localStringBuilder.append(", position=");
    localStringBuilder.append(b);
    localStringBuilder.append(", buffered position=");
    localStringBuilder.append(c);
    localStringBuilder.append(", speed=");
    localStringBuilder.append(d);
    localStringBuilder.append(", updated=");
    localStringBuilder.append(h);
    localStringBuilder.append(", actions=");
    localStringBuilder.append(e);
    localStringBuilder.append(", error code=");
    localStringBuilder.append(f);
    localStringBuilder.append(", error message=");
    localStringBuilder.append(g);
    localStringBuilder.append(", custom actions=");
    localStringBuilder.append(i);
    localStringBuilder.append(", active item id=");
    localStringBuilder.append(j);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeLong(b);
    paramParcel.writeFloat(d);
    paramParcel.writeLong(h);
    paramParcel.writeLong(c);
    paramParcel.writeLong(e);
    TextUtils.writeToParcel(g, paramParcel, paramInt);
    paramParcel.writeTypedList(i);
    paramParcel.writeLong(j);
    paramParcel.writeBundle(k);
    paramParcel.writeInt(f);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Actions {}
  
  public static final class Builder
  {
    private final List<PlaybackStateCompat.CustomAction> a = new ArrayList();
    private int b;
    private long c;
    private long d;
    private float e;
    private long f;
    private int g;
    private CharSequence h;
    private long i;
    private long j = -1L;
    private Bundle k;
    
    public Builder() {}
    
    public Builder(PlaybackStateCompat paramPlaybackStateCompat)
    {
      b = a;
      c = b;
      e = d;
      i = h;
      d = c;
      f = e;
      g = f;
      h = g;
      if (i != null) {
        a.addAll(i);
      }
      j = j;
      k = k;
    }
    
    public Builder addCustomAction(PlaybackStateCompat.CustomAction paramCustomAction)
    {
      if (paramCustomAction != null)
      {
        a.add(paramCustomAction);
        return this;
      }
      throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat.");
    }
    
    public Builder addCustomAction(String paramString1, String paramString2, int paramInt)
    {
      return addCustomAction(new PlaybackStateCompat.CustomAction(paramString1, paramString2, paramInt, null));
    }
    
    public PlaybackStateCompat build()
    {
      return new PlaybackStateCompat(b, c, d, e, f, g, h, i, a, j, k);
    }
    
    public Builder setActions(long paramLong)
    {
      f = paramLong;
      return this;
    }
    
    public Builder setActiveQueueItemId(long paramLong)
    {
      j = paramLong;
      return this;
    }
    
    public Builder setBufferedPosition(long paramLong)
    {
      d = paramLong;
      return this;
    }
    
    public Builder setErrorMessage(int paramInt, CharSequence paramCharSequence)
    {
      g = paramInt;
      h = paramCharSequence;
      return this;
    }
    
    public Builder setErrorMessage(CharSequence paramCharSequence)
    {
      h = paramCharSequence;
      return this;
    }
    
    public Builder setExtras(Bundle paramBundle)
    {
      k = paramBundle;
      return this;
    }
    
    public Builder setState(int paramInt, long paramLong, float paramFloat)
    {
      return setState(paramInt, paramLong, paramFloat, SystemClock.elapsedRealtime());
    }
    
    public Builder setState(int paramInt, long paramLong1, float paramFloat, long paramLong2)
    {
      b = paramInt;
      c = paramLong1;
      i = paramLong2;
      e = paramFloat;
      return this;
    }
  }
  
  public static final class CustomAction
    implements Parcelable
  {
    public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator()
    {
      public PlaybackStateCompat.CustomAction a(Parcel paramAnonymousParcel)
      {
        return new PlaybackStateCompat.CustomAction(paramAnonymousParcel);
      }
      
      public PlaybackStateCompat.CustomAction[] a(int paramAnonymousInt)
      {
        return new PlaybackStateCompat.CustomAction[paramAnonymousInt];
      }
    };
    private final String a;
    private final CharSequence b;
    private final int c;
    private final Bundle d;
    private Object e;
    
    CustomAction(Parcel paramParcel)
    {
      a = paramParcel.readString();
      b = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      c = paramParcel.readInt();
      d = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
    
    CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
    {
      a = paramString;
      b = paramCharSequence;
      c = paramInt;
      d = paramBundle;
    }
    
    public static CustomAction fromCustomAction(Object paramObject)
    {
      if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
      {
        CustomAction localCustomAction = new CustomAction(c.a.a(paramObject), c.a.b(paramObject), c.a.c(paramObject), c.a.d(paramObject));
        e = paramObject;
        return localCustomAction;
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String getAction()
    {
      return a;
    }
    
    public Object getCustomAction()
    {
      if ((e == null) && (Build.VERSION.SDK_INT >= 21))
      {
        e = c.a.a(a, b, c, d);
        return e;
      }
      return e;
    }
    
    public Bundle getExtras()
    {
      return d;
    }
    
    public int getIcon()
    {
      return c;
    }
    
    public CharSequence getName()
    {
      return b;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Action:mName='");
      localStringBuilder.append(b);
      localStringBuilder.append(", mIcon=");
      localStringBuilder.append(c);
      localStringBuilder.append(", mExtras=");
      localStringBuilder.append(d);
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(a);
      TextUtils.writeToParcel(b, paramParcel, paramInt);
      paramParcel.writeInt(c);
      paramParcel.writeBundle(d);
    }
    
    public static final class Builder
    {
      private final String a;
      private final CharSequence b;
      private final int c;
      private Bundle d;
      
      public Builder(String paramString, CharSequence paramCharSequence, int paramInt)
      {
        if (!TextUtils.isEmpty(paramString))
        {
          if (!TextUtils.isEmpty(paramCharSequence))
          {
            if (paramInt != 0)
            {
              a = paramString;
              b = paramCharSequence;
              c = paramInt;
              return;
            }
            throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction.");
          }
          throw new IllegalArgumentException("You must specify a name to build a CustomAction.");
        }
        throw new IllegalArgumentException("You must specify an action to build a CustomAction.");
      }
      
      public PlaybackStateCompat.CustomAction build()
      {
        return new PlaybackStateCompat.CustomAction(a, b, c, d);
      }
      
      public Builder setExtras(Bundle paramBundle)
      {
        d = paramBundle;
        return this;
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ErrorCode {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface MediaKeyAction {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface RepeatMode {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface ShuffleMode {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface State {}
}
