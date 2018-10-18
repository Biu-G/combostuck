package com.amap.api.maps2d.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class c
  implements Parcelable.Creator<CircleOptions>
{
  c() {}
  
  public CircleOptions a(Parcel paramParcel)
  {
    CircleOptions localCircleOptions = new CircleOptions();
    Bundle localBundle = paramParcel.readBundle();
    localCircleOptions.center(new LatLng(localBundle.getDouble("lat"), localBundle.getDouble("lng")));
    localCircleOptions.radius(paramParcel.readDouble());
    localCircleOptions.strokeWidth(paramParcel.readFloat());
    localCircleOptions.strokeColor(paramParcel.readInt());
    localCircleOptions.fillColor(paramParcel.readInt());
    localCircleOptions.zIndex(paramParcel.readInt());
    int i = paramParcel.readByte();
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    localCircleOptions.visible(bool);
    a = paramParcel.readString();
    return localCircleOptions;
  }
  
  public CircleOptions[] a(int paramInt)
  {
    return new CircleOptions[paramInt];
  }
}
