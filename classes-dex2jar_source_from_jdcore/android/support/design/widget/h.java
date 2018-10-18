package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

class h<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private i a;
  private int b = 0;
  private int c = 0;
  
  public h() {}
  
  public h(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public int getLeftAndRightOffset()
  {
    if (a != null) {
      return a.c();
    }
    return 0;
  }
  
  public int getTopAndBottomOffset()
  {
    if (a != null) {
      return a.b();
    }
    return 0;
  }
  
  protected void layoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    paramCoordinatorLayout.onLayoutChild(paramV, paramInt);
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    layoutChild(paramCoordinatorLayout, paramV, paramInt);
    if (a == null) {
      a = new i(paramV);
    }
    a.a();
    if (b != 0)
    {
      a.a(b);
      b = 0;
    }
    if (c != 0)
    {
      a.b(c);
      c = 0;
    }
    return true;
  }
  
  public boolean setLeftAndRightOffset(int paramInt)
  {
    if (a != null) {
      return a.b(paramInt);
    }
    c = paramInt;
    return false;
  }
  
  public boolean setTopAndBottomOffset(int paramInt)
  {
    if (a != null) {
      return a.a(paramInt);
    }
    b = paramInt;
    return false;
  }
}
