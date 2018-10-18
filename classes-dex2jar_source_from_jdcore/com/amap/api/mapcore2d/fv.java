package com.amap.api.mapcore2d;

import java.util.Locale;

public final class fv
{
  private static fv p;
  public int a = 0;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  public int g = 0;
  public int h = 0;
  public int i = 0;
  public int j = -113;
  public int k = 0;
  public short l = 0;
  public long m = 0L;
  public boolean n = false;
  public boolean o = true;
  
  public fv(int paramInt, boolean paramBoolean)
  {
    k = paramInt;
    n = paramBoolean;
  }
  
  public final int a()
  {
    return c;
  }
  
  public final int b()
  {
    return d;
  }
  
  public final int c()
  {
    return h;
  }
  
  public final int d()
  {
    return i;
  }
  
  public final int e()
  {
    return j;
  }
  
  public final String toString()
  {
    Locale localLocale;
    String str;
    Object[] arrayOfObject;
    switch (k)
    {
    default: 
      return "unknown";
    case 4: 
      localLocale = Locale.CHINA;
      str = "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b";
      arrayOfObject = new Object[7];
      arrayOfObject[0] = Integer.valueOf(c);
      arrayOfObject[1] = Integer.valueOf(d);
      arrayOfObject[2] = Integer.valueOf(b);
      arrayOfObject[3] = Boolean.valueOf(o);
      arrayOfObject[4] = Integer.valueOf(j);
      arrayOfObject[5] = Short.valueOf(l);
      arrayOfObject[6] = Boolean.valueOf(n);
      break;
    case 3: 
      localLocale = Locale.CHINA;
      str = "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b";
      arrayOfObject = new Object[7];
      arrayOfObject[0] = Integer.valueOf(c);
      arrayOfObject[1] = Integer.valueOf(d);
      arrayOfObject[2] = Integer.valueOf(b);
      arrayOfObject[3] = Boolean.valueOf(o);
      arrayOfObject[4] = Integer.valueOf(j);
      arrayOfObject[5] = Short.valueOf(l);
      arrayOfObject[6] = Boolean.valueOf(n);
      break;
    case 2: 
      localLocale = Locale.CHINA;
      str = "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b";
      arrayOfObject = new Object[7];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(h);
      arrayOfObject[2] = Integer.valueOf(g);
      arrayOfObject[3] = Boolean.valueOf(o);
      arrayOfObject[4] = Integer.valueOf(j);
      arrayOfObject[5] = Short.valueOf(l);
      arrayOfObject[6] = Boolean.valueOf(n);
      break;
    case 1: 
      localLocale = Locale.CHINA;
      str = "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b";
      arrayOfObject = new Object[7];
      arrayOfObject[0] = Integer.valueOf(c);
      arrayOfObject[1] = Integer.valueOf(d);
      arrayOfObject[2] = Integer.valueOf(b);
      arrayOfObject[3] = Boolean.valueOf(o);
      arrayOfObject[4] = Integer.valueOf(j);
      arrayOfObject[5] = Short.valueOf(l);
      arrayOfObject[6] = Boolean.valueOf(n);
    }
    return String.format(localLocale, str, arrayOfObject);
  }
}
