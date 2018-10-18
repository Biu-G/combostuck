package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.SharedPreferences;

public final class ge
{
  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      int i = paramContext.getSharedPreferences(paramString1, 0).getInt(paramString2, 200);
      return i;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "SPUtil", "getPrefsInt");
    }
    return 200;
  }
  
  public static boolean b(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      boolean bool = paramContext.getSharedPreferences(paramString1, 0).getBoolean(paramString2, true);
      return bool;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "SPUtil", "getPrefsBoolean");
    }
    return true;
  }
}
