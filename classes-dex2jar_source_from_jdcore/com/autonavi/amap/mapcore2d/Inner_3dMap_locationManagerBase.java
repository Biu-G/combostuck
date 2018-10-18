package com.autonavi.amap.mapcore2d;

public abstract interface Inner_3dMap_locationManagerBase
{
  public abstract void destroy();
  
  public abstract void setLocationListener(Inner_3dMap_locationListener paramInner_3dMap_locationListener);
  
  public abstract void setLocationOption(Inner_3dMap_locationOption paramInner_3dMap_locationOption);
  
  public abstract void startLocation();
  
  public abstract void stopLocation();
  
  public abstract void unRegisterLocationListener(Inner_3dMap_locationListener paramInner_3dMap_locationListener);
}
