package android.support.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;

@SuppressLint({"ViewConstructor"})
class c
  extends View
  implements e
{
  final View a;
  ViewGroup b;
  View c;
  int d;
  Matrix e;
  private int f;
  private int g;
  private final Matrix h = new Matrix();
  private final ViewTreeObserver.OnPreDrawListener i = new ViewTreeObserver.OnPreDrawListener()
  {
    public boolean onPreDraw()
    {
      e = a.getMatrix();
      ViewCompat.postInvalidateOnAnimation(c.this);
      if ((b != null) && (c != null))
      {
        b.endViewTransition(c);
        ViewCompat.postInvalidateOnAnimation(b);
        b = null;
        c = null;
      }
      return true;
    }
  };
  
  c(View paramView)
  {
    super(paramView.getContext());
    a = paramView;
    setLayerType(2, null);
  }
  
  static e a(View paramView, ViewGroup paramViewGroup)
  {
    c localC2 = b(paramView);
    c localC1 = localC2;
    if (localC2 == null)
    {
      paramViewGroup = a(paramViewGroup);
      if (paramViewGroup == null) {
        return null;
      }
      localC1 = new c(paramView);
      paramViewGroup.addView(localC1);
    }
    d += 1;
    return localC1;
  }
  
  private static FrameLayout a(ViewGroup paramViewGroup)
  {
    while (!(paramViewGroup instanceof FrameLayout))
    {
      paramViewGroup = paramViewGroup.getParent();
      if (!(paramViewGroup instanceof ViewGroup)) {
        return null;
      }
      paramViewGroup = (ViewGroup)paramViewGroup;
    }
    return (FrameLayout)paramViewGroup;
  }
  
  static void a(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null)
    {
      d -= 1;
      if (d <= 0)
      {
        Object localObject = paramView.getParent();
        if ((localObject instanceof ViewGroup))
        {
          localObject = (ViewGroup)localObject;
          ((ViewGroup)localObject).endViewTransition(paramView);
          ((ViewGroup)localObject).removeView(paramView);
        }
      }
    }
  }
  
  private static void a(@NonNull View paramView, c paramC)
  {
    paramView.setTag(R.id.ghost_view, paramC);
  }
  
  static c b(@NonNull View paramView)
  {
    return (c)paramView.getTag(R.id.ghost_view);
  }
  
  public void a(ViewGroup paramViewGroup, View paramView)
  {
    b = paramViewGroup;
    c = paramView;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a(a, this);
    int[] arrayOfInt1 = new int[2];
    int[] arrayOfInt2 = new int[2];
    getLocationOnScreen(arrayOfInt1);
    a.getLocationOnScreen(arrayOfInt2);
    arrayOfInt2[0] = ((int)(arrayOfInt2[0] - a.getTranslationX()));
    arrayOfInt2[1] = ((int)(arrayOfInt2[1] - a.getTranslationY()));
    f = (arrayOfInt2[0] - arrayOfInt1[0]);
    g = (arrayOfInt2[1] - arrayOfInt1[1]);
    a.getViewTreeObserver().addOnPreDrawListener(i);
    a.setVisibility(4);
  }
  
  protected void onDetachedFromWindow()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(i);
    a.setVisibility(0);
    a(a, null);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    h.set(e);
    h.postTranslate(f, g);
    paramCanvas.setMatrix(h);
    a.draw(paramCanvas);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    View localView = a;
    if (paramInt == 0) {
      paramInt = 4;
    } else {
      paramInt = 0;
    }
    localView.setVisibility(paramInt);
  }
}
