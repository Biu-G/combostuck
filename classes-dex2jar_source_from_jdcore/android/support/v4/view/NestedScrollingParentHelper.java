package android.support.v4.view;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;

public class NestedScrollingParentHelper
{
  private final ViewGroup a;
  private int b;
  
  public NestedScrollingParentHelper(@NonNull ViewGroup paramViewGroup)
  {
    a = paramViewGroup;
  }
  
  public int getNestedScrollAxes()
  {
    return b;
  }
  
  public void onNestedScrollAccepted(@NonNull View paramView1, @NonNull View paramView2, int paramInt)
  {
    onNestedScrollAccepted(paramView1, paramView2, paramInt, 0);
  }
  
  public void onNestedScrollAccepted(@NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
  {
    b = paramInt1;
  }
  
  public void onStopNestedScroll(@NonNull View paramView)
  {
    onStopNestedScroll(paramView, 0);
  }
  
  public void onStopNestedScroll(@NonNull View paramView, int paramInt)
  {
    b = 0;
  }
}
