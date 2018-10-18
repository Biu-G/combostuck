package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class g
  implements Parcelable.Creator<MarkerOptions>
{
  g() {}
  
  public MarkerOptions a(Parcel paramParcel)
  {
    MarkerOptions localMarkerOptions = new MarkerOptions();
    localMarkerOptions.position((LatLng)paramParcel.readParcelable(LatLng.class.getClassLoader()));
    localMarkerOptions.icon((BitmapDescriptor)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    localMarkerOptions.title(paramParcel.readString());
    localMarkerOptions.snippet(paramParcel.readString());
    localMarkerOptions.anchor(paramParcel.readFloat(), paramParcel.readFloat());
    int i = paramParcel.readByte();
    boolean bool2 = false;
    if (i == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    localMarkerOptions.visible(bool1);
    if (paramParcel.readByte() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    localMarkerOptions.draggable(bool1);
    boolean bool1 = bool2;
    if (paramParcel.readByte() == 1) {
      bool1 = true;
    }
    localMarkerOptions.setGps(bool1);
    a = paramParcel.readString();
    localMarkerOptions.zIndex(paramParcel.readFloat());
    localMarkerOptions.icons(paramParcel.createTypedArrayList(BitmapDescriptor.a));
    return localMarkerOptions;
  }
  
  public MarkerOptions[] a(int paramInt)
  {
    return new MarkerOptions[paramInt];
  }
}
