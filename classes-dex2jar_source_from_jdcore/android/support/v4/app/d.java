package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable
{
  public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator()
  {
    public d a(Parcel paramAnonymousParcel)
    {
      return new d(paramAnonymousParcel);
    }
    
    public d[] a(int paramAnonymousInt)
    {
      return new d[paramAnonymousInt];
    }
  };
  e[] a;
  int[] b;
  b[] c;
  int d = -1;
  int e;
  
  public d() {}
  
  public d(Parcel paramParcel)
  {
    a = ((e[])paramParcel.createTypedArray(e.CREATOR));
    b = paramParcel.createIntArray();
    c = ((b[])paramParcel.createTypedArray(b.CREATOR));
    d = paramParcel.readInt();
    e = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(a, paramInt);
    paramParcel.writeIntArray(b);
    paramParcel.writeTypedArray(c, paramInt);
    paramParcel.writeInt(d);
    paramParcel.writeInt(e);
  }
}
