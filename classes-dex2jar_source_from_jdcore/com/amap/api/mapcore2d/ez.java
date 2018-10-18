package com.amap.api.mapcore2d;

import android.content.Context;

public class ez
{
  private Context a;
  private cy b;
  private String c;
  
  public ez(Context paramContext, cy paramCy, String paramString)
  {
    a = paramContext.getApplicationContext();
    b = paramCy;
    c = paramString;
  }
  
  private static String a(Context paramContext, cy paramCy, String paramString)
  {
    return cs.b(paramContext, cz.b(cz.a(b(paramContext, paramCy, paramString))));
  }
  
  private static String b(Context paramContext, cy paramCy, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\"sdkversion\":\"");
      localStringBuilder.append(paramCy.c());
      localStringBuilder.append("\",\"product\":\"");
      localStringBuilder.append(paramCy.a());
      localStringBuilder.append("\",\"nt\":\"");
      localStringBuilder.append(ct.c(paramContext));
      localStringBuilder.append("\",\"details\":");
      localStringBuilder.append(paramString);
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return localStringBuilder.toString();
  }
  
  byte[] a()
  {
    return cz.a(a(a, b, c));
  }
}
