package com.amap.api.mapcore2d;

import java.util.HashMap;
import java.util.Map;

@dn(a="file")
public class ei
{
  @do(a="fname", b=6)
  private String a;
  @do(a="md", b=6)
  private String b;
  @do(a="sname", b=6)
  private String c;
  @do(a="version", b=6)
  private String d;
  @do(a="dversion", b=6)
  private String e;
  @do(a="status", b=6)
  private String f;
  
  private ei() {}
  
  public ei(a paramA)
  {
    a = a.a(paramA);
    b = a.b(paramA);
    c = a.c(paramA);
    d = a.d(paramA);
    e = a.e(paramA);
    f = a.f(paramA);
  }
  
  public static String a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sname", paramString);
    return dm.a(localHashMap);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sname", paramString1);
    localHashMap.put("dversion", paramString2);
    return dm.a(localHashMap);
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("fname", paramString1);
    localHashMap.put("sname", paramString2);
    localHashMap.put("dversion", paramString4);
    localHashMap.put("version", paramString3);
    return dm.a(localHashMap);
  }
  
  public static String b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("fname", paramString);
    return dm.a(localHashMap);
  }
  
  public static String b(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("sname", paramString1);
    localHashMap.put("status", paramString2);
    return dm.a(localHashMap);
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(String paramString)
  {
    f = paramString;
  }
  
  public String d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public String f()
  {
    return f;
  }
  
  public static class a
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f = "copy";
    
    public a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    {
      a = paramString1;
      b = paramString2;
      c = paramString3;
      d = paramString4;
      e = paramString5;
    }
    
    public a a(String paramString)
    {
      f = paramString;
      return this;
    }
    
    public ei a()
    {
      return new ei(this);
    }
  }
}
