package android.support.design.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.circularreveal.CircularRevealHelper;
import android.support.design.circularreveal.CircularRevealWidget;
import android.support.design.circularreveal.CircularRevealWidget.RevealInfo;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;

public class CircularRevealCoordinatorLayout
  extends CoordinatorLayout
  implements CircularRevealWidget
{
  private final CircularRevealHelper f = new CircularRevealHelper(this);
  
  public CircularRevealCoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CircularRevealCoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void actualDraw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
  }
  
  public boolean actualIsOpaque()
  {
    return super.isOpaque();
  }
  
  public void buildCircularRevealCache()
  {
    f.buildCircularRevealCache();
  }
  
  public void destroyCircularRevealCache()
  {
    f.destroyCircularRevealCache();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (f != null)
    {
      f.draw(paramCanvas);
      return;
    }
    super.draw(paramCanvas);
  }
  
  @Nullable
  public Drawable getCircularRevealOverlayDrawable()
  {
    return f.getCircularRevealOverlayDrawable();
  }
  
  public int getCircularRevealScrimColor()
  {
    return f.getCircularRevealScrimColor();
  }
  
  @Nullable
  public CircularRevealWidget.RevealInfo getRevealInfo()
  {
    return f.getRevealInfo();
  }
  
  public boolean isOpaque()
  {
    if (f != null) {
      return f.isOpaque();
    }
    return super.isOpaque();
  }
  
  public void setCircularRevealOverlayDrawable(@Nullable Drawable paramDrawable)
  {
    f.setCircularRevealOverlayDrawable(paramDrawable);
  }
  
  public void setCircularRevealScrimColor(@ColorInt int paramInt)
  {
    f.setCircularRevealScrimColor(paramInt);
  }
  
  public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    f.setRevealInfo(paramRevealInfo);
  }
}
