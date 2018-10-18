package com.amap.api.mapcore2d;

import android.graphics.Matrix;
import android.graphics.Point;
import android.view.animation.Animation.AnimationListener;

class cf
  extends e
{
  public float c = -1.0F;
  public boolean d = false;
  private Animation.AnimationListener e;
  private b f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private boolean l;
  private boolean m = false;
  
  public cf(b paramB, Animation.AnimationListener paramAnimationListener, int paramInt)
  {
    super(n, 40);
    f = paramB;
    e = paramAnimationListener;
    a /= 2;
  }
  
  protected void a()
  {
    try
    {
      if (f != null)
      {
        if (f.a == null) {
          return;
        }
        if (l)
        {
          localObject = f.a.h;
          c += k;
        }
        else
        {
          localObject = f.a.h;
          c -= k;
        }
        Object localObject = new Matrix();
        ((Matrix)localObject).setScale(f.a.h.c, f.a.h.c, g, h);
        f.c(f.a.h.c);
        f.b((Matrix)localObject);
        return;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean, float paramFloat3, float paramFloat4)
  {
    l = paramBoolean;
    g = paramFloat3;
    h = paramFloat4;
    i = paramFloat1;
    f.a.h.c = i;
    if (l)
    {
      k = (f.a.h.c * b / a);
      j = (i * 2.0F);
      return;
    }
    k = (f.a.h.c * 0.5F * b / a);
    j = (i * 0.5F);
  }
  
  public void a(float paramFloat1, boolean paramBoolean, float paramFloat2, float paramFloat3)
  {
    f.c[0] = f.c[1];
    f.c[1] = paramFloat1;
    if (f.c[0] == f.c[1]) {
      return;
    }
    f.a().a(f.g());
    if (!f())
    {
      if (a < 160) {
        a = 160;
      }
      a(f.o(), paramFloat1, paramBoolean, paramFloat2, paramFloat3);
      f.a().e.a(true);
      f.a().e.b = true;
      e.onAnimationStart(null);
      super.d();
      return;
    }
    m = true;
    e();
    a(j, paramFloat1, paramBoolean, paramFloat2, paramFloat3);
    f.a().e.a(true);
    f.a().e.b = true;
    e.onAnimationStart(null);
    super.d();
    m = false;
  }
  
  public void a(int paramInt)
  {
    a = (paramInt / 2);
  }
  
  protected void b()
  {
    if (m) {
      return;
    }
    try
    {
      if (f != null)
      {
        if (f.a() == null) {
          return;
        }
        f.a().e.b = false;
        Point localPoint;
        w localW;
        if (d == true)
        {
          localPoint = new Point((int)g, (int)h);
          localW = f.d().a((int)g, (int)h);
          f.a().h.l = f.a().h.a(localW);
          f.a().h.a(localPoint);
          f.a().c.a(false, false);
        }
        f.i().c(c);
        e.onAnimationEnd(null);
        if (d == true)
        {
          localPoint = new Point(f.a().c.c() / 2, f.a().c.d() / 2);
          localW = f.d().a(f.a().c.c() / 2, f.a().c.d() / 2);
          f.a().h.l = f.a().h.a(localW);
          f.a().h.a(localPoint);
          f.a().c.a(false, false);
        }
        f.a.h.c = 1.0F;
        bb.j = 1.0F;
        f.a().a(true);
        l.a().b();
      }
      else
      {
        return;
      }
    }
    catch (Exception localException)
    {
      cm.a(localException, "ZoomCtlAnim", "onStop");
      a = 160;
    }
  }
  
  protected void c()
  {
    b();
  }
}
