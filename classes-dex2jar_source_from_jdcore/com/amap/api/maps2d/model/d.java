package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class d
  implements Parcelable.Creator<GroundOverlayOptions>
{
  d() {}
  
  public GroundOverlayOptions a(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    BitmapDescriptor localBitmapDescriptor = (BitmapDescriptor)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader());
    LatLng localLatLng = (LatLng)paramParcel.readParcelable(LatLng.class.getClassLoader());
    float f1 = paramParcel.readFloat();
    float f2 = paramParcel.readFloat();
    LatLngBounds localLatLngBounds = (LatLngBounds)paramParcel.readParcelable(LatLngBounds.class.getClassLoader());
    float f3 = paramParcel.readFloat();
    float f4 = paramParcel.readFloat();
    boolean bool;
    if (paramParcel.readByte() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    paramParcel = new GroundOverlayOptions(i, null, localLatLng, f1, f2, localLatLngBounds, f3, f4, bool, paramParcel.readFloat(), paramParcel.readFloat(), paramParcel.readFloat());
    paramParcel.image(localBitmapDescriptor);
    return paramParcel;
  }
  
  public GroundOverlayOptions[] a(int paramInt)
  {
    return new GroundOverlayOptions[paramInt];
  }
}
