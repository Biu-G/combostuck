package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

class i
  implements Parcelable.Creator<PolylineOptions>
{
  i() {}
  
  public PolylineOptions a(Parcel paramParcel)
  {
    PolylineOptions localPolylineOptions = new PolylineOptions();
    ArrayList localArrayList = new ArrayList();
    paramParcel.readTypedList(localArrayList, LatLng.CREATOR);
    float f1 = paramParcel.readFloat();
    int i = paramParcel.readInt();
    float f2 = paramParcel.readFloat();
    int j = paramParcel.readByte();
    boolean bool2 = false;
    boolean bool1;
    if (j == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    localPolylineOptions.addAll(localArrayList);
    localPolylineOptions.width(f1);
    localPolylineOptions.color(i);
    localPolylineOptions.zIndex(f2);
    localPolylineOptions.visible(bool1);
    a = paramParcel.readString();
    if (paramParcel.readByte() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    if (paramParcel.readByte() == 1) {
      bool2 = true;
    }
    localPolylineOptions.geodesic(bool1);
    localPolylineOptions.setDottedLine(bool2);
    return localPolylineOptions;
  }
  
  public PolylineOptions[] a(int paramInt)
  {
    return new PolylineOptions[paramInt];
  }
}
