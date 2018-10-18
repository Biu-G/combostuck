package com.amap.api.mapcore2d;

class by
  extends e
{
  private w c;
  private w d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  private bz l;
  private long m;
  private int n;
  
  public by(int paramInt1, int paramInt2, w paramW1, w paramW2, int paramInt3, bz paramBz)
  {
    super(paramInt1, paramInt2);
    c = paramW1;
    d = paramW2;
    e = ((int)c.e());
    f = ((int)c.f());
    l = paramBz;
    i = ((int)Math.abs(paramW2.e() - c.e()));
    j = ((int)Math.abs(paramW2.f() - c.f()));
    m = System.currentTimeMillis();
    n = paramInt1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 > paramInt1)
    {
      paramInt3 = paramInt1 + paramInt3;
      paramInt1 = paramInt3;
      if (paramInt3 < paramInt2) {
        return paramInt1;
      }
      k = 0;
    }
    else
    {
      paramInt3 = paramInt1 - paramInt3;
      paramInt1 = paramInt3;
      if (paramInt3 > paramInt2) {
        return paramInt1;
      }
      k = 0;
    }
    paramInt1 = paramInt2;
    return paramInt1;
  }
  
  private void b(int paramInt)
  {
    long l1 = System.currentTimeMillis();
    int i1 = (int)(l1 - m);
    m = l1;
    float f1 = i1 / paramInt;
    g = ((int)(i * f1));
    h = ((int)(j * f1));
  }
  
  protected void a()
  {
    b(n);
    int i1 = (int)d.e();
    int i2 = (int)d.f();
    if (!f())
    {
      e = i1;
      f = i2;
      l.a(new w(f, e, false));
      return;
    }
    k += 1;
    e = a(e, i1, g);
    f = a(f, i2, h);
    l.a(new w(f, e, false));
    if ((e == i1) && (f == i2))
    {
      a(false);
      b(true);
      g();
    }
  }
  
  protected void b()
  {
    l.c();
    n.a().b();
  }
  
  protected void c()
  {
    l.c();
    l.a().b();
  }
  
  protected void g()
  {
    bm.a().b();
  }
}
