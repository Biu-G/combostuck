package com.amap.api.mapcore2d;

import com.amap.api.maps2d.AMapException;

abstract class bj<T, V>
  extends ev
{
  protected T a;
  private int b = 1;
  private int f = 0;
  
  public bj() {}
  
  public bj(T paramT)
  {
    this();
    a = paramT;
  }
  
  private V b(byte[] paramArrayOfByte)
    throws AMapException
  {
    return a(paramArrayOfByte);
  }
  
  private V d()
    throws AMapException
  {
    try
    {
      Object localObject = b(b());
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "ProtocalHandler", "GetDataMayThrow");
      return null;
    }
    catch (AMapException localAMapException)
    {
      c();
      throw new AMapException(localAMapException.getErrorMessage());
    }
  }
  
  public V a()
    throws AMapException
  {
    if (a != null) {
      return d();
    }
    return null;
  }
  
  protected abstract V a(byte[] paramArrayOfByte)
    throws AMapException;
  
  protected byte[] b()
    throws AMapException
  {
    int i = 0;
    for (;;)
    {
      if (i >= b) {
        break label81;
      }
      try
      {
        byte[] arrayOfByte = eu.a(false).c(this);
        return arrayOfByte;
      }
      catch (co localCo)
      {
        i += 1;
        if (i >= b) {}
      }
      try
      {
        Thread.sleep(f * 1000);
        cm.a(localCo, "ProtocalHandler", "getData");
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
    throw new AMapException(localCo.getMessage());
    throw new AMapException(localCo.a());
    label81:
    return null;
  }
  
  protected V c()
  {
    return null;
  }
}
