package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.Map;

public final class ga
  extends eq
{
  Map<String, String> f = null;
  String g = "";
  byte[] h = null;
  byte[] i = null;
  boolean j = false;
  String k = null;
  Map<String, String> l = null;
  boolean m = false;
  
  public ga(Context paramContext, cy paramCy)
  {
    super(paramContext, paramCy);
  }
  
  public final void a(String paramString)
  {
    k = paramString;
  }
  
  public final void a(Map<String, String> paramMap)
  {
    l = paramMap;
  }
  
  public final void b(String paramString)
  {
    g = paramString;
  }
  
  public final void b(Map<String, String> paramMap)
  {
    f = paramMap;
  }
  
  public final void b(byte[] paramArrayOfByte)
  {
    h = paramArrayOfByte;
  }
  
  public final byte[] b()
  {
    return h;
  }
  
  public final byte[] c()
  {
    return i;
  }
  
  public final Map<String, String> e()
  {
    return f;
  }
  
  public final Map<String, String> f()
  {
    return l;
  }
  
  public final String g()
  {
    return g;
  }
  
  public final boolean h()
  {
    return j;
  }
  
  public final String j()
  {
    return k;
  }
  
  protected final boolean k()
  {
    return m;
  }
  
  public final void n()
  {
    j = true;
  }
  
  public final void o()
  {
    m = true;
  }
}
