package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.List;

public class dx
{
  private dm a;
  private Context b;
  
  public dx(Context paramContext)
  {
    b = paramContext;
    a = a(b);
  }
  
  private dm a(Context paramContext)
  {
    try
    {
      paramContext = new dm(paramContext, dm.a(dt.class));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "UpdateLogDB", "getDB");
    }
    return null;
  }
  
  public dy a()
  {
    try
    {
      if (a == null) {
        a = a(b);
      }
      Object localObject = a.b("1=1", dy.class);
      if (((List)localObject).size() > 0)
      {
        localObject = (dy)((List)localObject).get(0);
        return localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "UpdateLogDB", "getUpdateLog");
    }
    return null;
  }
  
  public void a(dy paramDy)
  {
    if (paramDy == null) {
      return;
    }
    try
    {
      if (a == null) {
        a = a(b);
      }
      List localList = a.b("1=1", dy.class);
      if ((localList != null) && (localList.size() != 0))
      {
        a.a("1=1", paramDy);
        return;
      }
      a.a(paramDy);
      return;
    }
    catch (Throwable paramDy)
    {
      dd.a(paramDy, "UpdateLogDB", "updateLog");
    }
  }
}
