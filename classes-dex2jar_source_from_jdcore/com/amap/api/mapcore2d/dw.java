package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.Iterator;
import java.util.List;

public class dw
{
  private dm a;
  private Context b;
  
  public dw(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    a = a(b, paramBoolean);
  }
  
  private dm a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      paramContext = new dm(paramContext, dm.a(dt.class));
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      if (!paramBoolean) {
        dd.a(paramContext, "SDKDB", "getDB");
      } else {
        paramContext.printStackTrace();
      }
    }
    return null;
  }
  
  private boolean a(List<cy> paramList, cy paramCy)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (((cy)paramList.next()).equals(paramCy)) {
        return false;
      }
    }
    return true;
  }
  
  public List<cy> a()
  {
    try
    {
      Object localObject = cy.h();
      localObject = a.a((String)localObject, cy.class, true);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
  
  public void a(cy paramCy)
  {
    if (paramCy == null) {
      return;
    }
    try
    {
      if (a == null) {
        a = a(b, false);
      }
      String str = cy.a(paramCy.a());
      List localList = a.b(str, cy.class);
      if ((localList != null) && (localList.size() != 0))
      {
        if (a(localList, paramCy)) {
          a.a(str, paramCy);
        }
      }
      else
      {
        a.a(paramCy);
        return;
      }
    }
    catch (Throwable paramCy)
    {
      dd.a(paramCy, "SDKDB", "insert");
      paramCy.printStackTrace();
    }
  }
}
