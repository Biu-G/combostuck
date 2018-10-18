package android.support.design.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.support.design.circularreveal.CircularRevealHelper;
import android.support.design.circularreveal.CircularRevealWidget;
import android.support.design.circularreveal.CircularRevealWidget.RevealInfo;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;

public class CircularRevealCardView
  extends CardView
  implements CircularRevealWidget
{
  private final CircularRevealHelper e = new CircularRevealHelper(this);
  
  public CircularRevealCardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CircularRevealCardView(Context paramContext, AttributeSet paramAttributeSet)
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
    e.buildCircularRevealCache();
  }
  
  public void destroyCircularRevealCache()
  {
    e.destroyCircularRevealCache();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (e != null)
    {
      e.draw(paramCanvas);
      return;
    }
    super.draw(paramCanvas);
  }
  
  @Nullable
  public Drawable getCircularRevealOverlayDrawable()
  {
    return e.getCircularRevealOverlayDrawable();
  }
  
  public int getCircularRevealScrimColor()
  {
    return e.getCircularRevealScrimColor();
  }
  
  @Nullable
  public CircularRevealWidget.RevealInfo getRevealInfo()
  {
    return e.getRevealInfo();
  }
  
  public boolean isOpaque()
  {
    if (e != null) {
      return e.isOpaque();
    }
    return super.isOpaque();
  }
  
  public void setCircularRevealOverlayDrawable(@Nullable Drawable paramDrawable)
  {
    e.setCircularRevealOverlayDrawable(paramDrawable);
  }
  
  public void setCircularRevealScrimColor(@ColorInt int paramInt)
  {
    e.setCircularRevealScrimColor(paramInt);
  }
  
  public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo paramRevealInfo)
  {
    e.setRevealInfo(paramRevealInfo);
  }
}
