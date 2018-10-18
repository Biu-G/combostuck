package com.amap.api.mapcore2d;

import android.text.TextUtils;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import org.json.JSONObject;

public final class fi
  extends Inner_3dMap_location
{
  boolean a = true;
  private String b = null;
  private String c = "";
  private int d;
  private String e = "";
  private String f = "new";
  private JSONObject g = null;
  private String h = "";
  private String i = "";
  private long j = 0L;
  private String k = null;
  
  public fi(String paramString)
  {
    super(paramString);
  }
  
  public final String a()
  {
    return b;
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  public final String b()
  {
    return c;
  }
  
  public final void b(String paramString)
  {
    c = paramString;
  }
  
  public final int c()
  {
    return d;
  }
  
  public final void c(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (getProvider().equals("gps"))
      {
        d = 0;
        return;
      }
      if (paramString.equals("0"))
      {
        d = 0;
        return;
      }
      if (!paramString.equals("1")) {}
    }
    for (int m = 1;; m = -1)
    {
      d = m;
      return;
    }
  }
  
  public final String d()
  {
    return e;
  }
  
  public final void d(String paramString)
  {
    e = paramString;
  }
  
  public final JSONObject e()
  {
    return g;
  }
  
  public final void e(String paramString)
  {
    desc = paramString;
  }
  
  public final void setFloor(String paramString)
  {
    String str = paramString;
    if (!TextUtils.isEmpty(paramString))
    {
      str = paramString.replace("F", "");
      try
      {
        Integer.parseInt(str);
      }
      catch (Throwable paramString)
      {
        gc.a(paramString, "AMapLocationModel", "setFloor");
        str = null;
      }
    }
    floor = str;
  }
  
  public final JSONObject toJson(int paramInt)
  {
    try
    {
      JSONObject localJSONObject = super.toJson(paramInt);
      switch (paramInt)
      {
      case 1: 
        localJSONObject.put("retype", e);
        localJSONObject.put("cens", i);
        localJSONObject.put("poiid", buildingId);
        localJSONObject.put("floor", floor);
        localJSONObject.put("coord", d);
        localJSONObject.put("mcell", h);
        localJSONObject.put("desc", desc);
        localJSONObject.put("address", getAddress());
        if ((g != null) && (gf.a(localJSONObject, "offpct"))) {
          localJSONObject.put("offpct", g.getString("offpct"));
        }
      case 2: 
      case 3: 
        localJSONObject.put("type", f);
        localJSONObject.put("isReversegeo", a);
        return localJSONObject;
      }
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocationModel", "toStr");
      return null;
    }
    return localThrowable;
  }
  
  public final String toStr(int paramInt)
  {
    Object localObject;
    try
    {
      JSONObject localJSONObject = super.toJson(paramInt);
      localJSONObject.put("nb", k);
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocationModel", "toStr part2");
      localObject = null;
    }
    if (localObject == null) {
      return null;
    }
    return localObject.toString();
  }
}
