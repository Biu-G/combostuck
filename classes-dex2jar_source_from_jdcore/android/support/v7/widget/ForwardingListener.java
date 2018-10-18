package android.support.v7.widget;

import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ShowableListMenu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public abstract class ForwardingListener
  implements View.OnAttachStateChangeListener, View.OnTouchListener
{
  private final float a;
  private final int b;
  final View c;
  private final int d;
  private Runnable e;
  private Runnable f;
  private boolean g;
  private int h;
  private final int[] i = new int[2];
  
  public ForwardingListener(View paramView)
  {
    c = paramView;
    paramView.setLongClickable(true);
    paramView.addOnAttachStateChangeListener(this);
    a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    b = ViewConfiguration.getTapTimeout();
    d = ((b + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    View localView = c;
    if (!localView.isEnabled()) {
      return false;
    }
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      return false;
    case 2: 
      int j = paramMotionEvent.findPointerIndex(h);
      if ((j >= 0) && (!a(localView, paramMotionEvent.getX(j), paramMotionEvent.getY(j), a)))
      {
        b();
        localView.getParent().requestDisallowInterceptTouchEvent(true);
        return true;
      }
      break;
    case 1: 
    case 3: 
      b();
      return false;
    case 0: 
      h = paramMotionEvent.getPointerId(0);
      if (e == null) {
        e = new a();
      }
      localView.postDelayed(e, b);
      if (f == null) {
        f = new b();
      }
      localView.postDelayed(f, d);
    }
    return false;
  }
  
  private static boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = -paramFloat3;
    return (paramFloat1 >= f1) && (paramFloat2 >= f1) && (paramFloat1 < paramView.getRight() - paramView.getLeft() + paramFloat3) && (paramFloat2 < paramView.getBottom() - paramView.getTop() + paramFloat3);
  }
  
  private boolean a(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = i;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(-arrayOfInt[0], -arrayOfInt[1]);
    return true;
  }
  
  private void b()
  {
    if (f != null) {
      c.removeCallbacks(f);
    }
    if (e != null) {
      c.removeCallbacks(e);
    }
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    View localView = c;
    Object localObject = getPopup();
    if (localObject != null)
    {
      if (!((ShowableListMenu)localObject).isShowing()) {
        return false;
      }
      localObject = (r)((ShowableListMenu)localObject).getListView();
      if (localObject != null)
      {
        if (!((r)localObject).isShown()) {
          return false;
        }
        MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
        b(localView, localMotionEvent);
        a((View)localObject, localMotionEvent);
        boolean bool = ((r)localObject).onForwardedEvent(localMotionEvent, h);
        localMotionEvent.recycle();
        int j = paramMotionEvent.getActionMasked();
        if ((j != 1) && (j != 3)) {
          j = 1;
        } else {
          j = 0;
        }
        return (bool) && (j != 0);
      }
      return false;
    }
    return false;
  }
  
  private boolean b(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = i;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
    return true;
  }
  
  void a()
  {
    b();
    View localView = c;
    if (localView.isEnabled())
    {
      if (localView.isLongClickable()) {
        return;
      }
      if (!onForwardingStarted()) {
        return;
      }
      localView.getParent().requestDisallowInterceptTouchEvent(true);
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      localView.onTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
      g = true;
      return;
    }
  }
  
  public abstract ShowableListMenu getPopup();
  
  protected boolean onForwardingStarted()
  {
    ShowableListMenu localShowableListMenu = getPopup();
    if ((localShowableListMenu != null) && (!localShowableListMenu.isShowing())) {
      localShowableListMenu.show();
    }
    return true;
  }
  
  protected boolean onForwardingStopped()
  {
    ShowableListMenu localShowableListMenu = getPopup();
    if ((localShowableListMenu != null) && (localShowableListMenu.isShowing())) {
      localShowableListMenu.dismiss();
    }
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool4 = g;
    boolean bool3 = false;
    boolean bool2;
    boolean bool1;
    if (bool4)
    {
      if ((!b(paramMotionEvent)) && (onForwardingStopped())) {
        bool2 = false;
      } else {
        bool2 = true;
      }
    }
    else
    {
      if ((a(paramMotionEvent)) && (onForwardingStarted())) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 = bool1;
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        c.onTouchEvent(paramView);
        paramView.recycle();
        bool2 = bool1;
      }
    }
    g = bool2;
    if (!bool2)
    {
      bool1 = bool3;
      if (!bool4) {}
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView)
  {
    g = false;
    h = -1;
    if (e != null) {
      c.removeCallbacks(e);
    }
  }
  
  private class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      ViewParent localViewParent = c.getParent();
      if (localViewParent != null) {
        localViewParent.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  private class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      a();
    }
  }
}
