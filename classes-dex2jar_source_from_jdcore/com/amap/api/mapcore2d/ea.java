package com.amap.api.mapcore2d;

public class ea
{
  String a;
  String b;
  String c;
  String d;
  String e;
  int f;
  int g;
  private String h;
  private String i;
  
  public ea(String paramString1, String paramString2, String paramString3)
  {
    h = paramString1;
    i = paramString2;
    try
    {
      paramString1 = paramString1.split("/");
      int j = paramString1.length;
      if (j <= 1) {
        return;
      }
      a = paramString1[(j - 1)];
      paramString1 = a.split("_");
      b = paramString1[0];
      c = paramString1[2];
      d = paramString1[1];
      f = Integer.parseInt(paramString1[3]);
      g = Integer.parseInt(paramString1[4].split("\\.")[0]);
      return;
    }
    catch (Throwable paramString1)
    {
      ek.a(paramString1, "DexDownloadItem", "DexDownloadItem");
    }
  }
  
  String a()
  {
    return h;
  }
  
  String b()
  {
    return i;
  }
  
  String c()
  {
    return c;
  }
}
