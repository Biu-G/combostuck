package com.autonavi.amap.mapcore2d;

import com.amap.api.mapcore2d.gc;

public class Inner_3dMap_locationOption
  implements Cloneable
{
  static String APIKEY = "";
  private static Inner_3dMap_Enum_LocationProtocol locationProtocol = Inner_3dMap_Enum_LocationProtocol.HTTP;
  private long httpTimeOut = gc.e;
  private long interval = 2000L;
  private boolean isGpsFirst = false;
  private boolean isKillProcess = false;
  private boolean isLocationCacheEnable = true;
  private boolean isMockEnable = false;
  private boolean isNeedAddress = true;
  private boolean isOffset = true;
  private boolean isOnceLocation = false;
  private boolean isOnceLocationLatest = false;
  private boolean isWifiActiveScan = true;
  private boolean isWifiScan = true;
  private boolean lastWifiActiveScan = true;
  private Inner_3dMap_Enum_LocationMode locationMode = Inner_3dMap_Enum_LocationMode.Hight_Accuracy;
  private boolean sensorEnable = false;
  
  public Inner_3dMap_locationOption() {}
  
  private Inner_3dMap_locationOption clone(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    interval = interval;
    isOnceLocation = isOnceLocation;
    locationMode = locationMode;
    isMockEnable = isMockEnable;
    isKillProcess = isKillProcess;
    isGpsFirst = isGpsFirst;
    isNeedAddress = isNeedAddress;
    isWifiActiveScan = isWifiActiveScan;
    httpTimeOut = httpTimeOut;
    isOffset = isOffset;
    isLocationCacheEnable = isLocationCacheEnable;
    isOnceLocationLatest = isOnceLocationLatest;
    sensorEnable = paramInner_3dMap_locationOption.isSensorEnable();
    isWifiScan = paramInner_3dMap_locationOption.isWifiScan();
    return this;
  }
  
  public static String getAPIKEY()
  {
    return APIKEY;
  }
  
  public static void setLocationProtocol(Inner_3dMap_Enum_LocationProtocol paramInner_3dMap_Enum_LocationProtocol)
  {
    locationProtocol = paramInner_3dMap_Enum_LocationProtocol;
  }
  
  public Inner_3dMap_locationOption clone()
  {
    try
    {
      super.clone();
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return new Inner_3dMap_locationOption().clone(this);
  }
  
  public long getHttpTimeOut()
  {
    return httpTimeOut;
  }
  
  public long getInterval()
  {
    return interval;
  }
  
  public Inner_3dMap_Enum_LocationMode getLocationMode()
  {
    return locationMode;
  }
  
  public Inner_3dMap_Enum_LocationProtocol getLocationProtocol()
  {
    return locationProtocol;
  }
  
  public boolean isGpsFirst()
  {
    return isGpsFirst;
  }
  
  public boolean isKillProcess()
  {
    return isKillProcess;
  }
  
  public boolean isLocationCacheEnable()
  {
    return isLocationCacheEnable;
  }
  
  public boolean isMockEnable()
  {
    return isMockEnable;
  }
  
  public boolean isNeedAddress()
  {
    return isNeedAddress;
  }
  
  public boolean isOffset()
  {
    return isOffset;
  }
  
  public boolean isOnceLocation()
  {
    if (isOnceLocationLatest) {
      return true;
    }
    return isOnceLocation;
  }
  
  public boolean isOnceLocationLatest()
  {
    return isOnceLocationLatest;
  }
  
  public boolean isSensorEnable()
  {
    return sensorEnable;
  }
  
  public boolean isWifiActiveScan()
  {
    return isWifiActiveScan;
  }
  
  public boolean isWifiScan()
  {
    return isWifiScan;
  }
  
  public Inner_3dMap_locationOption setGpsFirst(boolean paramBoolean)
  {
    isGpsFirst = paramBoolean;
    return this;
  }
  
  public void setHttpTimeOut(long paramLong)
  {
    httpTimeOut = paramLong;
  }
  
  public Inner_3dMap_locationOption setInterval(long paramLong)
  {
    long l = paramLong;
    if (paramLong <= 800L) {
      l = 800L;
    }
    interval = l;
    return this;
  }
  
  public Inner_3dMap_locationOption setKillProcess(boolean paramBoolean)
  {
    isKillProcess = paramBoolean;
    return this;
  }
  
  public void setLocationCacheEnable(boolean paramBoolean)
  {
    isLocationCacheEnable = paramBoolean;
  }
  
  public Inner_3dMap_locationOption setLocationMode(Inner_3dMap_Enum_LocationMode paramInner_3dMap_Enum_LocationMode)
  {
    locationMode = paramInner_3dMap_Enum_LocationMode;
    return this;
  }
  
  public void setMockEnable(boolean paramBoolean)
  {
    isMockEnable = paramBoolean;
  }
  
  public Inner_3dMap_locationOption setNeedAddress(boolean paramBoolean)
  {
    isNeedAddress = paramBoolean;
    return this;
  }
  
  public Inner_3dMap_locationOption setOffset(boolean paramBoolean)
  {
    isOffset = paramBoolean;
    return this;
  }
  
  public Inner_3dMap_locationOption setOnceLocation(boolean paramBoolean)
  {
    isOnceLocation = paramBoolean;
    return this;
  }
  
  public void setOnceLocationLatest(boolean paramBoolean)
  {
    isOnceLocationLatest = paramBoolean;
  }
  
  public void setSensorEnable(boolean paramBoolean)
  {
    sensorEnable = paramBoolean;
  }
  
  public void setWifiActiveScan(boolean paramBoolean)
  {
    isWifiActiveScan = paramBoolean;
    lastWifiActiveScan = paramBoolean;
  }
  
  public void setWifiScan(boolean paramBoolean)
  {
    isWifiScan = paramBoolean;
    if (isWifiScan) {}
    for (paramBoolean = lastWifiActiveScan;; paramBoolean = false)
    {
      isWifiActiveScan = paramBoolean;
      return;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("interval:");
    localStringBuilder.append(String.valueOf(interval));
    localStringBuilder.append("#");
    localStringBuilder.append("isOnceLocation:");
    localStringBuilder.append(String.valueOf(isOnceLocation));
    localStringBuilder.append("#");
    localStringBuilder.append("locationMode:");
    localStringBuilder.append(String.valueOf(locationMode));
    localStringBuilder.append("#");
    localStringBuilder.append("isMockEnable:");
    localStringBuilder.append(String.valueOf(isMockEnable));
    localStringBuilder.append("#");
    localStringBuilder.append("isKillProcess:");
    localStringBuilder.append(String.valueOf(isKillProcess));
    localStringBuilder.append("#");
    localStringBuilder.append("isGpsFirst:");
    localStringBuilder.append(String.valueOf(isGpsFirst));
    localStringBuilder.append("#");
    localStringBuilder.append("isNeedAddress:");
    localStringBuilder.append(String.valueOf(isNeedAddress));
    localStringBuilder.append("#");
    localStringBuilder.append("isWifiActiveScan:");
    localStringBuilder.append(String.valueOf(isWifiActiveScan));
    localStringBuilder.append("#");
    localStringBuilder.append("httpTimeOut:");
    localStringBuilder.append(String.valueOf(httpTimeOut));
    localStringBuilder.append("#");
    localStringBuilder.append("isOffset:");
    localStringBuilder.append(String.valueOf(isOffset));
    localStringBuilder.append("#");
    localStringBuilder.append("isLocationCacheEnable:");
    localStringBuilder.append(String.valueOf(isLocationCacheEnable));
    localStringBuilder.append("#");
    localStringBuilder.append("isLocationCacheEnable:");
    localStringBuilder.append(String.valueOf(isLocationCacheEnable));
    localStringBuilder.append("#");
    localStringBuilder.append("isOnceLocationLatest:");
    localStringBuilder.append(String.valueOf(isOnceLocationLatest));
    localStringBuilder.append("#");
    localStringBuilder.append("sensorEnable:");
    localStringBuilder.append(String.valueOf(sensorEnable));
    localStringBuilder.append("#");
    return localStringBuilder.toString();
  }
  
  public static enum Inner_3dMap_Enum_LocationMode
  {
    Battery_Saving,  Device_Sensors,  Hight_Accuracy;
    
    private Inner_3dMap_Enum_LocationMode() {}
  }
  
  public static enum Inner_3dMap_Enum_LocationProtocol
  {
    HTTP(0),  HTTPS(1);
    
    private int value;
    
    private Inner_3dMap_Enum_LocationProtocol(int paramInt)
    {
      value = paramInt;
    }
    
    public final int getValue()
    {
      return value;
    }
  }
}
