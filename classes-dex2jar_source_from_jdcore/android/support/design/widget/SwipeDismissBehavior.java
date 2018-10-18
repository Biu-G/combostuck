package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

public class SwipeDismissBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  public static final int SWIPE_DIRECTION_ANY = 2;
  public static final int SWIPE_DIRECTION_END_TO_START = 1;
  public static final int SWIPE_DIRECTION_START_TO_END = 0;
  ViewDragHelper a;
  OnDismissListener b;
  int c = 2;
  float d = 0.5F;
  float e = 0.0F;
  float f = 0.5F;
  private boolean g;
  private float h = 0.0F;
  private boolean i;
  private final ViewDragHelper.Callback j = new ViewDragHelper.Callback()
  {
    private int b;
    private int c = -1;
    
    private boolean a(View paramAnonymousView, float paramAnonymousFloat)
    {
      boolean bool1 = paramAnonymousFloat < 0.0F;
      boolean bool2 = false;
      if (bool1)
      {
        if (ViewCompat.getLayoutDirection(paramAnonymousView) == 1) {
          i = 1;
        } else {
          i = 0;
        }
        if (c == 2) {
          return true;
        }
        if (c == 0)
        {
          if (i != 0)
          {
            if (paramAnonymousFloat >= 0.0F) {}
          }
          else {
            while (bool1) {
              return true;
            }
          }
          return false;
        }
        if (c == 1)
        {
          if (i != 0)
          {
            if (!bool1) {}
          }
          else {
            while (paramAnonymousFloat < 0.0F) {
              return true;
            }
          }
          return false;
        }
        return false;
      }
      int i = paramAnonymousView.getLeft();
      int j = b;
      int k = Math.round(paramAnonymousView.getWidth() * d);
      if (Math.abs(i - j) >= k) {
        bool2 = true;
      }
      return bool2;
    }
    
    public int clampViewPositionHorizontal(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (ViewCompat.getLayoutDirection(paramAnonymousView) == 1) {
        paramAnonymousInt2 = 1;
      } else {
        paramAnonymousInt2 = 0;
      }
      int i;
      if (c == 0)
      {
        if (paramAnonymousInt2 != 0)
        {
          i = b - paramAnonymousView.getWidth();
          paramAnonymousInt2 = b;
        }
        else
        {
          i = b;
          paramAnonymousInt2 = b;
          paramAnonymousInt2 = paramAnonymousView.getWidth() + paramAnonymousInt2;
        }
      }
      else if (c == 1)
      {
        if (paramAnonymousInt2 != 0)
        {
          i = b;
          paramAnonymousInt2 = b;
          paramAnonymousInt2 = paramAnonymousView.getWidth() + paramAnonymousInt2;
        }
        else
        {
          i = b - paramAnonymousView.getWidth();
          paramAnonymousInt2 = b;
        }
      }
      else
      {
        i = b - paramAnonymousView.getWidth();
        paramAnonymousInt2 = b;
        paramAnonymousInt2 = paramAnonymousView.getWidth() + paramAnonymousInt2;
      }
      return SwipeDismissBehavior.a(i, paramAnonymousInt1, paramAnonymousInt2);
    }
    
    public int clampViewPositionVertical(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getTop();
    }
    
    public int getViewHorizontalDragRange(View paramAnonymousView)
    {
      return paramAnonymousView.getWidth();
    }
    
    public void onViewCaptured(View paramAnonymousView, int paramAnonymousInt)
    {
      c = paramAnonymousInt;
      b = paramAnonymousView.getLeft();
      paramAnonymousView = paramAnonymousView.getParent();
      if (paramAnonymousView != null) {
        paramAnonymousView.requestDisallowInterceptTouchEvent(true);
      }
    }
    
    public void onViewDragStateChanged(int paramAnonymousInt)
    {
      if (b != null) {
        b.onDragStateChanged(paramAnonymousInt);
      }
    }
    
    public void onViewPositionChanged(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      float f1 = b + paramAnonymousView.getWidth() * e;
      float f2 = b + paramAnonymousView.getWidth() * f;
      float f3 = paramAnonymousInt1;
      if (f3 <= f1)
      {
        paramAnonymousView.setAlpha(1.0F);
        return;
      }
      if (f3 >= f2)
      {
        paramAnonymousView.setAlpha(0.0F);
        return;
      }
      paramAnonymousView.setAlpha(SwipeDismissBehavior.a(0.0F, 1.0F - SwipeDismissBehavior.b(f1, f2, f3), 1.0F));
    }
    
    public void onViewReleased(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      c = -1;
      int i = paramAnonymousView.getWidth();
      boolean bool;
      if (a(paramAnonymousView, paramAnonymousFloat1))
      {
        if (paramAnonymousView.getLeft() < b) {
          i = b - i;
        } else {
          i = b + i;
        }
        bool = true;
      }
      else
      {
        i = b;
        bool = false;
      }
      if (a.settleCapturedViewAt(i, paramAnonymousView.getTop()))
      {
        ViewCompat.postOnAnimation(paramAnonymousView, new SwipeDismissBehavior.a(SwipeDismissBehavior.this, paramAnonymousView, bool));
        return;
      }
      if ((bool) && (b != null)) {
        b.onDismiss(paramAnonymousView);
      }
    }
    
    public boolean tryCaptureView(View paramAnonymousView, int paramAnonymousInt)
    {
      return (c == -1) && (canSwipeDismissView(paramAnonymousView));
    }
  };
  
  public SwipeDismissBehavior() {}
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }
  
  static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    if (a == null)
    {
      if (i) {
        paramViewGroup = ViewDragHelper.create(paramViewGroup, h, j);
      } else {
        paramViewGroup = ViewDragHelper.create(paramViewGroup, j);
      }
      a = paramViewGroup;
    }
  }
  
  static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  public boolean canSwipeDismissView(@NonNull View paramView)
  {
    return true;
  }
  
  public int getDragState()
  {
    if (a != null) {
      return a.getViewDragState();
    }
    return 0;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool = g;
    int k = paramMotionEvent.getActionMasked();
    if (k != 3) {
      switch (k)
      {
      default: 
        break;
      case 0: 
        g = paramCoordinatorLayout.isPointInChildBounds(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        bool = g;
        break;
      }
    } else {
      g = false;
    }
    if (bool)
    {
      a(paramCoordinatorLayout);
      return a.shouldInterceptTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (a != null)
    {
      a.processTouchEvent(paramMotionEvent);
      return true;
    }
    return false;
  }
  
  public void setDragDismissDistance(float paramFloat)
  {
    d = a(0.0F, paramFloat, 1.0F);
  }
  
  public void setEndAlphaSwipeDistance(float paramFloat)
  {
    f = a(0.0F, paramFloat, 1.0F);
  }
  
  public void setListener(OnDismissListener paramOnDismissListener)
  {
    b = paramOnDismissListener;
  }
  
  public void setSensitivity(float paramFloat)
  {
    h = paramFloat;
    i = true;
  }
  
  public void setStartAlphaSwipeDistance(float paramFloat)
  {
    e = a(0.0F, paramFloat, 1.0F);
  }
  
  public void setSwipeDirection(int paramInt)
  {
    c = paramInt;
  }
  
  public static abstract interface OnDismissListener
  {
    public abstract void onDismiss(View paramView);
    
    public abstract void onDragStateChanged(int paramInt);
  }
  
  private class a
    implements Runnable
  {
    private final View b;
    private final boolean c;
    
    a(View paramView, boolean paramBoolean)
    {
      b = paramView;
      c = paramBoolean;
    }
    
    public void run()
    {
      if ((a != null) && (a.continueSettling(true)))
      {
        ViewCompat.postOnAnimation(b, this);
        return;
      }
      if ((c) && (b != null)) {
        b.onDismiss(b);
      }
    }
  }
}
