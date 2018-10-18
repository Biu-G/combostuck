package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class f
  implements Parcelable.Creator<LatLng>
{
  f() {}
  
  public LatLng a(Parcel paramParcel)
  {
    double d = paramParcel.readDouble();
    return new LatLng(paramParcel.readDouble(), d);
  }
  
  public LatLng[] a(int paramInt)
  {
    return new LatLng[paramInt];
  }
}
