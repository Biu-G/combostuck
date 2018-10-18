package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;

public class ef
  implements Thread.UncaughtExceptionHandler
{
  private static ef a;
  private Thread.UncaughtExceptionHandler b;
  private Context c;
  private cy d;
  
  private ef(Context paramContext, cy paramCy)
  {
    c = paramContext.getApplicationContext();
    d = paramCy;
    b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  static ef a(Context paramContext, cy paramCy)
  {
    try
    {
      if (a == null) {
        a = new ef(paramContext, paramCy);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  void a(Throwable paramThrowable)
  {
    paramThrowable = cz.a(paramThrowable);
    try
    {
      if (!TextUtils.isEmpty(paramThrowable)) {
        if (((paramThrowable.contains("amapdynamic")) || (paramThrowable.contains("admic"))) && (paramThrowable.contains("com.amap.api")))
        {
          dm localDm = new dm(c, eg.c());
          if (paramThrowable.contains("loc")) {
            ee.a(localDm, c, "loc");
          }
          if (paramThrowable.contains("navi")) {
            ee.a(localDm, c, "navi");
          }
          if (paramThrowable.contains("sea")) {
            ee.a(localDm, c, "sea");
          }
          if (paramThrowable.contains("2dmap")) {
            ee.a(localDm, c, "2dmap");
          }
          if (paramThrowable.contains("3dmap")) {
            ee.a(localDm, c, "3dmap");
          }
        }
        else
        {
          if (paramThrowable.contains("com.autonavi.aps.amapapi.offline"))
          {
            ee.a(new dm(c, eg.c()), c, "OfflineLocation");
            return;
          }
          if (paramThrowable.contains("com.data.carrier_v4"))
          {
            ee.a(new dm(c, eg.c()), c, "Collection");
            return;
          }
          if ((paramThrowable.contains("com.autonavi.aps.amapapi.httpdns")) || (paramThrowable.contains("com.autonavi.httpdns")))
          {
            ee.a(new dm(c, eg.c()), c, "HttpDNS");
            return;
          }
        }
      }
    }
    catch (Throwable paramThrowable)
    {
      dd.a(paramThrowable, "DynamicExceptionHandler", "uncaughtException");
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThrowable);
    if (b != null) {
      b.uncaughtException(paramThread, paramThrowable);
    }
  }
}
