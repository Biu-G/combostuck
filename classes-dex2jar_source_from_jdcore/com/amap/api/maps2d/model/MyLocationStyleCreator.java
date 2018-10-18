package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class MyLocationStyleCreator
  implements Parcelable.Creator<MyLocationStyle>
{
  public MyLocationStyleCreator() {}
  
  public MyLocationStyle createFromParcel(Parcel paramParcel)
  {
    MyLocationStyle localMyLocationStyle = new MyLocationStyle();
    localMyLocationStyle.myLocationIcon((BitmapDescriptor)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    localMyLocationStyle.anchor(paramParcel.readFloat(), paramParcel.readFloat());
    localMyLocationStyle.radiusFillColor(paramParcel.readInt());
    localMyLocationStyle.strokeColor(paramParcel.readInt());
    localMyLocationStyle.strokeWidth(paramParcel.readFloat());
    return localMyLocationStyle;
  }
  
  public MyLocationStyle[] newArray(int paramInt)
  {
    return new MyLocationStyle[paramInt];
  }
}
