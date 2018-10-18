package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;

class WrappedDrawableApi14
  extends Drawable
  implements Drawable.Callback, TintAwareDrawable, WrappedDrawable
{
  static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
  DrawableWrapperState b;
  Drawable c;
  private int d;
  private PorterDuff.Mode e;
  private boolean f;
  private boolean g;
  
  WrappedDrawableApi14(@Nullable Drawable paramDrawable)
  {
    b = a();
    setWrappedDrawable(paramDrawable);
  }
  
  WrappedDrawableApi14(@NonNull DrawableWrapperState paramDrawableWrapperState, @Nullable Resources paramResources)
  {
    b = paramDrawableWrapperState;
    a(paramResources);
  }
  
  private void a(@Nullable Resources paramResources)
  {
    if ((b != null) && (b.b != null)) {
      setWrappedDrawable(b.b.newDrawable(paramResources));
    }
  }
  
  private boolean a(int[] paramArrayOfInt)
  {
    if (!b()) {
      return false;
    }
    ColorStateList localColorStateList = b.c;
    PorterDuff.Mode localMode = b.d;
    if ((localColorStateList != null) && (localMode != null))
    {
      int i = localColorStateList.getColorForState(paramArrayOfInt, localColorStateList.getDefaultColor());
      if ((!f) || (i != d) || (localMode != e))
      {
        setColorFilter(i, localMode);
        d = i;
        e = localMode;
        f = true;
        return true;
      }
    }
    else
    {
      f = false;
      clearColorFilter();
    }
    return false;
  }
  
  @NonNull
  DrawableWrapperState a()
  {
    return new a(b, null);
  }
  
  protected boolean b()
  {
    return true;
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    c.draw(paramCanvas);
  }
  
  public int getChangingConfigurations()
  {
    int j = super.getChangingConfigurations();
    int i;
    if (b != null) {
      i = b.getChangingConfigurations();
    } else {
      i = 0;
    }
    return j | i | c.getChangingConfigurations();
  }
  
  @Nullable
  public Drawable.ConstantState getConstantState()
  {
    if ((b != null) && (b.a()))
    {
      b.a = getChangingConfigurations();
      return b;
    }
    return null;
  }
  
  @NonNull
  public Drawable getCurrent()
  {
    return c.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return c.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return c.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return c.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return c.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return c.getOpacity();
  }
  
  public boolean getPadding(@NonNull Rect paramRect)
  {
    return c.getPadding(paramRect);
  }
  
  @NonNull
  public int[] getState()
  {
    return c.getState();
  }
  
  public Region getTransparentRegion()
  {
    return c.getTransparentRegion();
  }
  
  public final Drawable getWrappedDrawable()
  {
    return c;
  }
  
  public void invalidateDrawable(@NonNull Drawable paramDrawable)
  {
    invalidateSelf();
  }
  
  @RequiresApi(19)
  public boolean isAutoMirrored()
  {
    return c.isAutoMirrored();
  }
  
  public boolean isStateful()
  {
    ColorStateList localColorStateList;
    if ((b()) && (b != null)) {
      localColorStateList = b.c;
    } else {
      localColorStateList = null;
    }
    return ((localColorStateList != null) && (localColorStateList.isStateful())) || (c.isStateful());
  }
  
  public void jumpToCurrentState()
  {
    c.jumpToCurrentState();
  }
  
  @NonNull
  public Drawable mutate()
  {
    if ((!g) && (super.mutate() == this))
    {
      b = a();
      if (c != null) {
        c.mutate();
      }
      if (b != null)
      {
        DrawableWrapperState localDrawableWrapperState = b;
        Drawable.ConstantState localConstantState;
        if (c != null) {
          localConstantState = c.getConstantState();
        } else {
          localConstantState = null;
        }
        b = localConstantState;
      }
      g = true;
    }
    return this;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (c != null) {
      c.setBounds(paramRect);
    }
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    return c.setLevel(paramInt);
  }
  
  public void scheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable, long paramLong)
  {
    scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    c.setAlpha(paramInt);
  }
  
  @RequiresApi(19)
  public void setAutoMirrored(boolean paramBoolean)
  {
    c.setAutoMirrored(paramBoolean);
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    c.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    c.setColorFilter(paramColorFilter);
  }
  
  public void setDither(boolean paramBoolean)
  {
    c.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    c.setFilterBitmap(paramBoolean);
  }
  
  public boolean setState(@NonNull int[] paramArrayOfInt)
  {
    boolean bool = c.setState(paramArrayOfInt);
    return (a(paramArrayOfInt)) || (bool);
  }
  
  public void setTint(int paramInt)
  {
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    b.c = paramColorStateList;
    a(getState());
  }
  
  public void setTintMode(@NonNull PorterDuff.Mode paramMode)
  {
    b.d = paramMode;
    a(getState());
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (super.setVisible(paramBoolean1, paramBoolean2)) || (c.setVisible(paramBoolean1, paramBoolean2));
  }
  
  public final void setWrappedDrawable(Drawable paramDrawable)
  {
    if (c != null) {
      c.setCallback(null);
    }
    c = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      setVisible(paramDrawable.isVisible(), true);
      setState(paramDrawable.getState());
      setLevel(paramDrawable.getLevel());
      setBounds(paramDrawable.getBounds());
      if (b != null) {
        b.b = paramDrawable.getConstantState();
      }
    }
    invalidateSelf();
  }
  
  public void unscheduleDrawable(@NonNull Drawable paramDrawable, @NonNull Runnable paramRunnable)
  {
    unscheduleSelf(paramRunnable);
  }
  
  protected static abstract class DrawableWrapperState
    extends Drawable.ConstantState
  {
    int a;
    Drawable.ConstantState b;
    ColorStateList c = null;
    PorterDuff.Mode d = WrappedDrawableApi14.a;
    
    DrawableWrapperState(@Nullable DrawableWrapperState paramDrawableWrapperState, @Nullable Resources paramResources)
    {
      if (paramDrawableWrapperState != null)
      {
        a = a;
        b = b;
        c = c;
        d = d;
      }
    }
    
    boolean a()
    {
      return b != null;
    }
    
    public int getChangingConfigurations()
    {
      int j = a;
      int i;
      if (b != null) {
        i = b.getChangingConfigurations();
      } else {
        i = 0;
      }
      return j | i;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return newDrawable(null);
    }
    
    @NonNull
    public abstract Drawable newDrawable(@Nullable Resources paramResources);
  }
  
  private static class a
    extends WrappedDrawableApi14.DrawableWrapperState
  {
    a(@Nullable WrappedDrawableApi14.DrawableWrapperState paramDrawableWrapperState, @Nullable Resources paramResources)
    {
      super(paramResources);
    }
    
    @NonNull
    public Drawable newDrawable(@Nullable Resources paramResources)
    {
      return new WrappedDrawableApi14(this, paramResources);
    }
  }
}
