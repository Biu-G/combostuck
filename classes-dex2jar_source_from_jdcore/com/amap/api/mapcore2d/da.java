package com.amap.api.mapcore2d;

import java.util.HashMap;
import java.util.Map;

@Deprecated
class da
  extends ev
{
  private Map<String, String> a = new HashMap();
  private String b;
  private Map<String, String> f = new HashMap();
  
  da() {}
  
  void a(String paramString)
  {
    b = paramString;
  }
  
  void a(Map<String, String> paramMap)
  {
    a.clear();
    a.putAll(paramMap);
  }
  
  void b(Map<String, String> paramMap)
  {
    f.clear();
    f.putAll(paramMap);
  }
  
  public Map<String, String> e()
  {
    return a;
  }
  
  public Map<String, String> f()
  {
    return f;
  }
  
  public String g()
  {
    return b;
  }
}
