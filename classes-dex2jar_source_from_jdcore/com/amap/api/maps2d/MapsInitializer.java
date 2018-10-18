package com.amap.api.maps2d;

import android.content.Context;
import android.os.RemoteException;
import com.amap.api.mapcore2d.cr;

public final class MapsInitializer
{
  private static boolean a = true;
  private static boolean b = false;
  public static String sdcardDir = "";
  
  public MapsInitializer() {}
  
  public static boolean getNetworkEnable()
  {
    return a;
  }
  
  public static boolean getUpdateDataActiveEnable()
  {
    return b;
  }
  
  public static String getVersion()
  {
    return "5.2.0";
  }
  
  public static void initialize(Context paramContext)
    throws RemoteException
  {
    if (paramContext != null) {
      com.amap.api.mapcore2d.ar.a = paramContext.getApplicationContext();
    }
  }
  
  public static void loadWorldGridMap(boolean paramBoolean)
  {
    com.amap.api.mapcore2d.q.i = paramBoolean ^ true;
  }
  
  public static void replaceURL(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (paramString1.equals("")) {
        return;
      }
      com.amap.api.mapcore2d.q.h = paramString1;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString2);
      localStringBuilder.append("DIY");
      com.amap.api.mapcore2d.q.g = localStringBuilder.toString();
      if (paramString1.contains("openstreetmap")) {
        com.amap.api.mapcore2d.q.c = 19;
      }
      return;
    }
  }
  
  public static void setApiKey(String paramString)
  {
    cr.a(paramString);
  }
  
  public static void setNetworkEnable(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static void setUpdateDataActiveEnable(boolean paramBoolean)
  {
    b = paramBoolean;
  }
}
