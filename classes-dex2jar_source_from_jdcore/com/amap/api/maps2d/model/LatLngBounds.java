package com.amap.api.maps2d.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.amap.api.mapcore2d.cm;
import com.amap.api.maps2d.AMapException;

public final class LatLngBounds
  implements Parcelable
{
  public static final e CREATOR = new e();
  private final int a;
  public final LatLng northeast;
  public final LatLng southwest;
  
  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
    throws AMapException
  {
    if (paramLatLng1 != null)
    {
      if (paramLatLng2 != null)
      {
        if (latitude >= latitude)
        {
          a = paramInt;
          southwest = paramLatLng1;
          northeast = paramLatLng2;
          return;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("southern latitude exceeds northern latitude (");
        localStringBuilder.append(latitude);
        localStringBuilder.append(" > ");
        localStringBuilder.append(latitude);
        localStringBuilder.append(")");
        throw new AMapException(localStringBuilder.toString());
      }
      throw new AMapException("null northeast");
    }
    throw new AMapException("null southwest");
  }
  
  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
    throws AMapException
  {
    this(1, paramLatLng1, paramLatLng2);
  }
  
  private boolean a(double paramDouble)
  {
    return (southwest.latitude <= paramDouble) && (paramDouble <= northeast.latitude);
  }
  
  private boolean a(LatLngBounds paramLatLngBounds)
  {
    boolean bool2 = false;
    if ((paramLatLngBounds != null) && (northeast != null) && (southwest != null) && (northeast != null))
    {
      if (southwest == null) {
        return false;
      }
      double d1 = northeast.longitude;
      double d2 = southwest.longitude;
      double d3 = northeast.longitude;
      double d4 = southwest.longitude;
      double d5 = northeast.longitude;
      double d6 = southwest.longitude;
      double d7 = northeast.longitude;
      double d8 = southwest.longitude;
      double d9 = northeast.latitude;
      double d10 = southwest.latitude;
      double d11 = northeast.latitude;
      double d12 = southwest.latitude;
      double d13 = northeast.latitude;
      double d14 = southwest.latitude;
      double d15 = northeast.latitude;
      double d16 = southwest.latitude;
      boolean bool1 = bool2;
      if (Math.abs(d1 + d2 - d3 - d4) < d5 - d6 + d7 - d8)
      {
        bool1 = bool2;
        if (Math.abs(d9 + d10 - d11 - d12) < d13 - d14 + d15 - d16) {
          bool1 = true;
        }
      }
      return bool1;
    }
    return false;
  }
  
  private boolean b(double paramDouble)
  {
    double d1 = southwest.longitude;
    double d2 = northeast.longitude;
    boolean bool = true;
    if (d1 <= d2) {
      return (southwest.longitude <= paramDouble) && (paramDouble <= northeast.longitude);
    }
    if (southwest.longitude > paramDouble)
    {
      if (paramDouble <= northeast.longitude) {
        return true;
      }
      bool = false;
    }
    return bool;
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  private static double c(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }
  
  private static double d(double paramDouble1, double paramDouble2)
  {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }
  
  int a()
  {
    return a;
  }
  
  public boolean contains(LatLng paramLatLng)
  {
    boolean bool2 = false;
    if (paramLatLng == null) {
      return false;
    }
    boolean bool1 = bool2;
    if (a(latitude))
    {
      bool1 = bool2;
      if (b(longitude)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean contains(LatLngBounds paramLatLngBounds)
  {
    boolean bool2 = false;
    if (paramLatLngBounds == null) {
      return false;
    }
    boolean bool1 = bool2;
    if (contains(southwest))
    {
      bool1 = bool2;
      if (contains(northeast)) {
        bool1 = true;
      }
    }
    return bool1;
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
    if (!(paramObject instanceof LatLngBounds)) {
      return false;
    }
    paramObject = (LatLngBounds)paramObject;
    return (southwest.equals(southwest)) && (northeast.equals(northeast));
  }
  
  public int hashCode()
  {
    return cm.a(new Object[] { southwest, northeast });
  }
  
  public LatLngBounds including(LatLng paramLatLng)
  {
    if (paramLatLng == null) {
      return this;
    }
    double d1 = Math.min(southwest.latitude, latitude);
    double d2 = Math.max(northeast.latitude, latitude);
    double d3 = northeast.longitude;
    double d4 = southwest.longitude;
    double d5 = longitude;
    if (!b(d5))
    {
      c(d4, d5);
      d(d3, d5);
    }
    try
    {
      paramLatLng = new LatLngBounds(new LatLng(d1, d5), new LatLng(d2, d5));
      return paramLatLng;
    }
    catch (Throwable paramLatLng)
    {
      paramLatLng.printStackTrace();
    }
    return this;
  }
  
  public boolean intersects(LatLngBounds paramLatLngBounds)
  {
    boolean bool = false;
    if (paramLatLngBounds == null) {
      return false;
    }
    if ((a(paramLatLngBounds)) || (paramLatLngBounds.a(this))) {
      bool = true;
    }
    return bool;
  }
  
  public String toString()
  {
    return cm.a(new String[] { cm.a("southwest", southwest), cm.a("northeast", northeast) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private double a = Double.POSITIVE_INFINITY;
    private double b = Double.NEGATIVE_INFINITY;
    private double c = NaN.0D;
    private double d = NaN.0D;
    
    public Builder() {}
    
    private boolean a(double paramDouble)
    {
      double d1 = c;
      double d2 = d;
      boolean bool = true;
      if (d1 <= d2) {
        return (c <= paramDouble) && (paramDouble <= d);
      }
      if (c > paramDouble)
      {
        if (paramDouble <= d) {
          return true;
        }
        bool = false;
      }
      return bool;
    }
    
    public LatLngBounds build()
    {
      try
      {
        if (Double.isNaN(c))
        {
          Log.w("LatLngBounds", "no included points");
          return null;
        }
        double d1;
        if (c > d)
        {
          d1 = c;
          c = d;
          d = d1;
        }
        if (a > b)
        {
          d1 = a;
          a = b;
          b = d1;
        }
        LatLngBounds localLatLngBounds = new LatLngBounds(new LatLng(a, c), new LatLng(b, d));
        return localLatLngBounds;
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "LatLngBounds", "build");
      }
      return null;
    }
    
    public Builder include(LatLng paramLatLng)
    {
      if (paramLatLng == null) {
        return this;
      }
      a = Math.min(a, latitude);
      b = Math.max(b, latitude);
      double d1 = longitude;
      if (Double.isNaN(c))
      {
        c = d1;
        d = d1;
        return this;
      }
      if (!a(d1))
      {
        if (LatLngBounds.a(c, d1) < LatLngBounds.b(d, d1))
        {
          c = d1;
          return this;
        }
        d = d1;
      }
      return this;
    }
  }
}
