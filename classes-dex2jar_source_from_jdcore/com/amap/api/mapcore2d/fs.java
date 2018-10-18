package com.amap.api.mapcore2d;

import com.autonavi.amap.mapcore2d.Inner_3dMap_location;

public final class fs
{
  private static final String[] a = { "com.amap.api.maps2d", "com.amap.api.mapcore2d" };
  
  public static cy a()
    throws co
  {
    return new cy.a("2dmap", "5.2.0", "AMAP_SDK_Android_2DMap_5.2.0").a(a).a();
  }
  
  public static boolean a(fi paramFi)
  {
    if (paramFi == null) {
      return false;
    }
    if (paramFi.d().equals("8")) {
      return false;
    }
    if (paramFi.d().equals("5")) {
      return false;
    }
    if (paramFi.d().equals("6")) {
      return false;
    }
    return a(paramFi);
  }
  
  private static boolean a(Inner_3dMap_location paramInner_3dMap_location)
  {
    double d1 = paramInner_3dMap_location.getLongitude();
    double d2 = paramInner_3dMap_location.getLatitude();
    boolean bool2 = false;
    boolean bool1;
    if (d1 == 0.0D)
    {
      bool1 = bool2;
      if (d2 == 0.0D) {}
    }
    else
    {
      bool1 = bool2;
      if (d1 <= 180.0D)
      {
        if (d2 > 90.0D) {
          return false;
        }
        bool1 = bool2;
        if (d1 >= -180.0D)
        {
          if (d2 < -90.0D) {
            return false;
          }
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}
