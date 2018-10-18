package com.amap.api.mapcore2d;

import android.graphics.PointF;

class bs
  implements Cloneable
{
  public int a = 0;
  public final int b;
  public final int c;
  public final int d;
  public final int e;
  public final boolean f;
  public PointF g;
  public int h = -1;
  public boolean i = false;
  private String j;
  
  public bs(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
    f = (cl.a(b, c, d) ^ true);
    b();
  }
  
  public bs(bs paramBs)
  {
    b = b;
    c = c;
    d = d;
    e = e;
    g = g;
    a = a;
    f = (cl.a(b, c, d) ^ true);
    b();
  }
  
  public bs a()
  {
    return new bs(this);
  }
  
  public void b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b);
    localStringBuilder.append("-");
    localStringBuilder.append(c);
    localStringBuilder.append("-");
    localStringBuilder.append(d);
    if ((f) && (q.i == 1))
    {
      localStringBuilder.append("-");
      localStringBuilder.append(1);
    }
    j = localStringBuilder.toString();
  }
  
  public String c()
  {
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof bs)) {
      return false;
    }
    paramObject = (bs)paramObject;
    return (b == b) && (c == c) && (d == d) && (e == e);
  }
  
  public int hashCode()
  {
    return b * 7 + c * 11 + d * 13 + e;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b);
    localStringBuilder.append("-");
    localStringBuilder.append(c);
    localStringBuilder.append("-");
    localStringBuilder.append(d);
    localStringBuilder.append("-");
    localStringBuilder.append(e);
    return localStringBuilder.toString();
  }
}
