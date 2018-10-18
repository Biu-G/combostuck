package com.amap.api.mapcore2d;

public class w
{
  private long a = Long.MIN_VALUE;
  private long b = Long.MIN_VALUE;
  private double c = Double.MIN_VALUE;
  private double d = Double.MIN_VALUE;
  
  public w()
  {
    a = 0L;
    b = 0L;
  }
  
  private w(double paramDouble1, double paramDouble2, long paramLong1, long paramLong2)
  {
    c = paramDouble1;
    d = paramDouble2;
    a = paramLong1;
    b = paramLong2;
  }
  
  w(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    if (paramBoolean == true)
    {
      a = ((paramDouble1 * 1000000.0D));
      b = ((paramDouble2 * 1000000.0D));
      return;
    }
    c = paramDouble1;
    d = paramDouble2;
  }
  
  public w(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public int a()
  {
    return (int)b;
  }
  
  public void a(double paramDouble)
  {
    d = paramDouble;
  }
  
  public int b()
  {
    return (int)a;
  }
  
  public void b(double paramDouble)
  {
    c = paramDouble;
  }
  
  public long c()
  {
    return b;
  }
  
  public long d()
  {
    return a;
  }
  
  public double e()
  {
    if (Double.doubleToLongBits(d) == Double.doubleToLongBits(Double.MIN_VALUE)) {
      d = (r.a(b) * 2.003750834E7D / 180.0D);
    }
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (w)paramObject;
    if (a != a) {
      return false;
    }
    if (b != b) {
      return false;
    }
    if (Double.doubleToLongBits(c) != Double.doubleToLongBits(c)) {
      return false;
    }
    return Double.doubleToLongBits(d) == Double.doubleToLongBits(d);
  }
  
  public double f()
  {
    if (Double.doubleToLongBits(c) == Double.doubleToLongBits(Double.MIN_VALUE)) {
      c = (Math.log(Math.tan((r.a(a) + 90.0D) * 3.141592653589793D / 360.0D)) / 0.017453292519943295D * 2.003750834E7D / 180.0D);
    }
    return c;
  }
  
  public w g()
  {
    return new w(c, d, a, b);
  }
  
  public int hashCode()
  {
    int i = (int)(a ^ a >>> 32);
    int j = (int)(b ^ b >>> 32);
    long l = Double.doubleToLongBits(c);
    int k = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(d);
    return (((i + 31) * 31 + j) * 31 + k) * 31 + (int)(l ^ l >>> 32);
  }
}
