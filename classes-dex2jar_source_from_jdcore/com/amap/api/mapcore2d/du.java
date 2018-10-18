package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.List;

public class du
{
  private dm a;
  
  public du(Context paramContext)
  {
    try
    {
      a = new dm(paramContext, dm.a(dt.class));
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private void c(String paramString, Class<? extends dv> paramClass)
  {
    paramString = dv.c(paramString);
    a.a(paramString, paramClass);
  }
  
  public List<? extends dv> a(int paramInt, Class<? extends dv> paramClass)
  {
    try
    {
      String str = dv.c(paramInt);
      paramClass = a.b(str, paramClass);
      return paramClass;
    }
    catch (Throwable paramClass)
    {
      dd.a(paramClass, "LogDB", "ByState");
    }
    return null;
  }
  
  public void a(dv paramDv)
  {
    if (paramDv == null) {
      return;
    }
    String str = dv.c(paramDv.b());
    Object localObject = a.a(str, paramDv.getClass(), true);
    if ((localObject != null) && (((List)localObject).size() != 0))
    {
      localObject = (dv)((List)localObject).get(0);
      if (paramDv.a() == 0) {
        ((dv)localObject).b(((dv)localObject).c() + 1);
      } else {
        ((dv)localObject).b(0);
      }
      a.a(str, localObject, true);
      return;
    }
    a.a(paramDv, true);
  }
  
  public void a(String paramString, Class<? extends dv> paramClass)
  {
    try
    {
      c(paramString, paramClass);
      return;
    }
    catch (Throwable paramString)
    {
      dd.a(paramString, "LogDB", "delLog");
    }
  }
  
  public void b(dv paramDv)
  {
    try
    {
      String str = dv.c(paramDv.b());
      a.a(str, paramDv);
      return;
    }
    catch (Throwable paramDv)
    {
      dd.a(paramDv, "LogDB", "updateLogInfo");
    }
  }
  
  public void b(String paramString, Class<? extends dv> paramClass)
  {
    try
    {
      c(paramString, paramClass);
      return;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
  }
}
