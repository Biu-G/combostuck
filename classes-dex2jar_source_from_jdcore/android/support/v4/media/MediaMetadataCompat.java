package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.Set;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator()
  {
    public MediaMetadataCompat a(Parcel paramAnonymousParcel)
    {
      return new MediaMetadataCompat(paramAnonymousParcel);
    }
    
    public MediaMetadataCompat[] a(int paramAnonymousInt)
    {
      return new MediaMetadataCompat[paramAnonymousInt];
    }
  };
  public static final String METADATA_KEY_ADVERTISEMENT = "android.media.metadata.ADVERTISEMENT";
  public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
  public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
  public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
  public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
  public static final String METADATA_KEY_ART = "android.media.metadata.ART";
  public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
  public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
  public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
  public static final String METADATA_KEY_BT_FOLDER_TYPE = "android.media.metadata.BT_FOLDER_TYPE";
  public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
  public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
  public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
  public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
  public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
  public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
  public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
  public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
  public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
  public static final String METADATA_KEY_DOWNLOAD_STATUS = "android.media.metadata.DOWNLOAD_STATUS";
  public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
  public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
  public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
  public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
  public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
  public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
  public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
  public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
  public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  static final ArrayMap<String, Integer> a = new ArrayMap();
  private static final String[] c;
  private static final String[] d;
  private static final String[] e;
  final Bundle b;
  private Object f;
  private MediaDescriptionCompat g;
  
  static
  {
    a.put("android.media.metadata.TITLE", Integer.valueOf(1));
    a.put("android.media.metadata.ARTIST", Integer.valueOf(1));
    a.put("android.media.metadata.DURATION", Integer.valueOf(0));
    a.put("android.media.metadata.ALBUM", Integer.valueOf(1));
    a.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
    a.put("android.media.metadata.WRITER", Integer.valueOf(1));
    a.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
    a.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
    a.put("android.media.metadata.DATE", Integer.valueOf(1));
    a.put("android.media.metadata.YEAR", Integer.valueOf(0));
    a.put("android.media.metadata.GENRE", Integer.valueOf(1));
    a.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
    a.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
    a.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
    a.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
    a.put("android.media.metadata.ART", Integer.valueOf(2));
    a.put("android.media.metadata.ART_URI", Integer.valueOf(1));
    a.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
    a.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
    a.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
    a.put("android.media.metadata.RATING", Integer.valueOf(3));
    a.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
    a.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
    a.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
    a.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
    a.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
    a.put("android.media.metadata.MEDIA_ID", Integer.valueOf(1));
    a.put("android.media.metadata.BT_FOLDER_TYPE", Integer.valueOf(0));
    a.put("android.media.metadata.MEDIA_URI", Integer.valueOf(1));
    a.put("android.media.metadata.ADVERTISEMENT", Integer.valueOf(0));
    a.put("android.media.metadata.DOWNLOAD_STATUS", Integer.valueOf(0));
    c = new String[] { "android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER" };
    d = new String[] { "android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART" };
    e = new String[] { "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI" };
  }
  
  MediaMetadataCompat(Bundle paramBundle)
  {
    b = new Bundle(paramBundle);
    MediaSessionCompat.ensureClassLoader(b);
  }
  
  MediaMetadataCompat(Parcel paramParcel)
  {
    b = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
  }
  
  public static MediaMetadataCompat fromMediaMetadata(Object paramObject)
  {
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      Parcel localParcel = Parcel.obtain();
      MediaMetadataCompatApi21.a(paramObject, localParcel, 0);
      localParcel.setDataPosition(0);
      MediaMetadataCompat localMediaMetadataCompat = (MediaMetadataCompat)CREATOR.createFromParcel(localParcel);
      localParcel.recycle();
      f = paramObject;
      return localMediaMetadataCompat;
    }
    return null;
  }
  
  public boolean containsKey(String paramString)
  {
    return b.containsKey(paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap(String paramString)
  {
    try
    {
      paramString = (Bitmap)b.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", paramString);
    }
    return null;
  }
  
  public Bundle getBundle()
  {
    return new Bundle(b);
  }
  
  public MediaDescriptionCompat getDescription()
  {
    if (g != null) {
      return g;
    }
    String str = getString("android.media.metadata.MEDIA_ID");
    CharSequence[] arrayOfCharSequence = new CharSequence[3];
    Object localObject1 = getText("android.media.metadata.DISPLAY_TITLE");
    int j;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      arrayOfCharSequence[0] = localObject1;
      arrayOfCharSequence[1] = getText("android.media.metadata.DISPLAY_SUBTITLE");
      arrayOfCharSequence[2] = getText("android.media.metadata.DISPLAY_DESCRIPTION");
    }
    else
    {
      j = 0;
      i = 0;
      while ((j < arrayOfCharSequence.length) && (i < c.length))
      {
        localObject1 = getText(c[i]);
        int k = j;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          arrayOfCharSequence[j] = localObject1;
          k = j + 1;
        }
        i += 1;
        j = k;
      }
    }
    int i = 0;
    Uri localUri;
    for (;;)
    {
      j = d.length;
      localUri = null;
      if (i >= j) {
        break;
      }
      localObject1 = getBitmap(d[i]);
      if (localObject1 != null) {
        break label174;
      }
      i += 1;
    }
    localObject1 = null;
    label174:
    i = 0;
    while (i < e.length)
    {
      localObject2 = getString(e[i]);
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = Uri.parse((String)localObject2);
        break label223;
      }
      i += 1;
    }
    Object localObject2 = null;
    label223:
    Object localObject3 = getString("android.media.metadata.MEDIA_URI");
    if (!TextUtils.isEmpty((CharSequence)localObject3)) {
      localUri = Uri.parse((String)localObject3);
    }
    localObject3 = new MediaDescriptionCompat.Builder();
    ((MediaDescriptionCompat.Builder)localObject3).setMediaId(str);
    ((MediaDescriptionCompat.Builder)localObject3).setTitle(arrayOfCharSequence[0]);
    ((MediaDescriptionCompat.Builder)localObject3).setSubtitle(arrayOfCharSequence[1]);
    ((MediaDescriptionCompat.Builder)localObject3).setDescription(arrayOfCharSequence[2]);
    ((MediaDescriptionCompat.Builder)localObject3).setIconBitmap((Bitmap)localObject1);
    ((MediaDescriptionCompat.Builder)localObject3).setIconUri((Uri)localObject2);
    ((MediaDescriptionCompat.Builder)localObject3).setMediaUri(localUri);
    localObject1 = new Bundle();
    if (b.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
      ((Bundle)localObject1).putLong("android.media.extra.BT_FOLDER_TYPE", getLong("android.media.metadata.BT_FOLDER_TYPE"));
    }
    if (b.containsKey("android.media.metadata.DOWNLOAD_STATUS")) {
      ((Bundle)localObject1).putLong("android.media.extra.DOWNLOAD_STATUS", getLong("android.media.metadata.DOWNLOAD_STATUS"));
    }
    if (!((Bundle)localObject1).isEmpty()) {
      ((MediaDescriptionCompat.Builder)localObject3).setExtras((Bundle)localObject1);
    }
    g = ((MediaDescriptionCompat.Builder)localObject3).build();
    return g;
  }
  
  public long getLong(String paramString)
  {
    return b.getLong(paramString, 0L);
  }
  
  public Object getMediaMetadata()
  {
    if ((f == null) && (Build.VERSION.SDK_INT >= 21))
    {
      Parcel localParcel = Parcel.obtain();
      writeToParcel(localParcel, 0);
      localParcel.setDataPosition(0);
      f = MediaMetadataCompatApi21.a(localParcel);
      localParcel.recycle();
    }
    return f;
  }
  
  public RatingCompat getRating(String paramString)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 19) {
        return RatingCompat.fromRating(b.getParcelable(paramString));
      }
      paramString = (RatingCompat)b.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", paramString);
    }
    return null;
  }
  
  public String getString(String paramString)
  {
    paramString = b.getCharSequence(paramString);
    if (paramString != null) {
      return paramString.toString();
    }
    return null;
  }
  
  public CharSequence getText(String paramString)
  {
    return b.getCharSequence(paramString);
  }
  
  public Set<String> keySet()
  {
    return b.keySet();
  }
  
  public int size()
  {
    return b.size();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(b);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface BitmapKey {}
  
  public static final class Builder
  {
    private final Bundle a;
    
    public Builder()
    {
      a = new Bundle();
    }
    
    public Builder(MediaMetadataCompat paramMediaMetadataCompat)
    {
      a = new Bundle(b);
      MediaSessionCompat.ensureClassLoader(a);
    }
    
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public Builder(MediaMetadataCompat paramMediaMetadataCompat, int paramInt)
    {
      this(paramMediaMetadataCompat);
      paramMediaMetadataCompat = a.keySet().iterator();
      while (paramMediaMetadataCompat.hasNext())
      {
        String str = (String)paramMediaMetadataCompat.next();
        Object localObject = a.get(str);
        if ((localObject instanceof Bitmap))
        {
          localObject = (Bitmap)localObject;
          if ((((Bitmap)localObject).getHeight() > paramInt) || (((Bitmap)localObject).getWidth() > paramInt)) {
            putBitmap(str, a((Bitmap)localObject, paramInt));
          }
        }
      }
    }
    
    private Bitmap a(Bitmap paramBitmap, int paramInt)
    {
      float f = paramInt;
      f = Math.min(f / paramBitmap.getWidth(), f / paramBitmap.getHeight());
      paramInt = (int)(paramBitmap.getHeight() * f);
      return Bitmap.createScaledBitmap(paramBitmap, (int)(paramBitmap.getWidth() * f), paramInt, true);
    }
    
    public MediaMetadataCompat build()
    {
      return new MediaMetadataCompat(a);
    }
    
    public Builder putBitmap(String paramString, Bitmap paramBitmap)
    {
      if ((MediaMetadataCompat.a.containsKey(paramString)) && (((Integer)MediaMetadataCompat.a.get(paramString)).intValue() != 2))
      {
        paramBitmap = new StringBuilder();
        paramBitmap.append("The ");
        paramBitmap.append(paramString);
        paramBitmap.append(" key cannot be used to put a Bitmap");
        throw new IllegalArgumentException(paramBitmap.toString());
      }
      a.putParcelable(paramString, paramBitmap);
      return this;
    }
    
    public Builder putLong(String paramString, long paramLong)
    {
      if ((MediaMetadataCompat.a.containsKey(paramString)) && (((Integer)MediaMetadataCompat.a.get(paramString)).intValue() != 0))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("The ");
        localStringBuilder.append(paramString);
        localStringBuilder.append(" key cannot be used to put a long");
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      a.putLong(paramString, paramLong);
      return this;
    }
    
    public Builder putRating(String paramString, RatingCompat paramRatingCompat)
    {
      if ((MediaMetadataCompat.a.containsKey(paramString)) && (((Integer)MediaMetadataCompat.a.get(paramString)).intValue() != 3))
      {
        paramRatingCompat = new StringBuilder();
        paramRatingCompat.append("The ");
        paramRatingCompat.append(paramString);
        paramRatingCompat.append(" key cannot be used to put a Rating");
        throw new IllegalArgumentException(paramRatingCompat.toString());
      }
      if (Build.VERSION.SDK_INT >= 19)
      {
        a.putParcelable(paramString, (Parcelable)paramRatingCompat.getRating());
        return this;
      }
      a.putParcelable(paramString, paramRatingCompat);
      return this;
    }
    
    public Builder putString(String paramString1, String paramString2)
    {
      if ((MediaMetadataCompat.a.containsKey(paramString1)) && (((Integer)MediaMetadataCompat.a.get(paramString1)).intValue() != 1))
      {
        paramString2 = new StringBuilder();
        paramString2.append("The ");
        paramString2.append(paramString1);
        paramString2.append(" key cannot be used to put a String");
        throw new IllegalArgumentException(paramString2.toString());
      }
      a.putCharSequence(paramString1, paramString2);
      return this;
    }
    
    public Builder putText(String paramString, CharSequence paramCharSequence)
    {
      if ((MediaMetadataCompat.a.containsKey(paramString)) && (((Integer)MediaMetadataCompat.a.get(paramString)).intValue() != 1))
      {
        paramCharSequence = new StringBuilder();
        paramCharSequence.append("The ");
        paramCharSequence.append(paramString);
        paramCharSequence.append(" key cannot be used to put a CharSequence");
        throw new IllegalArgumentException(paramCharSequence.toString());
      }
      a.putCharSequence(paramString, paramCharSequence);
      return this;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface LongKey {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface RatingKey {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface TextKey {}
}
