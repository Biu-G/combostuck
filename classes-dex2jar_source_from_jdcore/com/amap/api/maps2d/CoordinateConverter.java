package com.amap.api.maps2d;

import com.amap.api.mapcore2d.cg;
import com.amap.api.mapcore2d.ci;
import com.amap.api.mapcore2d.cj;
import com.amap.api.mapcore2d.cl;
import com.amap.api.maps2d.model.LatLng;

public class CoordinateConverter
{
  private CoordType a = null;
  private LatLng b = null;
  
  public CoordinateConverter() {}
  
  public static boolean isAMapDataAvailable(double paramDouble1, double paramDouble2)
  {
    return cl.a(paramDouble1, paramDouble2);
  }
  
  public LatLng convert()
  {
    if (a == null) {
      return null;
    }
    if (b == null) {
      return null;
    }
    try
    {
      switch (1.a[a.ordinal()])
      {
      case 7: 
        return cj.a(b);
      }
    }
    catch (Throwable localThrowable)
    {
      LatLng localLatLng;
      localThrowable.printStackTrace();
      return b;
    }
    return b;
    return ci.a(b);
    localLatLng = cg.a(b);
    return localLatLng;
    return null;
  }
  
  public CoordinateConverter coord(LatLng paramLatLng)
  {
    b = paramLatLng;
    return this;
  }
  
  public CoordinateConverter from(CoordType paramCoordType)
  {
    a = paramCoordType;
    return this;
  }
  
  public static enum CoordType
  {
    static
    {
      MAPABC = new CoordType("MAPABC", 2);
      SOSOMAP = new CoordType("SOSOMAP", 3);
    }
    
    private CoordType() {}
  }
}
