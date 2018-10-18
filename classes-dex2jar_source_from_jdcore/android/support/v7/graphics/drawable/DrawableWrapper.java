package android.support.v7.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class DrawableWrapper
  extends Drawable
  implements Drawable.Callback
{
  private Drawable a;
  
  public DrawableWrapper(Drawable paramDrawable)
  {
    setWrappedDrawable(paramDrawable);
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    return a.getChangingConfigurations();
  }
  
  public Drawable getCurrent()
  {
    return a.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return a.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return a.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return a.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return a.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return a.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return a.getPadding(paramRect);
  }
  
  public int[] getState()
  {
    return a.getState();
  }
  
  public Region getTransparentRegion()
  {
    return a.getTransparentRegion();
  }
  
  public Drawable getWrappedDrawable()
  {
    return a;
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  public boolean isAutoMirrored()
  {
    return DrawableCompat.isAutoMirrored(a);
  }
  
  public boolean isStateful()
  {
    return a.isStateful();
  }
  
  public void jumpToCurrentState()
  {
    DrawableCompat.jumpToCurrentState(a);
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    a.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return a.setLevel(paramInt);
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    DrawableCompat.setAutoMirrored(a, paramBoolean);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    a.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    a.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    a.setFilterBitmap(paramBoolean);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    DrawableCompat.setHotspot(a, paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    DrawableCompat.setHotspotBounds(a, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    return a.setState(paramArrayOfInt);
  }
  
  public void setTint(int paramInt)
  {
    DrawableCompat.setTint(a, paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    DrawableCompat.setTintList(a, paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    DrawableCompat.setTintMode(a, paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (a.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public void setWrappedDrawable(Drawable paramDrawable)
  {
    if (a != null) {
      a.setCallback(null);
    }
    a = paramDrawable;
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
}
