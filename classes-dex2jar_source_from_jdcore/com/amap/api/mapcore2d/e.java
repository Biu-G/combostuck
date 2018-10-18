package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;

abstract class e
{
  protected int a;
  protected int b;
  private Handler c = null;
  private int d = 0;
  private boolean e = false;
  private boolean f = true;
  private Runnable g = new Runnable()
  {
    public void run()
    {
      e.a(e.this);
      if (!f())
      {
        if (e.b(e.this) != null) {
          e.b(e.this).removeCallbacks(this);
        }
        e.a(e.this, null);
        if (e.c(e.this))
        {
          c();
          return;
        }
        b();
        return;
      }
      long l = System.currentTimeMillis();
      a();
      e.d(e.this);
      l = System.currentTimeMillis() - l;
      if (l < b) {
        try
        {
          Thread.sleep(b - l);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          cm.a(localInterruptedException, "AnimBase", "run");
        }
      }
    }
  };
  
  public e(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  private void g()
  {
    e = false;
  }
  
  private void h()
  {
    d += b;
    if ((a != -1) && (d > a))
    {
      g();
      b(true);
    }
  }
  
  private void i()
  {
    if (c != null) {
      c.post(g);
    }
  }
  
  protected abstract void a();
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  protected abstract void b();
  
  public void b(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  protected abstract void c();
  
  public void d()
  {
    if (!f())
    {
      c = new Handler(Looper.getMainLooper());
      e = true;
      f = false;
      d = 0;
    }
    i();
  }
  
  public void e()
  {
    n.a().b();
    g();
    g.run();
  }
  
  public boolean f()
  {
    return e;
  }
}
