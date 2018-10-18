package com.amap.api.mapcore2d;

import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationClientOption.AMapLocationMode;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;

public final class fh
{
  public static AMapLocationClientOption a()
  {
    return new AMapLocationClientOption();
  }
  
  public static void a(AMapLocationClientOption paramAMapLocationClientOption, Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    for (;;)
    {
      try
      {
        paramAMapLocationClientOption.setInterval(paramInner_3dMap_locationOption.getInterval());
        AMapLocationClientOption.AMapLocationMode localAMapLocationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
        switch (1.a[paramInner_3dMap_locationOption.getLocationMode().ordinal()])
        {
        case 3: 
          localAMapLocationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
          break;
        case 2: 
          localAMapLocationMode = AMapLocationClientOption.AMapLocationMode.Device_Sensors;
          break;
        case 1: 
          localAMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
          paramAMapLocationClientOption.setLocationMode(localAMapLocationMode);
          paramAMapLocationClientOption.setOnceLocation(paramInner_3dMap_locationOption.isOnceLocation());
          paramAMapLocationClientOption.setNeedAddress(paramInner_3dMap_locationOption.isNeedAddress());
          return;
        }
      }
      catch (Throwable paramAMapLocationClientOption)
      {
        return;
      }
    }
  }
  
  public static void a(Object paramObject, Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    fj localFj = new fj();
    localFj.a(paramInner_3dMap_locationListener);
    ((AMapLocationClient)paramObject).setLocationListener(localFj);
  }
}
