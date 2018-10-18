package android.support.v4.view;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewParent;

public class NestedScrollingChildHelper
{
  private ViewParent a;
  private ViewParent b;
  private final View c;
  private boolean d;
  private int[] e;
  
  public NestedScrollingChildHelper(@NonNull View paramView)
  {
    c = paramView;
  }
  
  private ViewParent a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return b;
    }
    return a;
  }
  
  private void a(int paramInt, ViewParent paramViewParent)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      b = paramViewParent;
      return;
    }
    a = paramViewParent;
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (isNestedScrollingEnabled())
    {
      ViewParent localViewParent = a(0);
      if (localViewParent != null) {
        return ViewParentCompat.onNestedFling(localViewParent, c, paramFloat1, paramFloat2, paramBoolean);
      }
    }
    return false;
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    if (isNestedScrollingEnabled())
    {
      ViewParent localViewParent = a(0);
      if (localViewParent != null) {
        return ViewParentCompat.onNestedPreFling(localViewParent, c, paramFloat1, paramFloat2);
      }
    }
    return false;
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, @Nullable int[] paramArrayOfInt1, @Nullable int[] paramArrayOfInt2)
  {
    return dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, 0);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, @Nullable int[] paramArrayOfInt1, @Nullable int[] paramArrayOfInt2, int paramInt3)
  {
    if (isNestedScrollingEnabled())
    {
      ViewParent localViewParent = a(paramInt3);
      if (localViewParent == null) {
        return false;
      }
      boolean bool = true;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        if (paramArrayOfInt2 != null)
        {
          paramArrayOfInt2[0] = 0;
          paramArrayOfInt2[1] = 0;
          return false;
        }
      }
      else
      {
        int i;
        int j;
        if (paramArrayOfInt2 != null)
        {
          c.getLocationInWindow(paramArrayOfInt2);
          i = paramArrayOfInt2[0];
          j = paramArrayOfInt2[1];
        }
        else
        {
          i = 0;
          j = 0;
        }
        int[] arrayOfInt = paramArrayOfInt1;
        if (paramArrayOfInt1 == null)
        {
          if (e == null) {
            e = new int[2];
          }
          arrayOfInt = e;
        }
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        ViewParentCompat.onNestedPreScroll(localViewParent, c, paramInt1, paramInt2, arrayOfInt, paramInt3);
        if (paramArrayOfInt2 != null)
        {
          c.getLocationInWindow(paramArrayOfInt2);
          paramArrayOfInt2[0] -= i;
          paramArrayOfInt2[1] -= j;
        }
        if (arrayOfInt[0] == 0)
        {
          if (arrayOfInt[1] != 0) {
            return true;
          }
          bool = false;
        }
        return bool;
      }
    }
    return false;
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, @Nullable int[] paramArrayOfInt)
  {
    return dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, 0);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, @Nullable int[] paramArrayOfInt, int paramInt5)
  {
    if (isNestedScrollingEnabled())
    {
      ViewParent localViewParent = a(paramInt5);
      if (localViewParent == null) {
        return false;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0) && (paramInt3 == 0) && (paramInt4 == 0))
      {
        if (paramArrayOfInt != null)
        {
          paramArrayOfInt[0] = 0;
          paramArrayOfInt[1] = 0;
          return false;
        }
      }
      else
      {
        int i;
        int j;
        if (paramArrayOfInt != null)
        {
          c.getLocationInWindow(paramArrayOfInt);
          i = paramArrayOfInt[0];
          j = paramArrayOfInt[1];
        }
        else
        {
          i = 0;
          j = 0;
        }
        ViewParentCompat.onNestedScroll(localViewParent, c, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
        if (paramArrayOfInt != null)
        {
          c.getLocationInWindow(paramArrayOfInt);
          paramArrayOfInt[0] -= i;
          paramArrayOfInt[1] -= j;
        }
        return true;
      }
    }
    return false;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return hasNestedScrollingParent(0);
  }
  
  public boolean hasNestedScrollingParent(int paramInt)
  {
    return a(paramInt) != null;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return d;
  }
  
  public void onDetachedFromWindow()
  {
    ViewCompat.stopNestedScroll(c);
  }
  
  public void onStopNestedScroll(@NonNull View paramView)
  {
    ViewCompat.stopNestedScroll(c);
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    if (d) {
      ViewCompat.stopNestedScroll(c);
    }
    d = paramBoolean;
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return startNestedScroll(paramInt, 0);
  }
  
  public boolean startNestedScroll(int paramInt1, int paramInt2)
  {
    if (hasNestedScrollingParent(paramInt2)) {
      return true;
    }
    if (isNestedScrollingEnabled())
    {
      ViewParent localViewParent = c.getParent();
      View localView = c;
      while (localViewParent != null)
      {
        if (ViewParentCompat.onStartNestedScroll(localViewParent, localView, c, paramInt1, paramInt2))
        {
          a(paramInt2, localViewParent);
          ViewParentCompat.onNestedScrollAccepted(localViewParent, localView, c, paramInt1, paramInt2);
          return true;
        }
        if ((localViewParent instanceof View)) {
          localView = (View)localViewParent;
        }
        localViewParent = localViewParent.getParent();
      }
    }
    return false;
  }
  
  public void stopNestedScroll()
  {
    stopNestedScroll(0);
  }
  
  public void stopNestedScroll(int paramInt)
  {
    ViewParent localViewParent = a(paramInt);
    if (localViewParent != null)
    {
      ViewParentCompat.onStopNestedScroll(localViewParent, c, paramInt);
      a(paramInt, null);
    }
  }
}
