package com.amap.api.maps2d.model;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.amap.api.mapcore2d.cm;

public final class BitmapDescriptor
  implements Parcelable, Cloneable
{
  static final a a = new a();
  int b = 0;
  int c = 0;
  Bitmap d;
  
  BitmapDescriptor(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      b = paramBitmap.getWidth();
      c = paramBitmap.getHeight();
      d = paramBitmap;
    }
  }
  
  private BitmapDescriptor(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramBitmap;
  }
  
  public BitmapDescriptor clone()
  {
    try
    {
      BitmapDescriptor localBitmapDescriptor = new BitmapDescriptor(Bitmap.createBitmap(d), b, c);
      return localBitmapDescriptor;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "BitmapDescriptor", "clone");
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap()
  {
    return d;
  }
  
  public int getHeight()
  {
    return c;
  }
  
  public int getWidth()
  {
    return b;
  }
  
  public void recycle()
  {
    if ((d != null) && (!d.isRecycled()))
    {
      d.recycle();
      d = null;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(d, paramInt);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
  }
}
