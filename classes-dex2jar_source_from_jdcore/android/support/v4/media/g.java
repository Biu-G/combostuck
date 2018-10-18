package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.RequiresApi;

@RequiresApi(21)
class g
{
  public static Object a(Parcel paramParcel)
  {
    return MediaDescription.CREATOR.createFromParcel(paramParcel);
  }
  
  public static String a(Object paramObject)
  {
    return ((MediaDescription)paramObject).getMediaId();
  }
  
  public static void a(Object paramObject, Parcel paramParcel, int paramInt)
  {
    ((MediaDescription)paramObject).writeToParcel(paramParcel, paramInt);
  }
  
  public static CharSequence b(Object paramObject)
  {
    return ((MediaDescription)paramObject).getTitle();
  }
  
  public static CharSequence c(Object paramObject)
  {
    return ((MediaDescription)paramObject).getSubtitle();
  }
  
  public static CharSequence d(Object paramObject)
  {
    return ((MediaDescription)paramObject).getDescription();
  }
  
  public static Bitmap e(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconBitmap();
  }
  
  public static Uri f(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconUri();
  }
  
  public static Bundle g(Object paramObject)
  {
    return ((MediaDescription)paramObject).getExtras();
  }
  
  static class a
  {
    public static Object a()
    {
      return new MediaDescription.Builder();
    }
    
    public static Object a(Object paramObject)
    {
      return ((MediaDescription.Builder)paramObject).build();
    }
    
    public static void a(Object paramObject, Bitmap paramBitmap)
    {
      ((MediaDescription.Builder)paramObject).setIconBitmap(paramBitmap);
    }
    
    public static void a(Object paramObject, Uri paramUri)
    {
      ((MediaDescription.Builder)paramObject).setIconUri(paramUri);
    }
    
    public static void a(Object paramObject, Bundle paramBundle)
    {
      ((MediaDescription.Builder)paramObject).setExtras(paramBundle);
    }
    
    public static void a(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setTitle(paramCharSequence);
    }
    
    public static void a(Object paramObject, String paramString)
    {
      ((MediaDescription.Builder)paramObject).setMediaId(paramString);
    }
    
    public static void b(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setSubtitle(paramCharSequence);
    }
    
    public static void c(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setDescription(paramCharSequence);
    }
  }
}
