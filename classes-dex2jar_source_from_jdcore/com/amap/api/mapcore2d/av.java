package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import java.util.ArrayList;

class av
{
  public int a = 256;
  public int b = 256;
  float c = 1.0F;
  public double d = 156543.0339D;
  int e = 0;
  double f = -2.003750834E7D;
  double g = 2.003750834E7D;
  public int h = q.d;
  public int i = q.c;
  public float j = 10.0F;
  public double k = 0.0D;
  public w l = null;
  public w m = null;
  public Point n = null;
  public a o = null;
  az.c p = null;
  private double q = 116.39716D;
  private double r = 39.91669D;
  private double s = 0.01745329251994329D;
  
  public av(az.c paramC)
  {
    p = paramC;
  }
  
  private double[] b(PointF paramPointF1, PointF paramPointF2)
  {
    double d1 = k;
    paramPointF1 = b(paramPointF1, l, n, d1, o);
    paramPointF2 = b(paramPointF2, l, n, d1, o);
    d1 = paramPointF2.e();
    double d4 = paramPointF1.e();
    double d2 = paramPointF2.f();
    double d3 = paramPointF1.f();
    d1 = l.e() + (d1 - d4);
    d3 = l.f() + (d2 - d3);
    for (;;)
    {
      d2 = d1;
      if (d1 >= o.a) {
        break;
      }
      d1 += o.b - o.a;
    }
    for (;;)
    {
      d1 = d3;
      if (d2 <= o.b) {
        break;
      }
      d2 -= o.b - o.a;
    }
    for (;;)
    {
      d3 = d1;
      if (d1 >= o.d) {
        break;
      }
      d1 += o.c - o.d;
    }
    while (d3 > o.c) {
      d3 -= o.c - o.d;
    }
    return new double[] { d2, d3 };
  }
  
  public float a(w paramW1, w paramW2)
  {
    if ((paramW1 != null) && (paramW2 != null))
    {
      double d4 = r.a(paramW1.c());
      double d3 = r.a(paramW1.d());
      double d2 = r.a(paramW2.c());
      double d1 = r.a(paramW2.d());
      double d5 = d4 * s;
      double d6 = d3 * s;
      d3 = d2 * s;
      d4 = d1 * s;
      d1 = Math.sin(d5);
      d2 = Math.sin(d6);
      d5 = Math.cos(d5);
      d6 = Math.cos(d6);
      double d7 = Math.sin(d3);
      double d8 = Math.sin(d4);
      d3 = Math.cos(d3);
      d4 = Math.cos(d4);
      paramW1 = new double[3];
      paramW2 = new double[3];
      paramW1[0] = (d5 * d6);
      paramW1[1] = (d6 * d1);
      paramW1[2] = d2;
      paramW2[0] = (d3 * d4);
      paramW2[1] = (d4 * d7);
      paramW2[2] = d8;
      return (float)(Math.asin(Math.sqrt((paramW1[0] - paramW2[0]) * (paramW1[0] - paramW2[0]) + (paramW1[1] - paramW2[1]) * (paramW1[1] - paramW2[1]) + (paramW1[2] - paramW2[2]) * (paramW1[2] - paramW2[2])) / 2.0D) * 1.27420015798544E7D);
    }
    return 0.0F;
  }
  
  public PointF a(int paramInt1, int paramInt2)
  {
    double d2 = a * paramInt1;
    double d3 = k;
    double d4 = f;
    double d1;
    if (e == 0) {
      d1 = g - paramInt2 * a * k;
    } else if (e == 1) {
      d1 = (paramInt2 + 1) * a * k;
    } else {
      d1 = 0.0D;
    }
    return a(new w(d1, d2 * d3 + d4, false), l, n, k);
  }
  
