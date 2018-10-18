package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.RestrictTo;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public class ParcelImpl
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelImpl> CREATOR = new Parcelable.Creator()
  {
    public ParcelImpl a(Parcel paramAnonymousParcel)
    {
      return new ParcelImpl(paramAnonymousParcel);
    }
    
    public ParcelImpl[] a(int paramAnonymousInt)
    {
      return new ParcelImpl[paramAnonymousInt];
    }
  };
  private final VersionedParcelable a;
  
  protected ParcelImpl(Parcel paramParcel)
  {
    a = new a(paramParcel).readVersionedParcelable();
  }
  
  public ParcelImpl(VersionedParcelable paramVersionedParcelable)
  {
    a = paramVersionedParcelable;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public <T extends VersionedParcelable> T getVersionedParcel()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    new a(paramParcel).writeVersionedParcelable(a);
  }
}
