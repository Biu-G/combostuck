package com.bumptech.glide.request.target;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import com.bumptech.glide.util.Preconditions;

public class FixedSizeDrawable
  extends Drawable
{
  private final Matrix a;
  private final RectF b;
  private final RectF c;
  private Drawable d;
  private a e;
  private boolean f;
  
  public FixedSizeDrawable(Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    this(new a(paramDrawable.getConstantState(), paramInt1, paramInt2), paramDrawable);
  }
  
  FixedSizeDrawable(a paramA, Drawable paramDrawable)
  {
    e = ((a)Preconditions.checkNotNull(paramA));
    d = ((Drawable)Preconditions.checkNotNull(paramDrawable));
    paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    a = new Matrix();
    b = new RectF(0.0F, 0.0F, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    c = new RectF();
  }
  
  private void a()
  {
    a.setRectToRect(b, c, Matrix.ScaleToFit.CENTER);
  }
  
  public void clearColorFilter()
  {
    d.clearColorFilter();
  }
  
  public void draw(@NonNull Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.concat(a);
    d.draw(paramCanvas);
    paramCanvas.restore();
  }
  
  @RequiresApi(19)
  public int getAlpha()
  {
    return d.getAlpha();
  }
  
  public Drawable.Callback getCallback()
  {
    return d.getCallback();
  }
  
  public int getChangingConfigurations()
  {
    return d.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return e;
  }
  
  @NonNull
  public Drawable getCurrent()
  {
    return d.getCurrent();
  }
  
  public int getIntrinsicHeight()
  {
    return e.b;
  }
  
  public int getIntrinsicWidth()
  {
    return e.a;
  }
  
  public int getMinimumHeight()
  {
    return d.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return d.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return d.getOpacity();
  }
  
  public boolean getPadding(@NonNull Rect paramRect)
  {
    return d.getPadding(paramRect);
  }
  
  public void invalidateSelf()
  {
    super.invalidateSelf();
    d.invalidateSelf();
  }
  
  @NonNull
  public Drawable mutate()
  {
    if ((!f) && (super.mutate() == this))
    {
      d = d.mutate();
      e = new a(e);
      f = true;
    }
    return this;
  }
  
  public void scheduleSelf(@NonNull Runnable paramRunnable, long paramLong)
  {
    super.scheduleSelf(paramRunnable, paramLong);
    d.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    d.setAlpha(paramInt);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    c.set(paramInt1, paramInt2, paramInt3, paramInt4);
    a();
  }
  
  public void setBounds(@NonNull Rect paramRect)
  {
    super.setBounds(paramRect);
    c.set(paramRect);
    a();
  }
  
  public void setChangingConfigurations(int paramInt)
  {
    d.setChangingConfigurations(paramInt);
  }
  
  public void setColorFilter(int paramInt, @NonNull PorterDuff.Mode paramMode)
  {
    d.setColorFilter(paramInt, paramMode);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    d.setColorFilter(paramColorFilter);
  }
  
  @Deprecated
  public void setDither(boolean paramBoolean)
  {
    d.setDither(paramBoolean);
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    d.setFilterBitmap(paramBoolean);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return d.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void unscheduleSelf(@NonNull Runnable paramRunnable)
  {
    super.unscheduleSelf(paramRunnable);
    d.unscheduleSelf(paramRunnable);
  }
  
  static final class a
    extends Drawable.ConstantState
  {
    final int a;
    final int b;
    private final Drawable.ConstantState c;
    
    a(Drawable.ConstantState paramConstantState, int paramInt1, int paramInt2)
    {
      c = paramConstantState;
      a = paramInt1;
      b = paramInt2;
    }
    
    a(a paramA)
    {
      this(c, a, b);
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    @NonNull
    public Drawable newDrawable()
    {
      return new FixedSizeDrawable(this, c.newDrawable());
    }
    
    @NonNull
    public Drawable newDrawable(Resources paramResources)
    {
      return new FixedSizeDrawable(this, c.newDrawable(paramResources));
    }
  }
}
