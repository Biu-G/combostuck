package android.support.design.shape;

import android.support.design.internal.Experimental;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ScrollView;

@Experimental("The shapes API is currently experimental and subject to change")
public class InterpolateOnScrollPositionChangeHelper
{
  private View a;
  private MaterialShapeDrawable b;
  private ScrollView c;
  private final int[] d = new int[2];
  private final int[] e = new int[2];
  private final ViewTreeObserver.OnScrollChangedListener f = new ViewTreeObserver.OnScrollChangedListener()
  {
    public void onScrollChanged()
    {
      updateInterpolationForScreenPosition();
    }
  };
  
  public InterpolateOnScrollPositionChangeHelper(View paramView, MaterialShapeDrawable paramMaterialShapeDrawable, ScrollView paramScrollView)
  {
    a = paramView;
    b = paramMaterialShapeDrawable;
    c = paramScrollView;
  }
  
  public void setContainingScrollView(ScrollView paramScrollView)
  {
    c = paramScrollView;
  }
  
  public void setMaterialShapeDrawable(MaterialShapeDrawable paramMaterialShapeDrawable)
  {
    b = paramMaterialShapeDrawable;
  }
  
  public void startListeningForScrollChanges(ViewTreeObserver paramViewTreeObserver)
  {
    paramViewTreeObserver.addOnScrollChangedListener(f);
  }
  
  public void stopListeningForScrollChanges(ViewTreeObserver paramViewTreeObserver)
  {
    paramViewTreeObserver.removeOnScrollChangedListener(f);
  }
  
  public void updateInterpolationForScreenPosition()
  {
    if (c == null) {
      return;
    }
    if (c.getChildCount() != 0)
    {
      c.getLocationInWindow(d);
      c.getChildAt(0).getLocationInWindow(e);
      int k = a.getTop() - d[1] + e[1];
      int i = a.getHeight();
      int j = c.getHeight();
      if (k < 0)
      {
        b.setInterpolation(Math.max(0.0F, Math.min(1.0F, k / i + 1.0F)));
        a.invalidate();
        return;
      }
      k += i;
      if (k > j)
      {
        b.setInterpolation(Math.max(0.0F, Math.min(1.0F, 1.0F - (k - j) / i)));
        a.invalidate();
        return;
      }
      if (b.getInterpolation() != 1.0F)
      {
        b.setInterpolation(1.0F);
        a.invalidate();
      }
      return;
    }
    throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
  }
}
