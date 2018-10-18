package com.autonavi.amap.mapcore2d;

import android.location.Location;
import com.amap.api.mapcore2d.gc;
import com.amap.api.mapcore2d.gf;
import org.json.JSONObject;

public class Inner_3dMap_location
  extends Location
{
  public static final int ERROR_CODE_FAILURE_AUTH = 7;
  public static final int ERROR_CODE_FAILURE_CELL = 11;
  public static final int ERROR_CODE_FAILURE_CONNECTION = 4;
  public static final int ERROR_CODE_FAILURE_INIT = 9;
  public static final int ERROR_CODE_FAILURE_LOCATION = 6;
  public static final int ERROR_CODE_FAILURE_LOCATION_PARAMETER = 3;
  public static final int ERROR_CODE_FAILURE_LOCATION_PERMISSION = 12;
  public static final int ERROR_CODE_FAILURE_NOENOUGHSATELLITES = 14;
  public static final int ERROR_CODE_FAILURE_NOWIFIANDAP = 13;
  public static final int ERROR_CODE_FAILURE_PARSER = 5;
  public static final int ERROR_CODE_FAILURE_SIMULATION_LOCATION = 15;
  public static final int ERROR_CODE_FAILURE_WIFI_INFO = 2;
  public static final int ERROR_CODE_INVALID_PARAMETER = 1;
  public static final int ERROR_CODE_SERVICE_FAIL = 10;
  public static final int ERROR_CODE_UNKNOWN = 8;
  public static final int GPS_ACCURACY_BAD = 0;
  public static final int GPS_ACCURACY_GOOD = 1;
  public static final int GPS_ACCURACY_UNKNOWN = -1;
  public static final int LOCATION_SUCCESS = 0;
  public static final int LOCATION_TYPE_AMAP = 7;
  public static final int LOCATION_TYPE_CELL = 6;
  public static final int LOCATION_TYPE_FAST = 3;
  public static final int LOCATION_TYPE_FIX_CACHE = 4;
  public static final int LOCATION_TYPE_GPS = 1;
  public static final int LOCATION_TYPE_OFFLINE = 8;
  public static final int LOCATION_TYPE_SAME_REQ = 2;
  public static final int LOCATION_TYPE_WIFI = 5;
  private String adCode = "";
  private String address = "";
  private String aoiName = "";
  protected String buildingId = "";
  private String city = "";
  private String cityCode = "";
  private String country = "";
  protected String desc = "";
  private String district = "";
  private int errorCode = 0;
  private String errorInfo = "success";
  protected String floor = "";
  private boolean isOffset = true;
  private double latitude = 0.0D;
  private String locationDetail = "";
  private int locationType = 0;
  private double longitude = 0.0D;
  private String number = "";
  private String poiName = "";
  private String province = "";
  private String road = "";
  private int satellites = 0;
  private int signalIntensity = -1;
  private String street = "";
  
  public Inner_3dMap_location(Location paramLocation)
  {
    super(paramLocation);
    latitude = paramLocation.getLatitude();
    longitude = paramLocation.getLongitude();
  }
  
  public Inner_3dMap_location(String paramString)
  {
    super(paramString);
  }
  
  public float getAccuracy()
  {
    return super.getAccuracy();
  }
  
  public String getAdCode()
  {
    return adCode;
  }
  
  public String getAddress()
  {
    return address;
  }
  
  public double getAltitude()
  {
    return super.getAltitude();
  }
  
  public String getAoiName()
  {
    return aoiName;
  }
  
  public float getBearing()
  {
    return super.getBearing();
  }
  
  public String getBuildingId()
  {
    return buildingId;
  }
  
  public String getCity()
  {
    return city;
  }
  
  public String getCityCode()
  {
    return cityCode;
  }
  
  public String getCountry()
  {
    return country;
  }
  
  public String getDistrict()
  {
    return district;
  }
  
  public int getErrorCode()
  {
    return errorCode;
  }
  
  public String getErrorInfo()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append(errorInfo);
    if (errorCode != 0)
    {
      localStringBuilder1.append(" 请到http://lbs.amap.com/api/android-location-sdk/guide/utilities/errorcode/查看错误码说明");
      StringBuilder localStringBuilder2 = new StringBuilder(",错误详细信息:");
      localStringBuilder2.append(locationDetail);
      localStringBuilder1.append(localStringBuilder2.toString());
    }
    errorInfo = localStringBuilder1.toString();
    return errorInfo;
  }
  
  public String getFloor()
  {
    return floor;
  }
  
  public int getGpsAccuracyStatus()
  {
    return signalIntensity;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public String getLocationDetail()
  {
    return locationDetail;
  }
  
  public int getLocationType()
  {
    return locationType;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getPoiName()
  {
    return poiName;
  }
  
  public String getProvider()
  {
    return super.getProvider();
  }
  
  public String getProvince()
  {
    return province;
  }
  
  public String getRoad()
  {
    return road;
  }
  
  public int getSatellites()
  {
    return satellites;
  }
  
  public float getSpeed()
  {
    return super.getSpeed();
  }
  
  public String getStreet()
  {
    return street;
  }
  
  public String getStreetNum()
  {
    return number;
  }
  
  public boolean isOffset()
  {
    return isOffset;
  }
  
  public void setAdCode(String paramString)
  {
    adCode = paramString;
  }
  
  public void setAddress(String paramString)
  {
    address = paramString;
  }
  
  public void setAoiName(String paramString)
  {
    aoiName = paramString;
  }
  
  public void setBuildingId(String paramString)
  {
    buildingId = paramString;
  }
  
  public void setCity(String paramString)
  {
    city = paramString;
  }
  
  public void setCityCode(String paramString)
  {
    cityCode = paramString;
  }
  
  public void setCountry(String paramString)
  {
    country = paramString;
  }
  
  public void setDistrict(String paramString)
  {
    district = paramString;
  }
  
  public void setErrorCode(int paramInt)
  {
    if (errorCode != 0) {
      return;
    }
    errorInfo = gf.b(paramInt);
    errorCode = paramInt;
  }
  
  public void setErrorInfo(String paramString)
  {
    errorInfo = paramString;
  }
  
  public void setFloor(String paramString)
  {
    floor = paramString;
  }
  
  public void setGpsAccuracyStatus(int paramInt)
  {
    signalIntensity = paramInt;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
  }
  
  public void setLocationDetail(String paramString)
  {
    locationDetail = paramString;
  }
  
  public void setLocationType(int paramInt)
  {
    locationType = paramInt;
  }
  
  public void setLongitude(double paramDouble)
  {
    longitude = paramDouble;
  }
  
  public void setNumber(String paramString)
  {
    number = paramString;
  }
  
  public void setOffset(boolean paramBoolean)
  {
    isOffset = paramBoolean;
  }
  
  public void setPoiName(String paramString)
  {
    poiName = paramString;
  }
  
  public void setProvince(String paramString)
  {
    province = paramString;
  }
  
  public void setRoad(String paramString)
  {
    road = paramString;
  }
  
  public void setSatellites(int paramInt)
  {
    satellites = paramInt;
  }
  
  public void setStreet(String paramString)
  {
    street = paramString;
  }
  
  /* Error */
  protected JSONObject toJson(int paramInt)
  {
    // Byte code:
    //   0: new 237	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 238	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: iload_1
    //   9: tableswitch	default:+27->36, 1:+29->38, 2:+291->300, 3:+303->312
    //   36: aload_2
    //   37: areturn
    //   38: aload_2
    //   39: ldc -16
    //   41: aload_0
    //   42: invokevirtual 241	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getAltitude	()D
    //   45: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   48: pop
    //   49: aload_2
    //   50: ldc -9
    //   52: aload_0
    //   53: invokevirtual 248	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getSpeed	()F
    //   56: f2d
    //   57: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   60: pop
    //   61: aload_2
    //   62: ldc -6
    //   64: aload_0
    //   65: invokevirtual 251	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getBearing	()F
    //   68: f2d
    //   69: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   72: pop
    //   73: aload_2
    //   74: ldc -3
    //   76: aload_0
    //   77: getfield 90	com/autonavi/amap/mapcore2d/Inner_3dMap_location:cityCode	Ljava/lang/String;
    //   80: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   83: pop
    //   84: aload_2
    //   85: ldc_w 257
    //   88: aload_0
    //   89: getfield 132	com/autonavi/amap/mapcore2d/Inner_3dMap_location:desc	Ljava/lang/String;
    //   92: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   95: pop
    //   96: aload_2
    //   97: ldc_w 259
    //   100: aload_0
    //   101: getfield 92	com/autonavi/amap/mapcore2d/Inner_3dMap_location:adCode	Ljava/lang/String;
    //   104: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   107: pop
    //   108: aload_2
    //   109: ldc_w 260
    //   112: aload_0
    //   113: getfield 98	com/autonavi/amap/mapcore2d/Inner_3dMap_location:country	Ljava/lang/String;
    //   116: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   119: pop
    //   120: aload_2
    //   121: ldc_w 261
    //   124: aload_0
    //   125: getfield 84	com/autonavi/amap/mapcore2d/Inner_3dMap_location:province	Ljava/lang/String;
    //   128: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   131: pop
    //   132: aload_2
    //   133: ldc_w 262
    //   136: aload_0
    //   137: getfield 86	com/autonavi/amap/mapcore2d/Inner_3dMap_location:city	Ljava/lang/String;
    //   140: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   143: pop
    //   144: aload_2
    //   145: ldc_w 263
    //   148: aload_0
    //   149: getfield 88	com/autonavi/amap/mapcore2d/Inner_3dMap_location:district	Ljava/lang/String;
    //   152: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   155: pop
    //   156: aload_2
    //   157: ldc_w 264
    //   160: aload_0
    //   161: getfield 100	com/autonavi/amap/mapcore2d/Inner_3dMap_location:road	Ljava/lang/String;
    //   164: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   167: pop
    //   168: aload_2
    //   169: ldc_w 265
    //   172: aload_0
    //   173: getfield 102	com/autonavi/amap/mapcore2d/Inner_3dMap_location:street	Ljava/lang/String;
    //   176: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   179: pop
    //   180: aload_2
    //   181: ldc_w 266
    //   184: aload_0
    //   185: getfield 104	com/autonavi/amap/mapcore2d/Inner_3dMap_location:number	Ljava/lang/String;
    //   188: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   191: pop
    //   192: aload_2
    //   193: ldc_w 268
    //   196: aload_0
    //   197: getfield 96	com/autonavi/amap/mapcore2d/Inner_3dMap_location:poiName	Ljava/lang/String;
    //   200: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   203: pop
    //   204: aload_2
    //   205: ldc_w 269
    //   208: aload_0
    //   209: getfield 108	com/autonavi/amap/mapcore2d/Inner_3dMap_location:errorCode	I
    //   212: invokevirtual 272	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   215: pop
    //   216: aload_2
    //   217: ldc_w 273
    //   220: aload_0
    //   221: getfield 112	com/autonavi/amap/mapcore2d/Inner_3dMap_location:errorInfo	Ljava/lang/String;
    //   224: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   227: pop
    //   228: aload_2
    //   229: ldc_w 274
    //   232: aload_0
    //   233: getfield 116	com/autonavi/amap/mapcore2d/Inner_3dMap_location:locationType	I
    //   236: invokevirtual 272	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   239: pop
    //   240: aload_2
    //   241: ldc_w 275
    //   244: aload_0
    //   245: getfield 114	com/autonavi/amap/mapcore2d/Inner_3dMap_location:locationDetail	Ljava/lang/String;
    //   248: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   251: pop
    //   252: aload_2
    //   253: ldc_w 277
    //   256: aload_0
    //   257: getfield 124	com/autonavi/amap/mapcore2d/Inner_3dMap_location:aoiName	Ljava/lang/String;
    //   260: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   263: pop
    //   264: aload_2
    //   265: ldc_w 278
    //   268: aload_0
    //   269: getfield 94	com/autonavi/amap/mapcore2d/Inner_3dMap_location:address	Ljava/lang/String;
    //   272: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   275: pop
    //   276: aload_2
    //   277: ldc_w 280
    //   280: aload_0
    //   281: getfield 128	com/autonavi/amap/mapcore2d/Inner_3dMap_location:buildingId	Ljava/lang/String;
    //   284: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   287: pop
    //   288: aload_2
    //   289: ldc_w 281
    //   292: aload_0
    //   293: getfield 130	com/autonavi/amap/mapcore2d/Inner_3dMap_location:floor	Ljava/lang/String;
    //   296: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   299: pop
    //   300: aload_2
    //   301: ldc_w 283
    //   304: aload_0
    //   305: invokevirtual 287	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getTime	()J
    //   308: invokevirtual 290	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   311: pop
    //   312: aload_2
    //   313: ldc_w 292
    //   316: aload_0
    //   317: invokevirtual 293	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getProvider	()Ljava/lang/String;
    //   320: invokevirtual 256	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   323: pop
    //   324: aload_2
    //   325: ldc_w 295
    //   328: aload_0
    //   329: invokevirtual 296	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getLongitude	()D
    //   332: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   335: pop
    //   336: aload_2
    //   337: ldc_w 298
    //   340: aload_0
    //   341: invokevirtual 299	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getLatitude	()D
    //   344: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   347: pop
    //   348: aload_2
    //   349: ldc_w 301
    //   352: aload_0
    //   353: invokevirtual 302	com/autonavi/amap/mapcore2d/Inner_3dMap_location:getAccuracy	()F
    //   356: f2d
    //   357: invokevirtual 245	org/json/JSONObject:put	(Ljava/lang/String;D)Lorg/json/JSONObject;
    //   360: pop
    //   361: aload_2
    //   362: ldc_w 303
    //   365: aload_0
    //   366: getfield 106	com/autonavi/amap/mapcore2d/Inner_3dMap_location:isOffset	Z
    //   369: invokevirtual 306	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   372: pop
    //   373: aload_2
    //   374: areturn
    //   375: astore_2
    //   376: aload_2
    //   377: ldc_w 308
    //   380: ldc_w 310
    //   383: invokestatic 316	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   386: aconst_null
    //   387: areturn
    //   388: astore_3
    //   389: goto -316 -> 73
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	392	0	this	Inner_3dMap_location
    //   0	392	1	paramInt	int
    //   7	367	2	localJSONObject	JSONObject
    //   375	2	2	localThrowable1	Throwable
    //   388	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	8	375	java/lang/Throwable
    //   73	300	375	java/lang/Throwable
    //   300	312	375	java/lang/Throwable
    //   312	373	375	java/lang/Throwable
    //   38	73	388	java/lang/Throwable
  }
  
  public String toStr()
  {
    return toStr(1);
  }
  
  public String toStr(int paramInt)
  {
    Object localObject;
    try
    {
      JSONObject localJSONObject = toJson(paramInt);
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocation", "toStr part2");
      localObject = null;
    }
    if (localObject == null) {
      return null;
    }
    return localObject.toString();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      StringBuilder localStringBuilder = new StringBuilder("latitude=");
      localStringBuilder.append(latitude);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("longitude=");
      localStringBuilder.append(longitude);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("province=");
      localStringBuilder.append(province);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("city=");
      localStringBuilder.append(city);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("district=");
      localStringBuilder.append(district);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("cityCode=");
      localStringBuilder.append(cityCode);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("adCode=");
      localStringBuilder.append(adCode);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("address=");
      localStringBuilder.append(address);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("country=");
      localStringBuilder.append(country);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("road=");
      localStringBuilder.append(road);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("poiName=");
      localStringBuilder.append(poiName);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("street=");
      localStringBuilder.append(street);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("streetNum=");
      localStringBuilder.append(number);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("aoiName=");
      localStringBuilder.append(aoiName);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("poiid=");
      localStringBuilder.append(buildingId);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("floor=");
      localStringBuilder.append(floor);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("errorCode=");
      localStringBuilder.append(errorCode);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("errorInfo=");
      localStringBuilder.append(errorInfo);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("locationDetail=");
      localStringBuilder.append(locationDetail);
      localStringBuilder.append("#");
      localStringBuffer.append(localStringBuilder.toString());
      localStringBuilder = new StringBuilder("locationType=");
      localStringBuilder.append(locationType);
      localStringBuffer.append(localStringBuilder.toString());
      return localStringBuffer.toString();
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
}
