package com.amap.api.mapcore2d;

import android.content.Context;

public class dd
{
  protected static dd a;
  protected Thread.UncaughtExceptionHandler b;
  protected boolean c = true;
  
  public dd() {}
  
  public static void a(Throwable paramThrowable, String paramString1, String paramString2)
  {
    paramThrowable.printStackTrace();
    if (a != null) {
      a.a(paramThrowable, 1, paramString1, paramString2);
    }
  }
  
  protected void a(Context paramContext, cy paramCy, boolean paramBoolean) {}
  
  protected void a(cy paramCy, String paramString1, String paramString2) {}
  
  protected void a(Throwable paramThrowable, int paramInt, String paramString1, String paramString2) {}
}
