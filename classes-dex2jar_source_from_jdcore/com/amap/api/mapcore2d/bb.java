package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.MotionEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

abstract class bb
{
  static float j = 1.0F;
  private static Method p;
  private static Method q;
  private static boolean r = false;
  private static boolean s = false;
  b a;
  int b = 0;
  Matrix c = new Matrix();
  Matrix d = new Matrix();
  PointF e = new PointF();
  PointF f = new PointF();
  PointF g = new PointF();
  float h = 1.0F;
  float i = 1.0F;
  boolean k = false;
  boolean l = false;
  boolean m = false;
  public int n = 0;
  public long o = 0L;
  
  bb() {}
  
  public static a a(Context paramContext, b paramB)
  {
    paramContext = new a();
    a = paramB;
    return paramContext;
  }
  
  private static void b(MotionEvent paramMotionEvent)
  {
    if (s) {
      return;
    }
    s = true;
    try
    {
      p = paramMotionEvent.getClass().getMethod("getX", new Class[] { Integer.TYPE });
      q = paramMotionEvent.getClass().getMethod("getY", new Class[] { Integer.TYPE });
      if ((p != null) && (q != null))
      {
        r = true;
        return;
      }
    }
    catch (Exception paramMotionEvent)
    {
      cm.a(paramMotionEvent, "MutiTouchGestureDetector", "checkSDKForMuti");
    }
  }
  
  protected static class a
    extends bb
  {
    float p;
    float q;
    float r;
    float s;
    long t = 0L;
    int u = 0;
    int v = 0;
    private long w = 0L;
    
    protected a() {}
    
    private void a(PointF paramPointF, MotionEvent paramMotionEvent)
    {
      float f2 = 0.0F;
      try
      {
        f1 = ((Float)bb.b().invoke(paramMotionEvent, new Object[] { Integer.valueOf(0) })).floatValue();
        f3 = ((Float)bb.b().invoke(paramMotionEvent, new Object[] { Integer.valueOf(1) })).floatValue();
        f1 += f3;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        cm.a(localInvocationTargetException, "MutiTouchGestureDetector", "midPoint");
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        cm.a(localIllegalAccessException, "MutiTouchGestureDetector", "midPoint");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        cm.a(localIllegalArgumentException, "MutiTouchGestureDetector", "midPoint");
      }
      float f1 = 0.0F;
      try
      {
        f3 = ((Float)bb.c().invoke(paramMotionEvent, new Object[] { Integer.valueOf(0) })).floatValue();
        f4 = ((Float)bb.c().invoke(paramMotionEvent, new Object[] { Integer.valueOf(1) })).floatValue();
        f2 = f3 + f4;
      }
      catch (InvocationTargetException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "midPoint");
      }
      catch (IllegalAccessException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "midPoint");
      }
      catch (IllegalArgumentException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "midPoint");
      }
      float f4 = f2;
      float f3 = f1;
      if (u != 0)
      {
        f4 = f2;
        f3 = f1;
        if (v != 0)
        {
          f3 = u;
          f4 = v;
        }
      }
      paramPointF.set(f3 / 2.0F, f4 / 2.0F);
    }
    
    private float b(MotionEvent paramMotionEvent)
    {
      float f2 = 0.0F;
      float f3;
      try
      {
        f1 = ((Float)bb.b().invoke(paramMotionEvent, new Object[] { Integer.valueOf(0) })).floatValue();
        f3 = ((Float)bb.b().invoke(paramMotionEvent, new Object[] { Integer.valueOf(1) })).floatValue();
        f1 -= f3;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        cm.a(localInvocationTargetException, "MutiTouchGestureDetector", "distance");
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        cm.a(localIllegalAccessException, "MutiTouchGestureDetector", "distance");
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        cm.a(localIllegalArgumentException, "MutiTouchGestureDetector", "distance");
      }
      float f1 = 0.0F;
      try
      {
        f3 = ((Float)bb.c().invoke(paramMotionEvent, new Object[] { Integer.valueOf(0) })).floatValue();
        float f4 = ((Float)bb.c().invoke(paramMotionEvent, new Object[] { Integer.valueOf(1) })).floatValue();
        f2 = f3 - f4;
      }
      catch (InvocationTargetException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "distance");
      }
      catch (IllegalAccessException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "distance");
      }
      catch (IllegalArgumentException paramMotionEvent)
      {
        cm.a(paramMotionEvent, "MutiTouchGestureDetector", "distance");
      }
      return (float)Math.sqrt(f1 * f1 + f2 * f2);
    }
    
    public boolean a(MotionEvent paramMotionEvent, int paramInt1, int paramInt2)
    {
      u = paramInt1;
      v = paramInt2;
      bb.a(paramMotionEvent);
      if (!bb.a()) {
        return false;
      }
      boolean bool1;
      switch (paramMotionEvent.getAction() & 0xFF)
      {
      case 4: 
      default: 
        return false;
      case 5: 
        n += 1;
        if (n == 1)
        {
          m = true;
          j = 1.0F;
          h = b(paramMotionEvent);
          if (h > 10.0F)
          {
            c.reset();
            d.reset();
            d.set(c);
            a(f, paramMotionEvent);
            b = 2;
            k = true;
            bool1 = a.a(e);
            r = f.x;
            s = f.y;
            return false | bool1;
          }
        }
        break;
      case 3: 
      case 6: 
        n -= 1;
        if (n == 1)
        {
          m = true;
          b = 2;
        }
        if (n == 0)
        {
          a(f, paramMotionEvent);
          this.l = false;
          m = false;
          if (k)
          {
            bool1 = a.b(i, f);
            b = 0;
            return bool1 | false;
          }
        }
        break;
      case 2: 
        float f1;
        boolean bool2;
        if (b == 1)
        {
          f1 = paramMotionEvent.getX();
          float f2 = paramMotionEvent.getY();
          c.set(d);
          c.postTranslate(paramMotionEvent.getX() - e.x, paramMotionEvent.getY() - e.y);
          bool1 = a.a(f1 - p, f2 - q);
          p = f1;
          q = f2;
          bool2 = a.a(c);
          if (paramMotionEvent.getEventTime() - t < 30L) {
            return true;
          }
          return bool2 | false | bool1;
        }
        if (b == 2)
        {
          f1 = b(paramMotionEvent);
          i = 1.0F;
          long l = paramMotionEvent.getEventTime();
          if ((f1 > 10.0F) && (Math.abs(f1 - h) > 5.0F) && (l - w > 10L))
          {
            w = l;
            i = (f1 / h);
            j = 1.0F;
            h = f1;
            a(g, paramMotionEvent);
            bool1 = a.a(g.x - r, g.y - s);
            r = g.x;
            s = g.y;
            bool2 = a.a(i, f);
            this.l = true;
            return bool1 | false | bool2;
          }
        }
        break;
      case 1: 
        o = paramMotionEvent.getEventTime();
        k = false;
        b = 0;
        return false;
      case 0: 
        t = paramMotionEvent.getEventTime();
        p = paramMotionEvent.getX();
        q = paramMotionEvent.getY();
        d.set(c);
        e.set(p, q);
        b = 1;
      }
      return false;
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean a(float paramFloat1, float paramFloat2);
    
    public abstract boolean a(float paramFloat, PointF paramPointF);
    
    public abstract boolean a(Matrix paramMatrix);
    
    public abstract boolean a(PointF paramPointF);
    
    public abstract boolean b(float paramFloat, PointF paramPointF);
  }
}
