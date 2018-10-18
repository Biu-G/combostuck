package com.amap.api.mapcore2d;

import java.util.HashMap;
import java.util.Map;

public abstract class dv
{
  @do(a="b2", b=2)
  protected int a = -1;
  @do(a="b1", b=6)
  protected String b;
  @do(a="b3", b=2)
  protected int c = 1;
  @do(a="a1", b=6)
  private String d;
  
  public dv() {}
  
  public static String c(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("b2");
      localStringBuilder.append("=");
      localStringBuilder.append(paramInt);
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return localStringBuilder.toString();
  }
  
  public static String c(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("b1", paramString);
    return dm.a(localHashMap);
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    c = paramInt;
  }
  
  public void b(String paramString)
  {
    d = cz.b(paramString);
  }
  
  public int c()
  {
    return c;
  }
}
