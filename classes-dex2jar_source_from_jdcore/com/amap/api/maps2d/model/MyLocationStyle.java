package com.amap.api.maps2d.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;

public class MyLocationStyle
  implements Parcelable
{
  public static final MyLocationStyleCreator CREATOR = new MyLocationStyleCreator();
  public static final String ERROR_CODE = "errorCode";
  public static final String ERROR_INFO = "errorInfo";
  public static final String LOCATION_TYPE = "locationType";
  public static final int LOCATION_TYPE_FOLLOW = 2;
  public static final int LOCATION_TYPE_FOLLOW_NO_CENTER = 6;
  public static final int LOCATION_TYPE_LOCATE = 1;
  public static final int LOCATION_TYPE_SHOW = 0;
  private BitmapDescriptor a;
  private float b = 0.5F;
  private float c = 0.5F;
  private int d = Color.argb(100, 0, 0, 180);
  private int e = Color.argb(255, 0, 0, 220);
  private float f = 1.0F;
  private int g = 1;
  private long h = 2000L;
  private boolean i = true;
  
  public MyLocationStyle() {}
  
  public MyLocationStyle anchor(float paramFloat1, float paramFloat2)
  {
    b = paramFloat1;
    c = paramFloat2;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getAnchorU()
  {
    return b;
  }
  
  public float getAnchorV()
  {
    return c;
  }
  
  public long getInterval()
  {
    return h;
  }
  
  public BitmapDescriptor getMyLocationIcon()
  {
    return a;
  }
  
  public int getMyLocationType()
  {
    return g;
  }
  
  public int getRadiusFillColor()
  {
    return d;
  }
  
  public int getStrokeColor()
  {
    return e;
  }
  
  public float getStrokeWidth()
  {
    return f;
  }
  
  public MyLocationStyle interval(long paramLong)
  {
    h = paramLong;
    return this;
  }
  
  public boolean isMyLocationShowing()
  {
    return i;
  }
  
  public MyLocationStyle myLocationIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    a = paramBitmapDescriptor;
    return this;
  }
  
  public MyLocationStyle myLocationType(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public MyLocationStyle radiusFillColor(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public MyLocationStyle showMyLocation(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public MyLocationStyle strokeColor(int paramInt)
  {
    e = paramInt;
    return this;
  }
  
  public MyLocationStyle strokeWidth(float paramFloat)
  {
    f = paramFloat;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, paramInt);
    paramParcel.writeFloat(b);
    paramParcel.writeFloat(c);
    paramParcel.writeInt(d);
    paramParcel.writeInt(e);
    paramParcel.writeFloat(f);
    paramParcel.writeInt(g);
    paramParcel.writeLong(h);
    paramParcel.writeBooleanArray(new boolean[] { i });
  }
}
