package android.support.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;

class x
  implements z
{
  protected a a = new a(paramContext, paramViewGroup, paramView, this);
  
  x(Context paramContext, ViewGroup paramViewGroup, View paramView) {}
  
  static ViewGroup c(View paramView)
  {
    while (paramView != null)
    {
      if ((paramView.getId() == 16908290) && ((paramView instanceof ViewGroup))) {
        return (ViewGroup)paramView;
      }
      if ((paramView.getParent() instanceof ViewGroup)) {
        paramView = (ViewGroup)paramView.getParent();
      }
    }
    return null;
  }
  
  static x d(View paramView)
  {
    ViewGroup localViewGroup = c(paramView);
    if (localViewGroup != null)
    {
      int j = localViewGroup.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((localView instanceof a)) {
          return e;
        }
        i += 1;
      }
      return new q(localViewGroup.getContext(), localViewGroup, paramView);
    }
    return null;
  }
  
  public void a(@NonNull Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }
  
  public void b(@NonNull Drawable paramDrawable)
  {
    a.b(paramDrawable);
  }
  
  static class a
    extends ViewGroup
  {
    static Method a;
    ViewGroup b;
    View c;
    ArrayList<Drawable> d = null;
    x e;
    
    static
    {
      try
      {
        a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", new Class[] { Integer.TYPE, Integer.TYPE, Rect.class });
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException) {}
    }
    
    a(Context paramContext, ViewGroup paramViewGroup, View paramView, x paramX)
    {
      super();
      b = paramViewGroup;
      c = paramView;
      setRight(paramViewGroup.getWidth());
      setBottom(paramViewGroup.getHeight());
      paramViewGroup.addView(this);
      e = paramX;
    }
    
    private void a(int[] paramArrayOfInt)
    {
      int[] arrayOfInt1 = new int[2];
      int[] arrayOfInt2 = new int[2];
      b.getLocationOnScreen(arrayOfInt1);
      c.getLocationOnScreen(arrayOfInt2);
      arrayOfInt2[0] -= arrayOfInt1[0];
      arrayOfInt2[1] -= arrayOfInt1[1];
    }
    
    public void a(Drawable paramDrawable)
    {
      if (d == null) {
        d = new ArrayList();
      }
      if (!d.contains(paramDrawable))
      {
        d.add(paramDrawable);
        invalidate(paramDrawable.getBounds());
        paramDrawable.setCallback(this);
      }
    }
    
    public void a(View paramView)
    {
      if ((paramView.getParent() instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
        if ((localViewGroup != b) && (localViewGroup.getParent() != null) && (ViewCompat.isAttachedToWindow(localViewGroup)))
        {
          int[] arrayOfInt1 = new int[2];
          int[] arrayOfInt2 = new int[2];
          localViewGroup.getLocationOnScreen(arrayOfInt1);
          b.getLocationOnScreen(arrayOfInt2);
          ViewCompat.offsetLeftAndRight(paramView, arrayOfInt1[0] - arrayOfInt2[0]);
          ViewCompat.offsetTopAndBottom(paramView, arrayOfInt1[1] - arrayOfInt2[1]);
        }
        localViewGroup.removeView(paramView);
        if (paramView.getParent() != null) {
          localViewGroup.removeView(paramView);
        }
      }
      super.addView(paramView, getChildCount() - 1);
    }
    
    boolean a()
    {
      return (getChildCount() == 0) && ((d == null) || (d.size() == 0));
    }
    
    public void b(Drawable paramDrawable)
    {
      if (d != null)
      {
        d.remove(paramDrawable);
        invalidate(paramDrawable.getBounds());
        paramDrawable.setCallback(null);
      }
    }
    
    public void b(View paramView)
    {
      super.removeView(paramView);
      if (a()) {
        b.removeView(this);
      }
    }
    
    protected void dispatchDraw(Canvas paramCanvas)
    {
      int[] arrayOfInt1 = new int[2];
      int[] arrayOfInt2 = new int[2];
      b.getLocationOnScreen(arrayOfInt1);
      c.getLocationOnScreen(arrayOfInt2);
      int j = 0;
      paramCanvas.translate(arrayOfInt2[0] - arrayOfInt1[0], arrayOfInt2[1] - arrayOfInt1[1]);
      paramCanvas.clipRect(new Rect(0, 0, c.getWidth(), c.getHeight()));
      super.dispatchDraw(paramCanvas);
      int i;
      if (d == null) {
        i = 0;
      } else {
        i = d.size();
      }
      while (j < i)
      {
        ((Drawable)d.get(j)).draw(paramCanvas);
        j += 1;
      }
    }
    
    public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public ViewParent invalidateChildInParent(int[] paramArrayOfInt, Rect paramRect)
    {
      if (b != null)
      {
        paramRect.offset(paramArrayOfInt[0], paramArrayOfInt[1]);
        if ((b instanceof ViewGroup))
        {
          paramArrayOfInt[0] = 0;
          paramArrayOfInt[1] = 0;
          int[] arrayOfInt = new int[2];
          a(arrayOfInt);
          paramRect.offset(arrayOfInt[0], arrayOfInt[1]);
          return super.invalidateChildInParent(paramArrayOfInt, paramRect);
        }
        invalidate(paramRect);
      }
      return null;
    }
    
    public void invalidateDrawable(@NonNull Drawable paramDrawable)
    {
      invalidate(paramDrawable.getBounds());
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    protected boolean verifyDrawable(@NonNull Drawable paramDrawable)
    {
      return (super.verifyDrawable(paramDrawable)) || ((d != null) && (d.contains(paramDrawable)));
    }
  }
}
