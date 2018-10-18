package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final long BT_FOLDER_TYPE_ALBUMS = 2L;
  public static final long BT_FOLDER_TYPE_ARTISTS = 3L;
  public static final long BT_FOLDER_TYPE_GENRES = 4L;
  public static final long BT_FOLDER_TYPE_MIXED = 0L;
  public static final long BT_FOLDER_TYPE_PLAYLISTS = 5L;
  public static final long BT_FOLDER_TYPE_TITLES = 1L;
  public static final long BT_FOLDER_TYPE_YEARS = 6L;
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator()
  {
    public MediaDescriptionCompat a(Parcel paramAnonymousParcel)
    {
      if (Build.VERSION.SDK_INT < 21) {
        return new MediaDescriptionCompat(paramAnonymousParcel);
      }
      return MediaDescriptionCompat.fromMediaDescription(g.a(paramAnonymousParcel));
    }
    
    public MediaDescriptionCompat[] a(int paramAnonymousInt)
    {
      return new MediaDescriptionCompat[paramAnonymousInt];
    }
  };
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
  public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
  public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
  public static final long STATUS_DOWNLOADED = 2L;
  public static final long STATUS_DOWNLOADING = 1L;
  public static final long STATUS_NOT_DOWNLOADED = 0L;
  private final String a;
  private final CharSequence b;
  private final CharSequence c;
  private final CharSequence d;
  private final Bitmap e;
  private final Uri f;
  private final Bundle g;
  private final Uri h;
  private Object i;
  
  MediaDescriptionCompat(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    c = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    d = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    ClassLoader localClassLoader = getClass().getClassLoader();
    e = ((Bitmap)paramParcel.readParcelable(localClassLoader));
    f = ((Uri)paramParcel.readParcelable(localClassLoader));
    g = paramParcel.readBundle(localClassLoader);
    h = ((Uri)paramParcel.readParcelable(localClassLoader));
  }
  
  MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    a = paramString;
    b = paramCharSequence1;
    c = paramCharSequence2;
    d = paramCharSequence3;
    e = paramBitmap;
    f = paramUri1;
    g = paramBundle;
    h = paramUri2;
  }
  
  public static MediaDescriptionCompat fromMediaDescription(Object paramObject)
  {
    Object localObject2 = null;
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      Builder localBuilder = new Builder();
      localBuilder.setMediaId(g.a(paramObject));
      localBuilder.setTitle(g.b(paramObject));
      localBuilder.setSubtitle(g.c(paramObject));
      localBuilder.setDescription(g.d(paramObject));
      localBuilder.setIconBitmap(g.e(paramObject));
      localBuilder.setIconUri(g.f(paramObject));
      Bundle localBundle = g.g(paramObject);
      if (localBundle != null)
      {
        MediaSessionCompat.ensureClassLoader(localBundle);
        localObject1 = (Uri)localBundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 != null)
      {
        if ((!localBundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG")) || (localBundle.size() != 2))
        {
          localBundle.remove("android.support.v4.media.description.MEDIA_URI");
          localBundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
        }
      }
      else {
        localObject2 = localBundle;
      }
      localBuilder.setExtras(localObject2);
      if (localObject1 != null) {
        localBuilder.setMediaUri((Uri)localObject1);
      } else if (Build.VERSION.SDK_INT >= 23) {
        localBuilder.setMediaUri(h.a(paramObject));
      }
      Object localObject1 = localBuilder.build();
      i = paramObject;
      return localObject1;
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  @Nullable
  public CharSequence getDescription()
  {
    return d;
  }
  
  @Nullable
  public Bundle getExtras()
  {
    return g;
  }
  
  @Nullable
  public Bitmap getIconBitmap()
  {
    return e;
  }
  
  @Nullable
  public Uri getIconUri()
  {
    return f;
  }
  
  public Object getMediaDescription()
  {
    if ((i == null) && (Build.VERSION.SDK_INT >= 21))
    {
      Object localObject = g.a.a();
      g.a.a(localObject, a);
      g.a.a(localObject, b);
      g.a.b(localObject, c);
      g.a.c(localObject, d);
      g.a.a(localObject, e);
      g.a.a(localObject, f);
      Bundle localBundle2 = g;
      Bundle localBundle1 = localBundle2;
      if (Build.VERSION.SDK_INT < 23)
      {
        localBundle1 = localBundle2;
        if (h != null)
        {
          localBundle1 = localBundle2;
          if (localBundle2 == null)
          {
            localBundle1 = new Bundle();
            localBundle1.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
          }
          localBundle1.putParcelable("android.support.v4.media.description.MEDIA_URI", h);
        }
      }
      g.a.a(localObject, localBundle1);
      if (Build.VERSION.SDK_INT >= 23) {
        h.a.a(localObject, h);
      }
      i = g.a.a(localObject);
      return i;
    }
    return i;
  }
  
  @Nullable
  public String getMediaId()
  {
    return a;
  }
  
  @Nullable
  public Uri getMediaUri()
  {
    return h;
  }
  
  @Nullable
  public CharSequence getSubtitle()
  {
    return c;
  }
  
  @Nullable
  public CharSequence getTitle()
  {
    return b;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b);
    localStringBuilder.append(", ");
    localStringBuilder.append(c);
    localStringBuilder.append(", ");
    localStringBuilder.append(d);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(a);
      TextUtils.writeToParcel(b, paramParcel, paramInt);
      TextUtils.writeToParcel(c, paramParcel, paramInt);
      TextUtils.writeToParcel(d, paramParcel, paramInt);
      paramParcel.writeParcelable(e, paramInt);
      paramParcel.writeParcelable(f, paramInt);
      paramParcel.writeBundle(g);
      paramParcel.writeParcelable(h, paramInt);
      return;
    }
    g.a(getMediaDescription(), paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private String a;
    private CharSequence b;
    private CharSequence c;
    private CharSequence d;
    private Bitmap e;
    private Uri f;
    private Bundle g;
    private Uri h;
    
    public Builder() {}
    
    public MediaDescriptionCompat build()
    {
      return new MediaDescriptionCompat(a, b, c, d, e, f, g, h);
    }
    
    public Builder setDescription(@Nullable CharSequence paramCharSequence)
    {
      d = paramCharSequence;
      return this;
    }
    
    public Builder setExtras(@Nullable Bundle paramBundle)
    {
      g = paramBundle;
      return this;
    }
    
    public Builder setIconBitmap(@Nullable Bitmap paramBitmap)
    {
      e = paramBitmap;
      return this;
    }
    
    public Builder setIconUri(@Nullable Uri paramUri)
    {
      f = paramUri;
      return this;
    }
    
    public Builder setMediaId(@Nullable String paramString)
    {
      a = paramString;
      return this;
    }
    
    public Builder setMediaUri(@Nullable Uri paramUri)
    {
      h = paramUri;
      return this;
    }
    
    public Builder setSubtitle(@Nullable CharSequence paramCharSequence)
    {
      c = paramCharSequence;
      return this;
    }
    
    public Builder setTitle(@Nullable CharSequence paramCharSequence)
    {
      b = paramCharSequence;
      return this;
    }
  }
}
