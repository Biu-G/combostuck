package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;
import java.util.Date;
import java.util.List;

public class di
  extends dk
{
  private static boolean b = true;
  
  protected di(int paramInt)
  {
    super(paramInt);
  }
  
  protected String a(String paramString)
  {
    String str = cz.a(new Date().getTime());
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString);
    localStringBuilder.append(str);
    return cv.c(localStringBuilder.toString());
  }
  
  protected String a(List<cy> paramList)
  {
    return null;
  }
  
  protected boolean a(Context paramContext)
  {
    if (b)
    {
      b = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new dx(paramContext);
        dy localDy = paramContext.a();
        if (localDy == null) {
          return true;
        }
        if (localDy.a())
        {
          localDy.a(false);
          paramContext.a(localDy);
          return true;
        }
        return false;
      }
    }
    return false;
  }
}
