package com.amap.api.mapcore2d;

public class er
{
  private es a;
  private ev b;
  
  public er(ev paramEv)
  {
    this(paramEv, 0L, -1L);
  }
  
  public er(ev paramEv, long paramLong1, long paramLong2)
  {
    b = paramEv;
    if (e == null) {
      paramEv = null;
    } else {
      paramEv = e;
    }
    a = new es(b.c, b.d, paramEv);
    a.b(paramLong2);
    a.a(paramLong1);
  }
  
  public void a(a paramA)
  {
    a.a(b.g(), b.e(), b.f(), paramA);
  }
  
  public static abstract interface a
  {
    public abstract void a(Throwable paramThrowable);
    
    public abstract void a(byte[] paramArrayOfByte, long paramLong);
    
    public abstract void b();
    
    public abstract void c();
  }
}
