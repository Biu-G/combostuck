package android.support.v4.media;

import android.media.Rating;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class RatingCompat
  implements Parcelable
{
  public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator()
  {
    public RatingCompat a(Parcel paramAnonymousParcel)
    {
      return new RatingCompat(paramAnonymousParcel.readInt(), paramAnonymousParcel.readFloat());
    }
    
    public RatingCompat[] a(int paramAnonymousInt)
    {
      return new RatingCompat[paramAnonymousInt];
    }
  };
  public static final int RATING_3_STARS = 3;
  public static final int RATING_4_STARS = 4;
  public static final int RATING_5_STARS = 5;
  public static final int RATING_HEART = 1;
  public static final int RATING_NONE = 0;
  public static final int RATING_PERCENTAGE = 6;
  public static final int RATING_THUMB_UP_DOWN = 2;
  private final int a;
  private final float b;
  private Object c;
  
  RatingCompat(int paramInt, float paramFloat)
  {
    a = paramInt;
    b = paramFloat;
  }
  
  public static RatingCompat fromRating(Object paramObject)
  {
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 19))
    {
      Object localObject = (Rating)paramObject;
      int i = ((Rating)localObject).getRatingStyle();
      if (((Rating)localObject).isRated()) {
        switch (i)
        {
        default: 
          return null;
        case 6: 
          localObject = newPercentageRating(((Rating)localObject).getPercentRating());
          break;
        case 3: 
        case 4: 
        case 5: 
          localObject = newStarRating(i, ((Rating)localObject).getStarRating());
          break;
        case 2: 
          localObject = newThumbRating(((Rating)localObject).isThumbUp());
          break;
        case 1: 
          localObject = newHeartRating(((Rating)localObject).hasHeart());
          break;
        }
      } else {
        localObject = newUnratedRating(i);
      }
      c = paramObject;
      return localObject;
    }
    return null;
  }
  
  public static RatingCompat newHeartRating(boolean paramBoolean)
  {
    float f;
    if (paramBoolean) {
      f = 1.0F;
    } else {
      f = 0.0F;
    }
    return new RatingCompat(1, f);
  }
  
  public static RatingCompat newPercentageRating(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 100.0F)) {
      return new RatingCompat(6, paramFloat);
    }
    Log.e("Rating", "Invalid percentage-based rating value");
    return null;
  }
  
  public static RatingCompat newStarRating(int paramInt, float paramFloat)
  {
    float f;
    switch (paramInt)
    {
    default: 
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid rating style (");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(") for a star rating");
      Log.e("Rating", localStringBuilder.toString());
      return null;
    case 5: 
      f = 5.0F;
      break;
    case 4: 
      f = 4.0F;
      break;
    case 3: 
      f = 3.0F;
    }
    if ((paramFloat >= 0.0F) && (paramFloat <= f)) {
      return new RatingCompat(paramInt, paramFloat);
    }
    Log.e("Rating", "Trying to set out of range star-based rating");
    return null;
  }
  
  public static RatingCompat newThumbRating(boolean paramBoolean)
  {
    float f;
    if (paramBoolean) {
      f = 1.0F;
    } else {
      f = 0.0F;
    }
    return new RatingCompat(2, f);
  }
  
  public static RatingCompat newUnratedRating(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new RatingCompat(paramInt, -1.0F);
  }
  
  public int describeContents()
  {
    return a;
  }
  
  public float getPercentRating()
  {
    if ((a == 6) && (isRated())) {
      return b;
    }
    return -1.0F;
  }
  
  public Object getRating()
  {
    if ((c == null) && (Build.VERSION.SDK_INT >= 19)) {
      if (isRated()) {
        switch (a)
        {
        default: 
          return null;
        case 6: 
          c = Rating.newPercentageRating(getPercentRating());
          break;
        case 3: 
        case 4: 
        case 5: 
          c = Rating.newStarRating(a, getStarRating());
          break;
        case 2: 
          c = Rating.newThumbRating(isThumbUp());
          break;
        case 1: 
          c = Rating.newHeartRating(hasHeart());
          break;
        }
      } else {
        c = Rating.newUnratedRating(a);
      }
    }
    return c;
  }
  
  public int getRatingStyle()
  {
    return a;
  }
  
  public float getStarRating()
  {
    switch (a)
    {
    default: 
      break;
    case 3: 
    case 4: 
    case 5: 
      if (isRated()) {
        return b;
      }
      break;
    }
    return -1.0F;
  }
  
  public boolean hasHeart()
  {
    int i = a;
    boolean bool = false;
    if (i != 1) {
      return false;
    }
    if (b == 1.0F) {
      bool = true;
    }
    return bool;
  }
  
  public boolean isRated()
  {
    return b >= 0.0F;
  }
  
  public boolean isThumbUp()
  {
    int i = a;
    boolean bool = false;
    if (i != 2) {
      return false;
    }
    if (b == 1.0F) {
      bool = true;
    }
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Rating:style=");
    localStringBuilder.append(a);
    localStringBuilder.append(" rating=");
    String str;
    if (b < 0.0F) {
      str = "unrated";
    } else {
      str = String.valueOf(b);
    }
    localStringBuilder.append(str);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeFloat(b);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface StarStyle {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Style {}
}
