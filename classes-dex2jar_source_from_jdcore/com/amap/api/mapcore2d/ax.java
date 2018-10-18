package com.amap.api.mapcore2d;

import java.util.Locale;
import java.util.Random;

class ax
{
  private static ax b;
  private String a = "http://tm.amap.com";
  
  private ax() {}
  
  public static ax a()
  {
    try
    {
      if (b == null) {
        b = new ax();
      }
      ax localAx = b;
      return localAx;
    }
    finally {}
  }
  
  public String b()
  {
    int i = new Random(System.currentTimeMillis()).nextInt(100000) % 4;
    String str;
    if (q.m == 2) {
      str = String.format(Locale.US, "http://wprd0%d.is.autonavi.com", new Object[] { Integer.valueOf(i + 1) });
    } else {
      str = String.format(Locale.US, "http://webrd0%d.is.autonavi.com", new Object[] { Integer.valueOf(i + 1) });
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append(q.a());
    return localStringBuilder.toString();
  }
  
  public String c()
  {
    return a;
  }
  
  public String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("http://grid.amap.com/grid/%d/%d/%d?ds=");
    localStringBuilder.append(q.i);
    return localStringBuilder.toString();
  }
  
  public String e()
  {
    int i = new Random(System.currentTimeMillis()).nextInt(100000);
    return String.format(Locale.US, "http://mst0%d.is.autonavi.com", new Object[] { Integer.valueOf(i % 4 + 1) });
  }
}
