package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
public class ContentFrameLayout
  extends FrameLayout
{
  private TypedValue a;
  private TypedValue b;
  private TypedValue c;
  private TypedValue d;
  private TypedValue e;
  private TypedValue f;
  private final Rect g = new Rect();
  private OnAttachListener h;
  
  public ContentFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ContentFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void dispatchFitSystemWindows(Rect paramRect)
  {
    fitSystemWindows(paramRect);
  }
  
  public TypedValue getFixedHeightMajor()
  {
    if (e == null) {
      e = new TypedValue();
    }
    return e;
  }
  
  public TypedValue getFixedHeightMinor()
  {
    if (f == null) {
      f = new TypedValue();
    }
    return f;
  }
  
  public TypedValue getFixedWidthMajor()
  {
    if (c == null) {
      c = new TypedValue();
    }
    return c;
  }
  
  public TypedValue getFixedWidthMinor()
  {
    if (d == null) {
      d = new TypedValue();
    }
    return d;
  }
  
  public TypedValue getMinWidthMajor()
  {
    if (a == null) {
      a = new TypedValue();
    }
    return a;
  }
  
  public TypedValue getMinWidthMinor()
  {
    if (b == null) {
      b = new TypedValue();
    }
    return b;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (h != null) {
      h.onAttachedFromWindow();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (h != null) {
      h.onDetachedFromWindow();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int i = widthPixels;
    int j = heightPixels;
    int n = 1;
    if (i < j) {
      j = 1;
    } else {
      j = 0;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    TypedValue localTypedValue;
    if (i1 == Integer.MIN_VALUE)
    {
      if (j != 0) {
        localTypedValue = d;
      } else {
        localTypedValue = c;
      }
      if ((localTypedValue != null) && (type != 0))
      {
        if (type == 5) {
          i = (int)localTypedValue.getDimension(localDisplayMetrics);
        } else if (type == 6) {
          i = (int)localTypedValue.getFraction(widthPixels, widthPixels);
        } else {
          i = 0;
        }
        if (i > 0)
        {
          m = View.MeasureSpec.makeMeasureSpec(Math.min(i - (g.left + g.right), View.MeasureSpec.getSize(paramInt1)), 1073741824);
          k = 1;
          break label197;
        }
      }
    }
    int k = 0;
    int m = paramInt1;
    label197:
    i = paramInt2;
    if (i2 == Integer.MIN_VALUE)
    {
      if (j != 0) {
        localTypedValue = e;
      } else {
        localTypedValue = f;
      }
      i = paramInt2;
      if (localTypedValue != null)
      {
        i = paramInt2;
        if (type != 0)
        {
          if (type == 5) {
            paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
          } else if (type == 6) {
            paramInt1 = (int)localTypedValue.getFraction(heightPixels, heightPixels);
          } else {
            paramInt1 = 0;
          }
          i = paramInt2;
          if (paramInt1 > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(paramInt1 - (g.top + g.bottom), View.MeasureSpec.getSize(paramInt2)), 1073741824);
          }
        }
      }
    }
    super.onMeasure(m, i);
    i2 = getMeasuredWidth();
    m = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
    if ((k == 0) && (i1 == Integer.MIN_VALUE))
    {
      if (j != 0) {
        localTypedValue = b;
      } else {
        localTypedValue = a;
      }
      if ((localTypedValue != null) && (type != 0))
      {
        if (type == 5) {
          paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
        } else if (type == 6) {
          paramInt1 = (int)localTypedValue.getFraction(widthPixels, widthPixels);
        } else {
          paramInt1 = 0;
        }
        paramInt2 = paramInt1;
        if (paramInt1 > 0) {
          paramInt2 = paramInt1 - (g.left + g.right);
        }
        if (i2 < paramInt2)
        {
          paramInt2 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
          paramInt1 = n;
          break label504;
        }
      }
    }
    paramInt1 = 0;
    paramInt2 = m;
    label504:
    if (paramInt1 != 0) {
      super.onMeasure(paramInt2, i);
    }
  }
  
  public void setAttachListener(OnAttachListener paramOnAttachListener)
  {
    h = paramOnAttachListener;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setDecorPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    g.set(paramInt1, paramInt2, paramInt3, paramInt4);
    if (ViewCompat.isLaidOut(this)) {
      requestLayout();
    }
  }
  
  public static abstract interface OnAttachListener
  {
    public abstract void onAttachedFromWindow();
    
    public abstract void onDetachedFromWindow();
  }
}
