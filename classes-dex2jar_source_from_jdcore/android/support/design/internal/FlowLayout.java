package android.support.design.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R.styleable;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class FlowLayout
  extends ViewGroup
{
  private int a;
  private int b;
  private boolean c = false;
  
  public FlowLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 != Integer.MIN_VALUE)
    {
      if (paramInt2 != 1073741824) {
        return paramInt3;
      }
      return paramInt1;
    }
    return Math.min(paramInt3, paramInt1);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.FlowLayout, 0, 0);
    a = paramContext.getDimensionPixelSize(R.styleable.FlowLayout_lineSpacing, 0);
    b = paramContext.getDimensionPixelSize(R.styleable.FlowLayout_itemSpacing, 0);
    paramContext.recycle();
  }
  
  protected int getItemSpacing()
  {
    return b;
  }
  
  protected int getLineSpacing()
  {
    return a;
  }
  
  protected boolean isSingleLine()
  {
    return c;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() == 0) {
      return;
    }
    paramInt2 = ViewCompat.getLayoutDirection(this);
    int i = 1;
    if (paramInt2 != 1) {
      i = 0;
    }
    if (i != 0) {
      paramInt2 = getPaddingRight();
    } else {
      paramInt2 = getPaddingLeft();
    }
    if (i != 0) {
      paramInt4 = getPaddingLeft();
    } else {
      paramInt4 = getPaddingRight();
    }
    int k = getPaddingTop();
    int i2 = paramInt3 - paramInt1 - paramInt4;
    paramInt3 = paramInt2;
    paramInt1 = k;
    int j = 0;
    while (j < getChildCount())
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        Object localObject = localView.getLayoutParams();
        int n;
        int m;
        if ((localObject instanceof ViewGroup.MarginLayoutParams))
        {
          localObject = (ViewGroup.MarginLayoutParams)localObject;
          n = MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams)localObject);
          m = MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams)localObject);
        }
        else
        {
          m = 0;
          n = 0;
        }
        int i3 = localView.getMeasuredWidth();
        int i1 = paramInt3;
        paramInt4 = paramInt1;
        if (!c)
        {
          i1 = paramInt3;
          paramInt4 = paramInt1;
          if (paramInt3 + n + i3 > i2)
          {
            paramInt4 = k + a;
            i1 = paramInt2;
          }
        }
        paramInt1 = i1 + n;
        paramInt3 = localView.getMeasuredWidth() + paramInt1;
        k = localView.getMeasuredHeight() + paramInt4;
        if (i != 0) {
          localView.layout(i2 - paramInt3, paramInt4, i2 - i1 - n, k);
        } else {
          localView.layout(paramInt1, paramInt4, paramInt3, k);
        }
        paramInt3 = i1 + (n + m + localView.getMeasuredWidth() + b);
        paramInt1 = paramInt4;
      }
      j += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i7 = View.MeasureSpec.getSize(paramInt1);
    int i8 = View.MeasureSpec.getMode(paramInt1);
    int i9 = View.MeasureSpec.getSize(paramInt2);
    int i10 = View.MeasureSpec.getMode(paramInt2);
    int n;
    if ((i8 != Integer.MIN_VALUE) && (i8 != 1073741824)) {
      n = Integer.MAX_VALUE;
    } else {
      n = i7;
    }
    int k = getPaddingLeft();
    int i = getPaddingTop();
    int i11 = getPaddingRight();
    int j = i;
    int i1 = 0;
    int m = 0;
    int i4 = i;
    i = m;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
      {
        m = j;
      }
      else
      {
        measureChild(localView, paramInt1, paramInt2);
        Object localObject = localView.getLayoutParams();
        int i2;
        int i3;
        if ((localObject instanceof ViewGroup.MarginLayoutParams))
        {
          localObject = (ViewGroup.MarginLayoutParams)localObject;
          i2 = leftMargin + 0;
          i3 = rightMargin + 0;
        }
        else
        {
          i2 = 0;
          i3 = 0;
        }
        int i12 = localView.getMeasuredWidth();
        int i6 = k;
        m = j;
        int i5 = i6;
        if (k + i2 + i12 > n - i11)
        {
          m = j;
          i5 = i6;
          if (!isSingleLine())
          {
            i5 = getPaddingLeft();
            m = a + i4;
          }
        }
        k = i5 + i2 + localView.getMeasuredWidth();
        i4 = localView.getMeasuredHeight();
        j = i;
        if (k > i) {
          j = k;
        }
        i = localView.getMeasuredWidth();
        k = b;
        i4 += m;
        k = i5 + (i2 + i3 + i + k);
        i = j;
      }
      i1 += 1;
      j = m;
    }
    setMeasuredDimension(a(i7, i8, i), a(i9, i10, i4));
  }
  
  protected void setItemSpacing(int paramInt)
  {
    b = paramInt;
  }
  
  protected void setLineSpacing(int paramInt)
  {
    a = paramInt;
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    c = paramBoolean;
  }
}
