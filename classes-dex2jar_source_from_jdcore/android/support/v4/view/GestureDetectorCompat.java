package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class GestureDetectorCompat
{
  private final a a;
  
  public GestureDetectorCompat(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, null);
  }
  
  public GestureDetectorCompat(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      a = new c(paramContext, paramOnGestureListener, paramHandler);
      return;
    }
    a = new b(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean isLongpressEnabled()
  {
    return a.a();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
  
  public void setIsLongpressEnabled(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    a.a(paramOnDoubleTapListener);
  }
  
  static abstract interface a
  {
    public abstract void a(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener);
    
    public abstract void a(boolean paramBoolean);
    
    public abstract boolean a();
    
    public abstract boolean a(MotionEvent paramMotionEvent);
  }
  
  static class b
    implements GestureDetectorCompat.a
  {
    private static final int j = ;
    private static final int k = ViewConfiguration.getTapTimeout();
    private static final int l = ViewConfiguration.getDoubleTapTimeout();
    final GestureDetector.OnGestureListener a;
    GestureDetector.OnDoubleTapListener b;
    boolean c;
    boolean d;
    MotionEvent e;
    private int f;
    private int g;
    private int h;
    private int i;
    private final Handler m;
    private boolean n;
    private boolean o;
    private boolean p;
    private MotionEvent q;
    private boolean r;
    private float s;
    private float t;
    private float u;
    private float v;
    private boolean w;
    private VelocityTracker x;
    
    b(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
    {
      if (paramHandler != null) {
        m = new a(paramHandler);
      } else {
        m = new a();
      }
      a = paramOnGestureListener;
      if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
        a((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
      }
      a(paramContext);
    }
    
    private void a(Context paramContext)
    {
      if (paramContext != null)
      {
        if (a != null)
        {
          w = true;
          paramContext = ViewConfiguration.get(paramContext);
          int i1 = paramContext.getScaledTouchSlop();
          int i2 = paramContext.getScaledDoubleTapSlop();
          h = paramContext.getScaledMinimumFlingVelocity();
          i = paramContext.getScaledMaximumFlingVelocity();
          f = (i1 * i1);
          g = (i2 * i2);
          return;
        }
        throw new IllegalArgumentException("OnGestureListener must not be null");
      }
      throw new IllegalArgumentException("Context must not be null");
    }
    
    private boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, MotionEvent paramMotionEvent3)
    {
      boolean bool2 = p;
      boolean bool1 = false;
      if (!bool2) {
        return false;
      }
      if (paramMotionEvent3.getEventTime() - paramMotionEvent2.getEventTime() > l) {
        return false;
      }
      int i1 = (int)paramMotionEvent1.getX() - (int)paramMotionEvent3.getX();
      int i2 = (int)paramMotionEvent1.getY() - (int)paramMotionEvent3.getY();
      if (i1 * i1 + i2 * i2 < g) {
        bool1 = true;
      }
      return bool1;
    }
    
    private void c()
    {
      m.removeMessages(1);
      m.removeMessages(2);
      m.removeMessages(3);
      x.recycle();
      x = null;
      r = false;
      c = false;
      o = false;
      p = false;
      d = false;
      if (n) {
        n = false;
      }
    }
    
    private void d()
    {
      m.removeMessages(1);
      m.removeMessages(2);
      m.removeMessages(3);
      r = false;
      o = false;
      p = false;
      d = false;
      if (n) {
        n = false;
      }
    }
    
    public void a(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
    {
      b = paramOnDoubleTapListener;
    }
    
    public void a(boolean paramBoolean)
    {
      w = paramBoolean;
    }
    
    public boolean a()
    {
      return w;
    }
    
    public boolean a(MotionEvent paramMotionEvent)
    {
      int i1 = paramMotionEvent.getAction();
      if (x == null) {
        x = VelocityTracker.obtain();
      }
      x.addMovement(paramMotionEvent);
      int i5 = i1 & 0xFF;
      boolean bool3 = false;
      if (i5 == 6) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      int i2;
      if (i1 != 0) {
        i2 = paramMotionEvent.getActionIndex();
      } else {
        i2 = -1;
      }
      int i4 = paramMotionEvent.getPointerCount();
      int i3 = 0;
      float f2 = 0.0F;
      float f1 = 0.0F;
      while (i3 < i4)
      {
        if (i2 != i3)
        {
          f2 += paramMotionEvent.getX(i3);
          f1 += paramMotionEvent.getY(i3);
        }
        i3 += 1;
      }
      if (i1 != 0) {
        i1 = i4 - 1;
      } else {
        i1 = i4;
      }
      float f3 = i1;
      f2 /= f3;
      f1 /= f3;
      switch (i5)
      {
      case 4: 
      default: 
        return false;
      case 6: 
        s = f2;
        u = f2;
        t = f1;
        v = f1;
        x.computeCurrentVelocity(1000, i);
        i2 = paramMotionEvent.getActionIndex();
        i1 = paramMotionEvent.getPointerId(i2);
        f1 = x.getXVelocity(i1);
        f2 = x.getYVelocity(i1);
        i1 = 0;
        for (;;)
        {
          bool2 = bool3;
          if (i1 >= i4) {
            break;
          }
          if (i1 != i2)
          {
            i3 = paramMotionEvent.getPointerId(i1);
            if (x.getXVelocity(i3) * f1 + x.getYVelocity(i3) * f2 < 0.0F)
            {
              x.clear();
              return false;
            }
          }
          i1 += 1;
        }
      case 5: 
        s = f2;
        u = f2;
        t = f1;
        v = f1;
        d();
        return false;
      case 3: 
        c();
        return false;
      case 2: 
        if (n) {
          return false;
        }
        f3 = s - f2;
        float f4 = t - f1;
        if (r) {
          return false | b.onDoubleTapEvent(paramMotionEvent);
        }
        if (o)
        {
          i1 = (int)(f2 - u);
          i2 = (int)(f1 - v);
          i1 = i1 * i1 + i2 * i2;
          if (i1 > f)
          {
            bool2 = a.onScroll(e, paramMotionEvent, f3, f4);
            s = f2;
            t = f1;
            o = false;
            m.removeMessages(3);
            m.removeMessages(1);
            m.removeMessages(2);
          }
          else
          {
            bool2 = false;
          }
          bool3 = bool2;
          if (i1 > f)
          {
            p = false;
            bool3 = bool2;
          }
        }
        else
        {
          if (Math.abs(f3) < 1.0F)
          {
            bool2 = bool3;
            if (Math.abs(f4) < 1.0F) {
              break label1161;
            }
          }
          bool2 = a.onScroll(e, paramMotionEvent, f3, f4);
          s = f2;
          t = f1;
          return bool2;
        }
      case 1: 
        c = false;
        MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
        if (r)
        {
          bool2 = b.onDoubleTapEvent(paramMotionEvent) | false;
        }
        else
        {
          if (n)
          {
            m.removeMessages(3);
            n = false;
          }
          else
          {
            if (o)
            {
              bool2 = a.onSingleTapUp(paramMotionEvent);
              if ((d) && (b != null)) {
                b.onSingleTapConfirmed(paramMotionEvent);
              }
              break label828;
            }
            VelocityTracker localVelocityTracker = x;
            i1 = paramMotionEvent.getPointerId(0);
            localVelocityTracker.computeCurrentVelocity(1000, i);
            f1 = localVelocityTracker.getYVelocity(i1);
            f2 = localVelocityTracker.getXVelocity(i1);
            if ((Math.abs(f1) > h) || (Math.abs(f2) > h)) {
              break label810;
            }
          }
          bool2 = false;
          break label828;
          label810:
          bool2 = a.onFling(e, paramMotionEvent, f2, f1);
        }
        label828:
        if (q != null) {
          q.recycle();
        }
        q = localMotionEvent;
        if (x != null)
        {
          x.recycle();
          x = null;
        }
        r = false;
        d = false;
        m.removeMessages(1);
        m.removeMessages(2);
        bool3 = bool2;
        return bool3;
      }
      boolean bool1;
      if (b != null)
      {
        bool2 = m.hasMessages(3);
        if (bool2) {
          m.removeMessages(3);
        }
        if ((e != null) && (q != null) && (bool2) && (a(e, q, paramMotionEvent)))
        {
          r = true;
          bool1 = b.onDoubleTap(e) | false | b.onDoubleTapEvent(paramMotionEvent);
        }
        else
        {
          m.sendEmptyMessageDelayed(3, l);
        }
      }
      else
      {
        bool1 = false;
      }
      s = f2;
      u = f2;
      t = f1;
      v = f1;
      if (e != null) {
        e.recycle();
      }
      e = MotionEvent.obtain(paramMotionEvent);
      o = true;
      p = true;
      c = true;
      n = false;
      d = false;
      if (w)
      {
        m.removeMessages(2);
        m.sendEmptyMessageAtTime(2, e.getDownTime() + k + j);
      }
      m.sendEmptyMessageAtTime(1, e.getDownTime() + k);
      boolean bool2 = bool1 | a.onDown(paramMotionEvent);
      label1161:
      return bool2;
    }
    
    void b()
    {
      m.removeMessages(3);
      d = false;
      n = true;
      a.onLongPress(e);
    }
    
    private class a
      extends Handler
    {
      a() {}
      
      a(Handler paramHandler)
      {
        super();
      }
      
      public void handleMessage(Message paramMessage)
      {
        switch (what)
        {
        default: 
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Unknown message ");
          localStringBuilder.append(paramMessage);
          throw new RuntimeException(localStringBuilder.toString());
        case 3: 
          if (b != null)
          {
            if (!c)
            {
              b.onSingleTapConfirmed(e);
              return;
            }
            d = true;
            return;
          }
          break;
        case 2: 
          b();
          return;
        case 1: 
          a.onShowPress(e);
        }
      }
    }
  }
  
  static class c
    implements GestureDetectorCompat.a
  {
    private final GestureDetector a;
    
    c(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
    {
      a = new GestureDetector(paramContext, paramOnGestureListener, paramHandler);
    }
    
    public void a(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
    {
      a.setOnDoubleTapListener(paramOnDoubleTapListener);
    }
    
    public void a(boolean paramBoolean)
    {
      a.setIsLongpressEnabled(paramBoolean);
    }
    
    public boolean a()
    {
      return a.isLongpressEnabled();
    }
    
    public boolean a(MotionEvent paramMotionEvent)
    {
      return a.onTouchEvent(paramMotionEvent);
    }
  }
}
