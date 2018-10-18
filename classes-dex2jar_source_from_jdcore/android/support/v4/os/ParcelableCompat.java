package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;

@Deprecated
public final class ParcelableCompat
{
  private ParcelableCompat() {}
  
  @Deprecated
  public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks)
  {
    return new a(paramParcelableCompatCreatorCallbacks);
  }
  
  static class a<T>
    implements Parcelable.ClassLoaderCreator<T>
  {
    private final ParcelableCompatCreatorCallbacks<T> a;
    
    a(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks)
    {
      a = paramParcelableCompatCreatorCallbacks;
    }
    
    public T createFromParcel(Parcel paramParcel)
    {
      return a.createFromParcel(paramParcel, null);
    }
    
    public T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      return a.createFromParcel(paramParcel, paramClassLoader);
    }
    
    public T[] newArray(int paramInt)
    {
      return a.newArray(paramInt);
    }
  }
}
