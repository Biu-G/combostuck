package android.support.design.circularreveal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class CircularRevealFrameLayout
  extends FrameLayout
  implements CircularRevealWidget
{
  private final CircularRevealHelper a = new CircularRevealHelper(this);
  
  public CircularRevealFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CircularRevealFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
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
    a.buildCircularRevealCache();
  }
  
  public void destroyCircularRevealCache()
  {
    a.destroyCircularRevealCache();
  }
  
  @SuppressLint({"MissingSuperCall"})
  public void draw(Canvas paramCanvas)
  {
    if (a != null)
    {
      a.draw(paramCanvas);
      return;
    }
    super.draw(paramCanvas);
  }
  
  @Nullable
  public Drawable getCircularRevealOverlayDrawable()
  {
    return a.getCircularRevealOverlayDrawable();
  }
  
  public int getCircularRevealScrimColor()
  {
    return a.getCircularRevealScrimColor();
  }
  
  @Nullable
  public CircularRevealWidget.RevealInfo getRevealInfo()
  {
    return a.getRevealInfo();
  }
  
  public boolean isOpaque()
  {
    if (a != null) {
      return a.isOpaque();
    }
    return super.isOpaque();
  }
  
  public void setCircularRevealOverlayDrawable(@Nullable Drawable paramDrawable)
  {
    a.setCircularRevealOverlayDrawable(paramDrawable);
  }
  
  public void setCircularRevealScrimColor(@ColorInt int paramInt)
  {
    a.setCircularRevealScrimColor(paramInt);
  }
  
  public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    a.setRevealInfo(paramRevealInfo);
  }
}
