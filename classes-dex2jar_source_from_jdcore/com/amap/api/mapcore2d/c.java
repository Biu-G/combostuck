package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Bundle;
import com.amap.api.maps2d.LocationSource;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode;

public class c
  implements LocationSource, Inner_3dMap_locationListener
{
  boolean a = false;
  long b = 2000L;
  private Bundle c = null;
  private LocationSource.OnLocationChangedListener d;
  private cn e;
  private Inner_3dMap_locationOption f;
  private Context g;
  
  public c(Context paramContext)
  {
    g = paramContext;
  }
  
  private void a(boolean paramBoolean)
  {
    if ((f != null) && (e != null))
    {
      e.c();
      e = new cn(g);
      e.a(this);
      f.setOnceLocation(paramBoolean);
      if (!paramBoolean) {
        f.setInterval(b);
      }
      e.a(f);
      e.a();
    }
    a = paramBoolean;
  }
  
  public void a(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0))
    {
      a(false);
      return;
    }
    a(true);
  }
  
  public void a(long paramLong)
  {
    if ((f != null) && (e != null) && (f.getInterval() != paramLong))
    {
      f.setInterval(paramLong);
      e.a(f);
    }
    b = paramLong;
  }
  
  public void activate(LocationSource.OnLocationChangedListener paramOnLocationChangedListener)
  {
    d = paramOnLocationChangedListener;
    if (e == null)
    {
      e = new cn(g);
      f = new Inner_3dMap_locationOption();
      e.a(this);
      f.setInterval(b);
      f.setOnceLocation(a);
      f.setLocationMode(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Hight_Accuracy);
      e.a(f);
      e.a();
    }
  }
  
  public void deactivate()
  {
    d = null;
    if (e != null)
    {
      e.b();
      e.c();
    }
    e = null;
  }
  
  public void onLocationChanged(Inner_3dMap_location paramInner_3dMap_location)
  {
    try
    {
      if ((d != null) && (paramInner_3dMap_location != null) && (paramInner_3dMap_location != null))
      {
        c = paramInner_3dMap_location.getExtras();
        if (c == null) {
          c = new Bundle();
        }
        c.putInt("errorCode", paramInner_3dMap_location.getErrorCode());
        c.putString("errorInfo", paramInner_3dMap_location.getErrorInfo());
        c.putInt("locationType", paramInner_3dMap_location.getLocationType());
        c.putFloat("Accuracy", paramInner_3dMap_location.getAccuracy());
        c.putString("AdCode", paramInner_3dMap_location.getAdCode());
        c.putString("Address", paramInner_3dMap_location.getAddress());
        c.putString("AoiName", paramInner_3dMap_location.getAoiName());
        c.putString("City", paramInner_3dMap_location.getCity());
        c.putString("CityCode", paramInner_3dMap_location.getCityCode());
        c.putString("Country", paramInner_3dMap_location.getCountry());
        c.putString("District", paramInner_3dMap_location.getDistrict());
        c.putString("Street", paramInner_3dMap_location.getStreet());
        c.putString("StreetNum", paramInner_3dMap_location.getStreetNum());
        c.putString("PoiName", paramInner_3dMap_location.getPoiName());
        c.putString("Province", paramInner_3dMap_location.getProvince());
        c.putFloat("Speed", paramInner_3dMap_location.getSpeed());
        c.putString("Floor", paramInner_3dMap_location.getFloor());
        c.putFloat("Bearing", paramInner_3dMap_location.getBearing());
        c.putString("BuildingId", paramInner_3dMap_location.getBuildingId());
        c.putDouble("Altitude", paramInner_3dMap_location.getAltitude());
        paramInner_3dMap_location.setExtras(c);
        d.onLocationChanged(paramInner_3dMap_location);
        return;
      }
    }
    catch (Throwable paramInner_3dMap_location)
    {
      paramInner_3dMap_location.printStackTrace();
    }
  }
}
