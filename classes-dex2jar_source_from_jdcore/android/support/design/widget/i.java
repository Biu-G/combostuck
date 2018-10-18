package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;

class i
{
  private final View a;
  private int b;
  private int c;
  private int d;
  private int e;
  
  public i(View paramView)
  {
    a = paramView;
  }
  
  private void e()
  {
    ViewCompat.offsetTopAndBottom(a, d - (a.getTop() - b));
    ViewCompat.offsetLeftAndRight(a, e - (a.getLeft() - c));
  }
  
  public void a()
  {
    b = a.getTop();
    c = a.getLeft();
    e();
  }
  
  public boolean a(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      e();
      return true;
    }
    return false;
  }
  
  public int b()
  {
    return d;
  }
  
  public boolean b(int paramInt)
  {
    if (e != paramInt)
    {
      e = paramInt;
      e();
      return true;
    }
    return false;
  }
  
  public int c()
  {
    return e;
  }
  
  public int d()
  {
    return b;
  }
}
