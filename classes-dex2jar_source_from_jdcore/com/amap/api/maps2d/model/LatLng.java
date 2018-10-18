package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

public final class LatLng
  implements Parcelable, Cloneable
{
  public static final f CREATOR = new f();
  private static DecimalFormat a = new DecimalFormat("0.000000", new DecimalFormatSymbols(Locale.US));
  public final double latitude;
  public final double longitude;
  
  public LatLng(double paramDouble1, double paramDouble2)
  {
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D)) {
      longitude = a(paramDouble2);
    } else {
      longitude = a(((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D);
    }
    latitude = a(Math.max(-90.0D, Math.min(90.0D, paramDouble1)));
  }
  
  private static double a(double paramDouble)
  {
    try
    {
      double d = Double.parseDouble(a.format(paramDouble));
      return d;
    }
    catch (Throwable localThrowable) {}
    return paramDouble;
  }
  
  public LatLng clone()
  {
    return new LatLng(latitude, longitude);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof LatLng)) {
      return false;
    }
    paramObject = (LatLng)paramObject;
    return (Double.doubleToLongBits(latitude) == Double.doubleToLongBits(latitude)) && (Double.doubleToLongBits(longitude) == Double.doubleToLongBits(longitude));
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(latitude);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(longitude);
    return (i + 31) * 31 + (int)(l >>> 32 ^ l);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("lat/lng: (");
    localStringBuilder.append(latitude);
    localStringBuilder.append(",");
    localStringBuilder.append(longitude);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(longitude);
    paramParcel.writeDouble(latitude);
  }
}
