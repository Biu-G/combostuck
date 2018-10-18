package android.support.design.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.math.MathUtils;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import java.util.List;

abstract class e
  extends h<View>
{
  final Rect a = new Rect();
  final Rect b = new Rect();
  private int c = 0;
  private int d;
  
  public e() {}
  
  public e(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private static int a(int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = 8388659;
    }
    return i;
  }
  
  float a(View paramView)
  {
    return 1.0F;
  }
  
  final int a()
  {
    return c;
  }
  
  int b(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
  
  abstract View b(List<View> paramList);
  
  final int c(View paramView)
  {
    if (d == 0) {
      return 0;
    }
    return MathUtils.clamp((int)(a(paramView) * d), 0, d);
  }
  
  public final int getOverlayTop()
  {
    return d;
  }
  
  protected void layoutChild(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt)
  {
    View localView = b(paramCoordinatorLayout.getDependencies(paramView));
    if (localView != null)
    {
      CoordinatorLayout.LayoutParams localLayoutParams = (CoordinatorLayout.LayoutParams)paramView.getLayoutParams();
      Rect localRect = a;
      localRect.set(paramCoordinatorLayout.getPaddingLeft() + leftMargin, localView.getBottom() + topMargin, paramCoordinatorLayout.getWidth() - paramCoordinatorLayout.getPaddingRight() - rightMargin, paramCoordinatorLayout.getHeight() + localView.getBottom() - paramCoordinatorLayout.getPaddingBottom() - bottomMargin);
      WindowInsetsCompat localWindowInsetsCompat = paramCoordinatorLayout.getLastWindowInsets();
      if ((localWindowInsetsCompat != null) && (ViewCompat.getFitsSystemWindows(paramCoordinatorLayout)) && (!ViewCompat.getFitsSystemWindows(paramView)))
      {
        left += localWindowInsetsCompat.getSystemWindowInsetLeft();
        right -= localWindowInsetsCompat.getSystemWindowInsetRight();
      }
      paramCoordinatorLayout = b;
      GravityCompat.apply(a(gravity), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect, paramCoordinatorLayout, paramInt);
      paramInt = c(localView);
      paramView.layout(left, top - paramInt, right, bottom - paramInt);
      c = (top - localView.getBottom());
      return;
    }
    super.layoutChild(paramCoordinatorLayout, paramView, paramInt);
    c = 0;
  }
  
  public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = getLayoutParamsheight;
    if ((j == -1) || (j == -2))
    {
      View localView = b(paramCoordinatorLayout.getDependencies(paramView));
      if (localView != null)
      {
        if ((ViewCompat.getFitsSystemWindows(localView)) && (!ViewCompat.getFitsSystemWindows(paramView)))
        {
          ViewCompat.setFitsSystemWindows(paramView, true);
          if (ViewCompat.getFitsSystemWindows(paramView))
          {
            paramView.requestLayout();
            return true;
          }
        }
        int i = View.MeasureSpec.getSize(paramInt3);
        paramInt3 = i;
        if (i == 0) {
          paramInt3 = paramCoordinatorLayout.getHeight();
        }
        int k = localView.getMeasuredHeight();
        int m = b(localView);
        if (j == -1) {
          i = 1073741824;
        } else {
          i = Integer.MIN_VALUE;
        }
        paramCoordinatorLayout.onMeasureChild(paramView, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(paramInt3 - k + m, i), paramInt4);
        return true;
      }
    }
    return false;
  }
  
  public final void setOverlayTop(int paramInt)
  {
    d = paramInt;
  }
}
