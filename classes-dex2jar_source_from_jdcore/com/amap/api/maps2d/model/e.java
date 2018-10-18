package com.amap.api.maps2d.model;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.mapcore2d.cm;
import com.amap.api.maps2d.AMapException;

class e
  implements Parcelable.Creator<LatLngBounds>
{
  e() {}
  
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(paramLatLngBounds.a());
    paramParcel.writeParcelable(southwest, paramInt);
    paramParcel.writeParcelable(northeast, paramInt);
  }
  
  public LatLngBounds a(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    try
    {
      Object localObject = (LatLng)paramParcel.readParcelable(LatLngBounds.class.getClassLoader());
      try
      {
        LatLng localLatLng2 = (LatLng)paramParcel.readParcelable(LatLngBounds.class.getClassLoader());
        paramParcel = (Parcel)localObject;
        localObject = localLatLng2;
      }
      catch (BadParcelableException localBadParcelableException2)
      {
        paramParcel = (Parcel)localObject;
        localObject = localBadParcelableException2;
      }
      cm.a(localBadParcelableException1, "LatLngBoundsCreator", "createFromParcel");
    }
    catch (BadParcelableException localBadParcelableException1)
    {
      paramParcel = null;
    }
    LatLng localLatLng1 = null;
    try
    {
      paramParcel = new LatLngBounds(i, paramParcel, localLatLng1);
      return paramParcel;
    }
    catch (AMapException paramParcel)
    {
      paramParcel.printStackTrace();
    }
    return null;
  }
  
  public LatLngBounds[] a(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}
