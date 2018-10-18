package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.lang.reflect.Method;

@RequiresApi(21)
class b
  extends WrappedDrawableApi14
{
  private static Method d;
  
  b(Drawable paramDrawable)
  {
    super(paramDrawable);
    c();
  }
  
  b(WrappedDrawableApi14.DrawableWrapperState paramDrawableWrapperState, Resources paramResources)
  {
    super(paramDrawableWrapperState, paramResources);
    c();
  }
  
  private void c()
  {
    if (d == null) {
      try
      {
        d = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
        return;
      }
      catch (Exception localException)
      {
        Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", localException);
      }
    }
  }
  
  @NonNull
  WrappedDrawableApi14.DrawableWrapperState a()
  {
    return new a(b, null);
  }
  
  protected boolean b()
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i == 21)
    {
      Drawable localDrawable = c;
      if (((localDrawable instanceof GradientDrawable)) || ((localDrawable instanceof DrawableContainer)) || ((localDrawable instanceof InsetDrawable)) || ((localDrawable instanceof RippleDrawable))) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  @NonNull
  public Rect getDirtyBounds()
  {
    return c.getDirtyBounds();
  }
  
  public void getOutline(@NonNull Outline paramOutline)
  {
    c.getOutline(paramOutline);
  }
  
  public void setHotspot(float paramFloat1, float paramFloat2)
  {
    c.setHotspot(paramFloat1, paramFloat2);
  }
  
  public void setHotspotBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean setState(@NonNull int[] paramArrayOfInt)
  {
    if (super.setState(paramArrayOfInt))
    {
      invalidateSelf();
      return true;
    }
    return false;
  }
  
  public void setTint(int paramInt)
  {
    if (b())
    {
      super.setTint(paramInt);
      return;
    }
    c.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (b())
    {
      super.setTintList(paramColorStateList);
      return;
    }
    c.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (b())
    {
      super.setTintMode(paramMode);
      return;
    }
    c.setTintMode(paramMode);
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
      return new b(this, paramResources);
    }
  }
}
