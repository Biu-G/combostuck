package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class k
  implements Parcelable.Creator<TileOverlayOptions>
{
  k() {}
  
  public TileOverlayOptions a(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    TileProvider localTileProvider = (TileProvider)paramParcel.readValue(TileProvider.class.getClassLoader());
    int j = paramParcel.readByte();
    boolean bool3 = false;
    boolean bool1;
    if (j != 0) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    float f = paramParcel.readFloat();
    j = paramParcel.readInt();
    int k = paramParcel.readInt();
    String str = paramParcel.readString();
    boolean bool2;
    if (paramParcel.readByte() != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    if (paramParcel.readByte() != 0) {
      bool3 = true;
    }
    paramParcel = new TileOverlayOptions(i, null, bool1, f);
    if (localTileProvider != null) {
      paramParcel.tileProvider(localTileProvider);
    }
    paramParcel.memCacheSize(j);
    paramParcel.diskCacheSize(k);
    paramParcel.diskCacheDir(str);
    paramParcel.memoryCacheEnabled(bool2);
    paramParcel.diskCacheEnabled(bool3);
    return paramParcel;
  }
  
  public TileOverlayOptions[] a(int paramInt)
  {
    return new TileOverlayOptions[paramInt];
  }
}
