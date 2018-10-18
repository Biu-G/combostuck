package com.amap.api.mapcore2d;

import android.text.TextUtils;

public final class fl
{
  private static fl c;
  int a = 0;
  long b = 0L;
  private fi d = null;
  private long e = 0L;
  private long f = 0L;
  
  private fl() {}
  
  public static fl a()
  {
    try
    {
      if (c == null) {
        c = new fl();
      }
      fl localFl = c;
      return localFl;
    }
    finally {}
  }
  
  public static fi b(fi paramFi)
  {
    return paramFi;
  }
  
  public final fi a(fi paramFi)
  {
    if (gf.b() - b > 30000L)
    {
      d = paramFi;
      b = gf.b();
      return d;
    }
    b = gf.b();
    if ((fs.a(d)) && (fs.a(paramFi)))
    {
      if ((paramFi.getTime() == d.getTime()) && (paramFi.getAccuracy() < 300.0F)) {
        return paramFi;
      }
      if (!paramFi.getProvider().equalsIgnoreCase("gps")) {
        break label113;
      }
    }
    label98:
    label113:
    float f4;
    long l1;
    long l2;
    label414:
    label419:
    do
    {
      for (e = gf.b();; e = l1)
      {
        d = paramFi;
        break;
        if ((paramFi.c() != d.c()) || ((!paramFi.getBuildingId().equals(d.getBuildingId())) && (!TextUtils.isEmpty(paramFi.getBuildingId())))) {
          break label98;
        }
        a = paramFi.getLocationType();
        float f1 = gf.a(new double[] { paramFi.getLatitude(), paramFi.getLongitude(), d.getLatitude(), d.getLongitude() });
        float f2 = d.getAccuracy();
        float f3 = paramFi.getAccuracy();
        f4 = f3 - f2;
        l1 = gf.b();
        l2 = e;
        boolean bool;
        if ((f2 >= 101.0F) || (f3 <= 299.0F))
        {
          bool = f2 < 299.0F;
          if ((!bool) || (f3 <= 299.0F)) {}
        }
        else if (f == 0L)
        {
          f = l1;
        }
        else if (l1 - f <= 30000L) {}
        while ((f3 < 100.0F) && (bool))
        {
          e = l1;
          d = paramFi;
          f = 0L;
          break;
          return d;
        }
        if (f3 <= 299.0F) {
          f = 0L;
        }
        if ((f1 >= 10.0F) || (f1 <= 0.1D) || (f3 <= 5.0F)) {
          break label419;
        }
        if (f4 >= -300.0F) {
          return d;
        }
        if (f2 / f3 < 2.0F) {
          break label414;
        }
      }
      return d;
    } while ((f4 < 300.0F) || (l1 - l2 >= 30000L));
    return d;
  }
}
