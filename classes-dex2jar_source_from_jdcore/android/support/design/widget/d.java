package android.support.design.widget;

import android.content.Context;
import android.support.v4.math.MathUtils;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;

abstract class d<V extends View>
  extends h<V>
{
  OverScroller a;
  private Runnable b;
  private boolean c;
  private int d = -1;
  private int e;
  private int f = -1;
  private VelocityTracker g;
  
  public d() {}
  
  public d(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void b()
  {
    if (g == null) {
      g = VelocityTracker.obtain();
    }
  }
  
  int a()
  {
    return getTopAndBottomOffset();
  }
  
  int a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    return a(paramCoordinatorLayout, paramV, paramInt, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  int a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getTopAndBottomOffset();
    if ((paramInt2 != 0) && (i >= paramInt2) && (i <= paramInt3))
    {
      paramInt1 = MathUtils.clamp(paramInt1, paramInt2, paramInt3);
      if (i != paramInt1)
      {
        setTopAndBottomOffset(paramInt1);
        return i - paramInt1;
      }
    }
    return 0;
  }
  
  int a(V paramV)
  {
    return paramV.getHeight();
  }
  
  void a(CoordinatorLayout paramCoordinatorLayout, V paramV) {}
  
  final boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, float paramFloat)
  {
    if (b != null)
    {
      paramV.removeCallbacks(b);
      b = null;
    }
    if (a == null) {
      a = new OverScroller(paramV.getContext());
    }
    a.fling(0, getTopAndBottomOffset(), 0, Math.round(paramFloat), 0, 0, paramInt1, paramInt2);
    if (a.computeScrollOffset())
    {
      b = new a(paramCoordinatorLayout, paramV);
      ViewCompat.postOnAnimation(paramV, b);
      return true;
    }
    a(paramCoordinatorLayout, paramV);
    return false;
  }
  
  final int b(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramCoordinatorLayout, paramV, a() - paramInt1, paramInt2, paramInt3);
  }
  
  int b(V paramV)
  {
    return -paramV.getHeight();
  }
  
  boolean c(V paramV)
  {
    return false;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (f < 0) {
      f = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    if ((paramMotionEvent.getAction() == 2) && (c)) {
      return true;
    }
    int i;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      break;
    case 2: 
      i = d;
      if (i != -1)
      {
        i = paramMotionEvent.findPointerIndex(i);
        if (i != -1)
        {
          i = (int)paramMotionEvent.getY(i);
          if (Math.abs(i - e) > f)
          {
            c = true;
            e = i;
          }
        }
      }
      break;
    case 1: 
    case 3: 
      c = false;
      d = -1;
      if (g != null)
      {
        g.recycle();
        g = null;
      }
      break;
    case 0: 
      c = false;
      i = (int)paramMotionEvent.getX();
      int j = (int)paramMotionEvent.getY();
      if ((c(paramV)) && (paramCoordinatorLayout.isPointInChildBounds(paramV, i, j)))
      {
        e = j;
        d = paramMotionEvent.getPointerId(0);
        b();
      }
      break;
    }
    if (g != null) {
      g.addMovement(paramMotionEvent);
    }
    return c;
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (f < 0) {
      f = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      break;
    case 2: 
      i = paramMotionEvent.findPointerIndex(d);
      if (i == -1) {
        return false;
      }
      int k = (int)paramMotionEvent.getY(i);
      j = e - k;
      i = j;
      if (!c)
      {
        i = j;
        if (Math.abs(j) > f)
        {
          c = true;
          if (j > 0) {
            i = j - f;
          } else {
            i = j + f;
          }
        }
      }
      if (!c) {
        break label328;
      }
      e = k;
      b(paramCoordinatorLayout, paramV, i, b(paramV), 0);
      break;
    case 1: 
      if (g != null)
      {
        g.addMovement(paramMotionEvent);
        g.computeCurrentVelocity(1000);
        float f1 = g.getYVelocity(d);
        a(paramCoordinatorLayout, paramV, -a(paramV), 0, f1);
      }
    case 3: 
      c = false;
      d = -1;
      if (g == null) {
        break label328;
      }
      g.recycle();
      g = null;
      break;
    }
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    if ((paramCoordinatorLayout.isPointInChildBounds(paramV, i, j)) && (c(paramV)))
    {
      e = j;
      d = paramMotionEvent.getPointerId(0);
      b();
    }
    else
    {
      return false;
    }
    label328:
    if (g != null) {
      g.addMovement(paramMotionEvent);
    }
    return true;
  }
  
  private class a
    implements Runnable
  {
    private final CoordinatorLayout b;
    private final V c;
    
    a(V paramV)
    {
      b = paramV;
      Object localObject;
      c = localObject;
    }
    
    public void run()
    {
      if ((c != null) && (a != null))
      {
        if (a.computeScrollOffset())
        {
          a(b, c, a.getCurrY());
          ViewCompat.postOnAnimation(c, this);
          return;
        }
        a(b, c);
      }
    }
  }
}
