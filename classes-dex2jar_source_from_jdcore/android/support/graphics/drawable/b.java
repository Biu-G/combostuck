package android.support.graphics.drawable;

import android.content.res.Resources.Theme;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.graphics.drawable.TintAwareDrawable;

abstract class b
  extends Drawable
  implements TintAwareDrawable
{
  Drawable d;
  
  b() {}
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (d != null)
    {
      DrawableCompat.applyTheme(d, paramTheme);
      return;
    }
  }
  
  public void clearColorFilter()
  {
    if (d != null)
    {
      d.clearColorFilter();
      return;
    }
    super.clearColorFilter();
  }
  
  public ColorFilter getColorFilter()
  {
    if (d != null) {
      return DrawableCompat.getColorFilter(d);
    }
    return null;
  }
  
  public Drawable getCurrent()
  {
    if (d != null) {
      return d.getCurrent();
    }
    return super.getCurrent();
  }
  
  public int getMinimumHeight()
  {
    if (d != null) {
      return d.getMinimumHeight();
    }
    return super.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    if (d != null) {
      return d.getMinimumWidth();
    }
    return super.getMinimumWidth();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    if (d != null) {
      return d.getPadding(paramRect);
    }
    return super.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    if (d != null) {
      return d.getState();
    }
    return super.getState();
  }
  
  public Region getTransparentRegion()
  {
    if (d != null) {
      return d.getTransparentRegion();
    }
    return super.getTransparentRegion();
  }
  
  public void jumpToCurrentState()
  {
    if (d != null)
    {
      DrawableCompat.jumpToCurrentState(d);
      return;
    }
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (d != null)
    {
      d.setBounds(paramRect);
      return;
    }
    super.onBoundsChange(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (d != null) {
      return d.setLevel(paramInt);
    }
    return super.onLevelChange(paramInt);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    if (d != null)
    {
      d.setChangingConfigurations(paramInt);
      return;
    }
    super.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    if (d != null)
    {
      d.setColorFilter(paramInt, paramMode);
      return;
    }
    super.setColorFilter(paramInt, paramMode);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    if (d != null)
    {
      d.setFilterBitmap(paramBoolean);
      return;
    }
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    if (d != null) {
      DrawableCompat.setHotspot(d, paramFloat1, paramFloat2);
    }
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (d != null)
    {
      DrawableCompat.setHotspotBounds(d, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    if (d != null) {
      return d.setState(paramArrayOfInt);
    }
    return super.setState(paramArrayOfInt);
  }
}
