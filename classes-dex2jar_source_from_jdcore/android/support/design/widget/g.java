package android.support.design.widget;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

class g
{
  private static g a;
  private final Object b = new Object();
  private final Handler c = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      if (what != 0) {
        return false;
      }
      a((g.b)obj);
      return true;
    }
  });
  private b d;
  private b e;
  
  private g() {}
  
  static g a()
  {
    if (a == null) {
      a = new g();
    }
    return a;
  }
  
  private boolean a(b paramB, int paramInt)
  {
    a localA = (a)a.get();
    if (localA != null)
    {
      c.removeCallbacksAndMessages(paramB);
      localA.a(paramInt);
      return true;
    }
    return false;
  }
  
  private void b()
  {
    if (e != null)
    {
      d = e;
      e = null;
      a localA = (a)d.a.get();
      if (localA != null)
      {
        localA.a();
        return;
      }
      d = null;
    }
  }
  
  private void b(b paramB)
  {
    if (b == -2) {
      return;
    }
    int i = 2750;
    if (b > 0) {
      i = b;
    } else if (b == -1) {
      i = 1500;
    }
    c.removeCallbacksAndMessages(paramB);
    c.sendMessageDelayed(Message.obtain(c, 0, paramB), i);
  }
  
  private boolean g(a paramA)
  {
    return (d != null) && (d.a(paramA));
  }
  
  private boolean h(a paramA)
  {
    return (e != null) && (e.a(paramA));
  }
  
  public void a(int paramInt, a paramA)
  {
    synchronized (b)
    {
      if (g(paramA))
      {
        d.b = paramInt;
        c.removeCallbacksAndMessages(d);
        b(d);
        return;
      }
      if (h(paramA)) {
        e.b = paramInt;
      } else {
        e = new b(paramInt, paramA);
      }
      if ((d != null) && (a(d, 4))) {
        return;
      }
      d = null;
      b();
      return;
    }
  }
  
  public void a(a paramA)
  {
    synchronized (b)
    {
      if (g(paramA))
      {
        d = null;
        if (e != null) {
          b();
        }
      }
      return;
    }
  }
  
  public void a(a paramA, int paramInt)
  {
    synchronized (b)
    {
      if (g(paramA)) {
        a(d, paramInt);
      } else if (h(paramA)) {
        a(e, paramInt);
      }
      return;
    }
  }
  
  void a(b paramB)
  {
    synchronized (b)
    {
      if ((d == paramB) || (e == paramB)) {
        a(paramB, 2);
      }
      return;
    }
  }
  
  public void b(a paramA)
  {
    synchronized (b)
    {
      if (g(paramA)) {
        b(d);
      }
      return;
    }
  }
  
  public void c(a paramA)
  {
    synchronized (b)
    {
      if ((g(paramA)) && (!d.c))
      {
        d.c = true;
        c.removeCallbacksAndMessages(d);
      }
      return;
    }
  }
  
  public void d(a paramA)
  {
    synchronized (b)
    {
      if ((g(paramA)) && (d.c))
      {
        d.c = false;
        b(d);
      }
      return;
    }
  }
  
  public boolean e(a paramA)
  {
    synchronized (b)
    {
      boolean bool = g(paramA);
      return bool;
    }
  }
  
  public boolean f(a paramA)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (g(paramA)) {
          break label40;
        }
        if (h(paramA))
        {
          break label40;
          return bool;
        }
      }
      boolean bool = false;
      continue;
      label40:
      bool = true;
    }
  }
  
  static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
  
  private static class b
  {
    final WeakReference<g.a> a;
    int b;
    boolean c;
    
    b(int paramInt, g.a paramA)
    {
      a = new WeakReference(paramA);
      b = paramInt;
    }
    
    boolean a(g.a paramA)
    {
      return (paramA != null) && (a.get() == paramA);
    }
  }
}
