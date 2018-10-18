package com.amap.api.mapcore2d;

import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;

public final class fj
  implements AMapLocationListener
{
  public Inner_3dMap_locationListener a = null;
  
  public fj() {}
  
  private static void a(Inner_3dMap_location paramInner_3dMap_location, AMapLocation paramAMapLocation)
  {
    try
    {
      paramInner_3dMap_location.setLatitude(paramAMapLocation.getLatitude());
      paramInner_3dMap_location.setLongitude(paramAMapLocation.getLongitude());
      paramInner_3dMap_location.setAccuracy(paramAMapLocation.getAccuracy());
      paramInner_3dMap_location.setBearing(paramAMapLocation.getBearing());
      paramInner_3dMap_location.setAltitude(paramAMapLocation.getAltitude());
      paramInner_3dMap_location.setProvider(paramAMapLocation.getProvider());
      paramInner_3dMap_location.setSpeed(paramAMapLocation.getSpeed());
      paramInner_3dMap_location.setTime(paramAMapLocation.getTime());
      paramInner_3dMap_location.setErrorCode(paramAMapLocation.getErrorCode());
      paramInner_3dMap_location.setErrorInfo(paramAMapLocation.getErrorInfo());
      paramInner_3dMap_location.setLocationType(paramAMapLocation.getLocationType());
      paramInner_3dMap_location.setLocationDetail(paramAMapLocation.getLocationDetail());
      paramInner_3dMap_location.setProvince(paramAMapLocation.getProvince());
      paramInner_3dMap_location.setCity(paramAMapLocation.getCity());
      paramInner_3dMap_location.setCityCode(paramAMapLocation.getCityCode());
      paramInner_3dMap_location.setCountry(paramAMapLocation.getCountry());
      paramInner_3dMap_location.setDistrict(paramAMapLocation.getDistrict());
      paramInner_3dMap_location.setAddress(paramAMapLocation.getAddress());
      paramInner_3dMap_location.setAdCode(paramAMapLocation.getAdCode());
      paramInner_3dMap_location.setExtras(paramAMapLocation.getExtras());
      paramInner_3dMap_location.setRoad(paramAMapLocation.getRoad());
      return;
    }
    catch (Throwable paramInner_3dMap_location)
    {
      gc.a(paramInner_3dMap_location, "LocationListener", "converterLocation");
    }
  }
  
  public final void a(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    a = paramInner_3dMap_locationListener;
  }
  
  public final void onLocationChanged(AMapLocation paramAMapLocation)
  {
    try
    {
      Inner_3dMap_location localInner_3dMap_location = new Inner_3dMap_location("");
      a(localInner_3dMap_location, paramAMapLocation);
      a.onLocationChanged(localInner_3dMap_location);
      return;
    }
    catch (Throwable paramAMapLocation)
    {
      gc.a(paramAMapLocation, "LocationListener", "onLocationChanged");
    }
  }
}
