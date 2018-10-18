package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;
import java.util.List;

public class dj
  extends dk
{
  private static boolean b = true;
  
  protected dj(int paramInt)
  {
    super(paramInt);
  }
  
  protected String a(List<cy> paramList)
  {
    return null;
  }
  
  protected boolean a(Context paramContext)
  {
    if ((ct.m(paramContext) == 1) && (b))
    {
      b = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new dx(paramContext);
        dy localDy = paramContext.a();
        if (localDy == null) {
          return true;
        }
        if (localDy.b())
        {
          localDy.b(false);
          paramContext.a(localDy);
          return true;
        }
        return false;
      }
    }
    return false;
  }
}
