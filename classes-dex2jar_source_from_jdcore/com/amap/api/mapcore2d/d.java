package com.amap.api.mapcore2d;

import android.location.Location;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;

class d
  implements LocationSource.OnLocationChangedListener
{
  Location a;
  private y b;
  
  d(y paramY)
  {
    b = paramY;
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    a = paramLocation;
    try
    {
      if (b.isMyLocationEnabled())
      {
        b.showMyLocationOverlay(paramLocation);
        return;
      }
    }
    catch (Throwable paramLocation)
    {
      cm.a(paramLocation, "AMapOnLocationChangedListener", "onLocationChanged");
    }
  }
}
