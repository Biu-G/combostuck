package com.amap.api.mapcore2d;

import com.amap.api.maps2d.model.LatLng;

public class cj
{
  public static LatLng a(LatLng paramLatLng)
  {
    if (paramLatLng == null) {
      return null;
    }
    if (cl.a(latitude, longitude))
    {
      paramLatLng = fg.a(longitude, latitude);
      return new LatLng(paramLatLng[1], paramLatLng[0]);
    }
    return paramLatLng;
  }
}
