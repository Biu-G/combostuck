package com.amap.api.mapcore2d;

import com.amap.api.maps2d.model.LatLng;
import java.math.BigDecimal;

public class cg
{
  private static double a(double paramDouble)
  {
    return Math.sin(paramDouble * 3000.0D * 0.017453292519943295D) * 2.0E-5D;
  }
  
  private static double a(double paramDouble, int paramInt)
  {
    return new BigDecimal(paramDouble).setScale(paramInt, 4).doubleValue();
  }
  
  private static ch a(double paramDouble1, double paramDouble2)
  {
    ch localCh = new ch();
    double d1 = Math.cos(b(paramDouble1) + Math.atan2(paramDouble2, paramDouble1));
    double d2 = a(paramDouble2);
    double d4 = paramDouble1 * paramDouble1 + paramDouble2 * paramDouble2;
    double d3 = Math.sqrt(d4);
    paramDouble1 = Math.sin(b(paramDouble1) + Math.atan2(paramDouble2, paramDouble1));
    paramDouble2 = a(paramDouble2);
    d4 = Math.sqrt(d4);
    a = a(d1 * (d2 + d3) + 0.0065D, 8);
    b = a(paramDouble1 * (paramDouble2 + d4) + 0.006D, 8);
    return localCh;
  }
  
  private static LatLng a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    ch localCh1 = new ch();
    paramDouble3 = paramDouble1 - paramDouble3;
    paramDouble4 = paramDouble2 - paramDouble4;
    ch localCh2 = a(paramDouble3, paramDouble4);
    a = a(paramDouble1 + paramDouble3 - a, 8);
    b = a(paramDouble2 + paramDouble4 - b, 8);
    return new LatLng(b, a);
  }
  
  public static LatLng a(LatLng paramLatLng)
  {
    if (paramLatLng != null) {
      return b(paramLatLng);
    }
    return null;
  }
  
  private static LatLng a(LatLng paramLatLng, int paramInt)
  {
    LatLng localLatLng = null;
    int i = 0;
    double d1 = 0.006401062D;
    double d2 = 0.0060424805D;
    while (i < paramInt)
    {
      localLatLng = a(longitude, latitude, d1, d2);
      d1 = longitude - longitude;
      d2 = latitude - latitude;
      i += 1;
    }
    return localLatLng;
  }
  
  private static double b(double paramDouble)
  {
    return Math.cos(paramDouble * 3000.0D * 0.017453292519943295D) * 3.0E-6D;
  }
  
  private static LatLng b(LatLng paramLatLng)
  {
    return a(paramLatLng, 2);
  }
}