  PointF a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, PointF paramPointF, int paramInt5, int paramInt6)
  {
    PointF localPointF = new PointF();
    x = ((paramInt1 - paramInt3) * a + x);
    if (e == 0) {
      y = ((paramInt2 - paramInt4) * a + y);
    } else if (e == 1) {
      y -= (paramInt2 - paramInt4) * a;
    }
    if ((x + a > 0.0F) && (x < paramInt5) && (y + a > 0.0F) && (y < paramInt6)) {
      return localPointF;
    }
    return null;
  }
  
  PointF a(w paramW1, w paramW2, Point paramPoint, double paramDouble)
  {
    if (paramW1 != null)
    {
      if (paramW2 == null) {
        return null;
      }
      try
      {
        PointF localPointF = new PointF();
        try
        {
          x = ((float)((paramW1.e() - paramW2.e()) / paramDouble + x));
          y = ((float)(y - (paramW1.f() - paramW2.f()) / paramDouble));
          return localPointF;
        }
        catch (Throwable paramW2)
        {
          paramW1 = localPointF;
        }
        cm.a(paramW2, "MapProjection", "convertProjectionToScreen");
      }
      catch (Throwable paramW2)
      {
        paramW1 = null;
      }
      return paramW1;
    }
    return null;
  }
  
  public w a(PointF paramPointF1, PointF paramPointF2)
  {
    paramPointF1 = b(paramPointF1, paramPointF2);
    paramPointF2 = new w(l.b(), l.a());
    paramPointF2.b(paramPointF1[1]);
    paramPointF2.a(paramPointF1[0]);
    return paramPointF2;
  }
  
  public w a(PointF paramPointF, w paramW, Point paramPoint, double paramDouble, a paramA)
  {
    return b(b(paramPointF, paramW, paramPoint, paramDouble, paramA));
  }
  
  public w a(w paramW)
  {
    if (paramW == null) {
      return null;
    }
    double d1 = paramW.b() / 1000000.0D;
    double d2 = paramW.a() / 1000000.0D * 2.003750834E7D / 180.0D;
    return new w(Math.log(Math.tan((d1 + 90.0D) * 3.141592653589793D / 360.0D)) / 0.017453292519943295D * 2.003750834E7D / 180.0D, d2, false);
  }
  
  public ArrayList<bs> a(w paramW, int paramInt1, int paramInt2, int paramInt3)
  {
    double d2 = k;
    int i7 = (int)((paramW.e() - f) / (a * d2));
    double d3 = a * i7;
    double d4 = f;
    if (e == 0) {
      paramInt1 = (int)((g - paramW.f()) / (a * d2));
    }
    for (double d1 = g - a * paramInt1 * d2;; d1 = (paramInt1 + 1) * a * d2)
    {
      i2 = paramInt1;
      break label144;
      if (e != 1) {
        break;
      }
      paramInt1 = (int)((paramW.f() - g) / (a * d2));
    }
    d1 = 0.0D;
    int i2 = 0;
    label144:
    PointF localPointF = a(new w(d1, d3 * d2 + d4, false), paramW, n, d2);
    Object localObject = new bs(i7, i2, b(), -1);
    g = localPointF;
    paramW = new ArrayList();
    paramW.add(localObject);
    int i3 = 1;
    int i6 = i7 - i3;
    int i4 = i6;
    paramInt1 = 0;
    label231:
    int i1 = i7 + i3;
    int i5;
    if (i4 <= i1) {
      i5 = i2 + i3;
    }
    for (;;)
    {
      try
      {
        localObject = a(i4, i5, i7, i2, localPointF, paramInt2, paramInt3);
        i1 = paramInt1;
        if (localObject != null)
        {
          i1 = paramInt1;
          if (paramInt1 == 0) {
            i1 = 1;
          }
          localBs = new bs(i4, i5, b(), -1);
          g = ((PointF)localObject);
          paramW.add(localBs);
        }
        i5 = i2 - i3;
        localObject = a(i4, i5, i7, i2, localPointF, paramInt2, paramInt3);
        paramInt1 = i1;
        if (localObject == null) {
          continue;
        }
        paramInt1 = i1;
        if (i1 == 0) {
          paramInt1 = 1;
        }
        localBs = new bs(i4, i5, b(), -1);
        g = ((PointF)localObject);
        paramW.add(localBs);
      }
      catch (Error localError)
      {
        bs localBs;
        continue;
      }
      if (i5 > i2 - i3)
      {
        localObject = a(i4, i5, i7, i2, localPointF, paramInt2, paramInt3);
        i1 = paramInt1;
        if (localObject != null)
        {
          i1 = paramInt1;
          if (paramInt1 == 0) {
            i1 = 1;
          }
          localBs = new bs(i4, i5, b(), -1);
          g = ((PointF)localObject);
          paramW.add(localBs);
        }
        localObject = a(i6, i5, i7, i2, localPointF, paramInt2, paramInt3);
        if (localObject != null)
        {
          paramInt1 = i1;
          if (i1 == 0) {
            paramInt1 = 1;
          }
          localBs = new bs(i6, i5, b(), -1);
          g = ((PointF)localObject);
          paramW.add(localBs);
        }
        else
        {
          paramInt1 = i1;
        }
        i5 -= 1;
        continue;
        cm.a(localPointF, "MapProjection", "getTilesInDomain");
        return paramW;
      }
      else
      {
        if (paramInt1 == 0) {
          return paramW;
        }
        i3 += 1;
        break;
        i4 += 1;
        break label231;
        i5 = i2 + i3 - 1;
        i4 = i1;
      }
    }
  }
  
  public void a()
  {
    d = (g * 2.0D / a);
    int i1 = (int)j;
    k = (d / (1 << i1) / (j + 1.0F - i1));
    l = a(new w(r, q, true));
    m = l.g();
    n = new Point(p.c() / 2, p.d() / 2);
    o = new a();
    o.a = -2.0037508E7F;
    o.b = 2.0037508E7F;
    o.c = 2.0037508E7F;
    o.d = -2.0037508E7F;
  }
  
  public void a(Point paramPoint)
  {
    n = paramPoint;
  }
  
  public void a(PointF paramPointF1, PointF paramPointF2, float paramFloat)
  {
    if (l == null) {
      return;
    }
    paramPointF1 = b(paramPointF1, paramPointF2);
    l.b(paramPointF1[1]);
    l.a(paramPointF1[0]);
  }
  
  int b()
  {
    int i1 = (int)j;
    if (j - i1 < az.a) {
      return i1;
    }
    return i1 + 1;
  }
  
  public PointF b(w paramW1, w paramW2, Point paramPoint, double paramDouble)
  {
    if ((p != null) && (paramW1 != null) && (paramW2 != null) && (paramPoint != null))
    {
      paramW1 = a(a(paramW1), paramW2, paramPoint, paramDouble);
      return p.g().b(paramW1);
    }
    return null;
  }
  
  w b(PointF paramPointF, w paramW, Point paramPoint, double paramDouble, a paramA)
  {
    if ((p != null) && (paramPointF != null) && (paramW != null) && (paramPoint != null) && (paramA != null))
    {
      paramPointF = p.g().c(paramPointF);
      float f1 = x;
      float f2 = x;
      float f3 = y;
      float f4 = y;
      double d1 = paramW.e() + (f1 - f2) * paramDouble;
      double d2 = paramW.f() - (f3 - f4) * paramDouble;
      for (paramDouble = d1; paramDouble < a; paramDouble += b - a) {}
      for (d1 = paramDouble;; d1 -= b - a)
      {
        paramDouble = d2;
        if (d1 <= b) {
          break;
        }
      }
      while (paramDouble < d) {
        paramDouble += c - d;
      }
      while (paramDouble > c) {
        paramDouble -= c - d;
      }
      return new w(paramDouble, d1, false);
    }
    return null;
  }
  
  public w b(w paramW)
  {
    if (paramW == null) {
      return null;
    }
    float f1 = (float)(paramW.e() * 180.0D / 2.003750834E7D);
    return new w((int)((float)((Math.atan(Math.exp((float)(paramW.f() * 180.0D / 2.003750834E7D) * 3.141592653589793D / 180.0D)) * 2.0D - 1.5707963267948966D) * 57.29577951308232D) * 1000000.0D), (int)(f1 * 1000000.0D));
  }
  
  static class a
  {
    float a;
    float b;
    float c;
    float d;
    
    a() {}
  }
}
