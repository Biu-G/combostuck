package com.amap.api.maps2d.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class a
  implements Parcelable.Creator<BitmapDescriptor>
{
  a() {}
  
  public BitmapDescriptor a(Parcel paramParcel)
  {
    BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(null);
    d = ((Bitmap)paramParcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    return localBitmapDescriptor;
  }
  
  public BitmapDescriptor[] a(int paramInt)
  {
    return new BitmapDescriptor[paramInt];
  }
}
