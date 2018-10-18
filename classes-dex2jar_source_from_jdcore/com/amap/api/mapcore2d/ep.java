package com.amap.api.mapcore2d;

import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

public class ep
{
  private static ep a;
  
  public ep() {}
  
  public static ep a()
  {
    if (a == null) {
      a = new ep();
    }
    return a;
  }
  
  public ex a(ev paramEv, boolean paramBoolean)
    throws co
  {
    try
    {
      b(paramEv);
      Proxy localProxy;
      if (e == null) {
        localProxy = null;
      } else {
        localProxy = e;
      }
      paramEv = new es(c, d, localProxy, paramBoolean).a(paramEv.l(), paramEv.e(), paramEv.m());
      return paramEv;
    }
    catch (Throwable paramEv)
    {
      paramEv.printStackTrace();
      throw new co("未知的错误");
    }
    catch (co paramEv)
    {
      throw paramEv;
    }
  }
  
  public byte[] a(ev paramEv)
    throws co
  {
    try
    {
      paramEv = a(paramEv, false);
      if (paramEv != null) {
        return a;
      }
      return null;
    }
    catch (Throwable paramEv)
    {
      dd.a(paramEv, "BaseNetManager", "makeSyncPostRequest");
      throw new co("未知的错误");
    }
    catch (co paramEv)
    {
      throw paramEv;
    }
  }
  
  protected void b(ev paramEv)
    throws co
  {
    if (paramEv != null)
    {
      if ((paramEv.g() != null) && (!"".equals(paramEv.g()))) {
        return;
      }
      throw new co("request url is empty");
    }
    throw new co("requeust is null");
  }
  
  public static abstract interface a
  {
    public abstract URLConnection a(Proxy paramProxy, URL paramURL);
  }
}
