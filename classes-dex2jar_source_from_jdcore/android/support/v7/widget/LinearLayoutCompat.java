package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat
  extends ViewGroup
{
  public static final int HORIZONTAL = 0;
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  public static final int SHOW_DIVIDER_END = 4;
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  public static final int SHOW_DIVIDER_NONE = 0;
  public static final int VERTICAL = 1;
  private boolean a = true;
  private int b = -1;
  private int c = 0;
  private int d;
  private int e = 8388659;
  private int f;
  private float g;
  private boolean h;
  private int[] i;
  private int[] j;
  private Drawable k;
  private int l;
  private int m;
  private int n;
  private int o;
  
  public LinearLayoutCompat(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.LinearLayoutCompat, paramInt, 0);
    paramInt = paramContext.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0) {
      setOrientation(paramInt);
    }
    paramInt = paramContext.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0) {
      setGravity(paramInt);
    }
    boolean bool = paramContext.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool) {
      setBaselineAligned(bool);
    }
    g = paramContext.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0F);
    b = paramContext.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    h = paramContext.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(paramContext.getDrawable(R.styleable.LinearLayoutCompat_divider));
    n = paramContext.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
    o = paramContext.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
    paramContext.recycle();
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt3 + paramInt1, paramInt4 + paramInt2);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = a(i1);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (width == -1)
        {
          int i3 = height;
          height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, i2, 0, paramInt2, 0);
          height = i3;
        }
      }
      i1 += 1;
    }
  }
  
  private void d(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = a(i1);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (height == -1)
        {
          int i3 = width;
          width = localView.getMeasuredWidth();
          measureChildWithMargins(localView, paramInt2, 0, i2, 0);
          width = i3;
        }
      }
      i1 += 1;
    }
  }
  
  int a(View paramView)
  {
    return 0;
  }
  
  int a(View paramView, int paramInt)
  {
    return 0;
  }
  
  View a(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  void a(int paramInt1, int paramInt2)
  {
    f = 0;
    int i9 = getVirtualChildCount();
    int i17 = View.MeasureSpec.getMode(paramInt1);
    int i3 = View.MeasureSpec.getMode(paramInt2);
    int i18 = b;
    boolean bool = h;
    float f1 = 0.0F;
    int i1 = 0;
    int i11 = 0;
    int i6 = 0;
    int i2 = 0;
    int i5 = 0;
    int i7 = 0;
    int i10 = 0;
    int i4 = 1;
    int i8 = 0;
    View localView;
    LayoutParams localLayoutParams;
    int i12;
    int i14;
    while (i7 < i9)
    {
      localView = a(i7);
      if (localView == null)
      {
        f += b(i7);
      }
      else if (localView.getVisibility() == 8)
      {
        i7 += a(localView, i7);
      }
      else
      {
        if (hasDividerBeforeChildAt(i7)) {
          f += m;
        }
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        f1 += weight;
        if ((i3 == 1073741824) && (height == 0) && (weight > 0.0F))
        {
          i10 = f;
          f = Math.max(i10, topMargin + i10 + bottomMargin);
          i10 = 1;
        }
        else
        {
          if ((height == 0) && (weight > 0.0F))
          {
            height = -2;
            i12 = 0;
          }
          else
          {
            i12 = Integer.MIN_VALUE;
          }
          if (f1 == 0.0F) {
            i13 = f;
          } else {
            i13 = 0;
          }
          a(localView, i7, paramInt1, 0, paramInt2, i13);
          if (i12 != Integer.MIN_VALUE) {
            height = i12;
          }
          i12 = localView.getMeasuredHeight();
          i13 = f;
          f = Math.max(i13, i13 + i12 + topMargin + bottomMargin + b(localView));
          if (bool) {
            i6 = Math.max(i12, i6);
          }
        }
        i14 = i7;
        if ((i18 >= 0) && (i18 == i14 + 1)) {
          c = f;
        }
        if ((i14 < i18) && (weight > 0.0F)) {
          throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
        }
        if ((i17 != 1073741824) && (width == -1))
        {
          i7 = 1;
          i8 = 1;
        }
        else
        {
          i7 = 0;
        }
        i12 = leftMargin + rightMargin;
        i13 = localView.getMeasuredWidth() + i12;
        int i15 = Math.max(i11, i13);
        int i16 = View.combineMeasuredStates(i1, localView.getMeasuredState());
        if ((i4 != 0) && (width == -1)) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        if (weight > 0.0F)
        {
          if (i7 == 0) {
            i12 = i13;
          }
          i4 = Math.max(i2, i12);
          i2 = i5;
        }
        else
        {
          if (i7 == 0) {
            for (;;)
            {
              i12 = i13;
            }
          }
          i5 = Math.max(i5, i12);
          i4 = i2;
          i2 = i5;
        }
        i7 = a(localView, i14);
        i5 = i1;
        i11 = i4;
        i1 = i16;
        i7 += i14;
        i12 = i15;
        i4 = i5;
        i5 = i2;
        i2 = i11;
        i11 = i12;
      }
      i7 += 1;
    }
    if ((f > 0) && (hasDividerBeforeChildAt(i9))) {
      f += m;
    }
    if (bool)
    {
      i7 = i3;
      if ((i7 == Integer.MIN_VALUE) || (i7 == 0))
      {
        f = 0;
        i7 = 0;
        while (i7 < i9)
        {
          localView = a(i7);
          if (localView == null)
          {
            f += b(i7);
          }
          else if (localView.getVisibility() == 8)
          {
            i7 += a(localView, i7);
          }
          else
          {
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            i12 = f;
            f = Math.max(i12, i12 + i6 + topMargin + bottomMargin + b(localView));
          }
          i7 += 1;
        }
      }
    }
    i7 = i3;
    f += getPaddingTop() + getPaddingBottom();
    int i13 = View.resolveSizeAndState(Math.max(f, getSuggestedMinimumHeight()), paramInt2, 0);
    i3 = (0xFFFFFF & i13) - f;
    if ((i10 == 0) && ((i3 == 0) || (f1 <= 0.0F)))
    {
      i3 = Math.max(i5, i2);
      if ((bool) && (i7 != 1073741824))
      {
        i2 = 0;
        while (i2 < i9)
        {
          localView = a(i2);
          if ((localView != null) && (localView.getVisibility() != 8) && (getLayoutParamsweight > 0.0F)) {
            localView.measure(View.MeasureSpec.makeMeasureSpec(localView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
          }
          i2 += 1;
        }
      }
      i2 = i1;
      i1 = i3;
    }
    else
    {
      if (g > 0.0F) {
        f1 = g;
      }
      f = 0;
      i10 = 0;
      i2 = i5;
      i6 = i7;
      i7 = i10;
      while (i7 < i9)
      {
        localView = a(i7);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          float f2 = weight;
          if (f2 > 0.0F)
          {
            i10 = (int)(i3 * f2 / f1);
            i14 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin, width);
            if ((height == 0) && (i6 == 1073741824))
            {
              if (i10 > 0) {
                i5 = i10;
              } else {
                i5 = 0;
              }
              localView.measure(i14, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
            }
            else
            {
              i12 = localView.getMeasuredHeight() + i10;
              i5 = i12;
              if (i12 < 0) {
                i5 = 0;
              }
              localView.measure(i14, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
            }
            i1 = View.combineMeasuredStates(i1, localView.getMeasuredState() & 0xFF00);
            i3 -= i10;
            f1 -= f2;
          }
          i10 = leftMargin + rightMargin;
          i12 = localView.getMeasuredWidth() + i10;
          i11 = Math.max(i11, i12);
          if ((i17 != 1073741824) && (width == -1)) {
            i5 = 1;
          } else {
            i5 = 0;
          }
          if (i5 != 0) {
            i5 = i10;
          } else {
            i5 = i12;
          }
          i5 = Math.max(i2, i5);
          if ((i4 != 0) && (width == -1)) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          i4 = f;
          f = Math.max(i4, i4 + localView.getMeasuredHeight() + topMargin + bottomMargin + b(localView));
          i4 = i2;
          i2 = i5;
        }
        i7 += 1;
      }
      f += getPaddingTop() + getPaddingBottom();
      i3 = i2;
      i2 = i1;
      i1 = i3;
    }
    if ((i4 != 0) || (i17 == 1073741824)) {
      i1 = i11;
    }
    setMeasuredDimension(View.resolveSizeAndState(Math.max(i1 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i2), i13);
    if (i8 != 0) {
      c(i9, paramInt2);
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getPaddingLeft();
    int i2 = paramInt3 - paramInt1;
    int i3 = getPaddingRight();
    int i4 = getPaddingRight();
    int i5 = getVirtualChildCount();
    paramInt1 = e & 0x70;
    int i6 = e;
    if (paramInt1 != 16)
    {
      if (paramInt1 != 80) {
        paramInt1 = getPaddingTop();
      } else {
        paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - f;
      }
    }
    else
    {
      paramInt1 = getPaddingTop();
      paramInt1 = (paramInt4 - paramInt2 - f) / 2 + paramInt1;
    }
    paramInt2 = 0;
    while (paramInt2 < i5)
    {
      View localView = a(paramInt2);
      if (localView == null)
      {
        paramInt3 = paramInt1 + b(paramInt2);
        paramInt4 = paramInt2;
      }
      for (;;)
      {
        break;
        paramInt3 = paramInt1;
        paramInt4 = paramInt2;
        if (localView.getVisibility() != 8)
        {
          int i8 = localView.getMeasuredWidth();
          int i7 = localView.getMeasuredHeight();
          LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
          paramInt4 = gravity;
          paramInt3 = paramInt4;
          if (paramInt4 < 0) {
            paramInt3 = i6 & 0x800007;
          }
          paramInt3 = GravityCompat.getAbsoluteGravity(paramInt3, ViewCompat.getLayoutDirection(this)) & 0x7;
          if (paramInt3 != 1) {
            if (paramInt3 != 5) {
              paramInt3 = leftMargin + i1;
            }
          }
          for (;;)
          {
            break;
            paramInt3 = i2 - i3 - i8 - rightMargin;
            continue;
            paramInt3 = (i2 - i1 - i4 - i8) / 2 + i1 + leftMargin - rightMargin;
          }
          paramInt4 = paramInt1;
          if (hasDividerBeforeChildAt(paramInt2)) {
            paramInt4 = paramInt1 + m;
          }
          paramInt1 = paramInt4 + topMargin;
          a(localView, paramInt3, paramInt1 + a(localView), i8, i7);
          paramInt3 = bottomMargin;
          i8 = b(localView);
          paramInt4 = paramInt2 + a(localView, paramInt2);
          paramInt3 = paramInt1 + (i7 + paramInt3 + i8);
        }
      }
      paramInt2 = paramInt4 + 1;
      paramInt1 = paramInt3;
    }
  }
  
  void a(Canvas paramCanvas)
  {
    int i2 = getVirtualChildCount();
    int i1 = 0;
    View localView;
    LayoutParams localLayoutParams;
    while (i1 < i2)
    {
      localView = a(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (hasDividerBeforeChildAt(i1)))
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        a(paramCanvas, localView.getTop() - topMargin - m);
      }
      i1 += 1;
    }
    if (hasDividerBeforeChildAt(i2))
    {
      localView = a(i2 - 1);
      if (localView == null)
      {
        i1 = getHeight() - getPaddingBottom() - m;
      }
      else
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        i1 = localView.getBottom() + bottomMargin;
      }
      a(paramCanvas, i1);
    }
  }
  
  void a(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(getPaddingLeft() + o, paramInt, getWidth() - getPaddingRight() - o, m + paramInt);
    k.draw(paramCanvas);
  }
  
  void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  int b(int paramInt)
  {
    return 0;
  }
  
  int b(View paramView)
  {
    return 0;
  }
  
  void b(int paramInt1, int paramInt2)
  {
    f = 0;
    int i12 = getVirtualChildCount();
    int i17 = View.MeasureSpec.getMode(paramInt1);
    int i16 = View.MeasureSpec.getMode(paramInt2);
    if ((i == null) || (j == null))
    {
      i = new int[4];
      j = new int[4];
    }
    int[] arrayOfInt = i;
    Object localObject = j;
    arrayOfInt[3] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[0] = -1;
    localObject[3] = -1;
    localObject[2] = -1;
    localObject[1] = -1;
    localObject[0] = -1;
    boolean bool1 = a;
    boolean bool2 = h;
    int i11;
    if (i17 == 1073741824) {
      i11 = 1;
    } else {
      i11 = 0;
    }
    float f1 = 0.0F;
    int i4 = 0;
    int i3 = 0;
    int i9 = 0;
    int i8 = 0;
    int i2 = 0;
    int i7 = 0;
    int i5 = 0;
    int i1 = 1;
    int i6 = 0;
    View localView;
    LayoutParams localLayoutParams;
    while (i4 < i12)
    {
      localView = a(i4);
      if (localView == null) {
        f += b(i4);
      }
      for (;;)
      {
        break;
        if (localView.getVisibility() == 8)
        {
          i4 += a(localView, i4);
        }
        else
        {
          if (hasDividerBeforeChildAt(i4)) {
            f += l;
          }
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          f1 += weight;
          if ((i17 == 1073741824) && (width == 0) && (weight > 0.0F))
          {
            if (i11 != 0)
            {
              f += leftMargin + rightMargin;
            }
            else
            {
              i10 = f;
              f = Math.max(i10, leftMargin + i10 + rightMargin);
            }
            if (bool1)
            {
              i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
              localView.measure(i10, i10);
              i10 = i3;
            }
            else
            {
              i8 = 1;
              break label566;
            }
          }
          else
          {
            if ((width == 0) && (weight > 0.0F))
            {
              width = -2;
              i10 = 0;
            }
            else
            {
              i10 = Integer.MIN_VALUE;
            }
            if (f1 == 0.0F) {
              i13 = f;
            } else {
              i13 = 0;
            }
            a(localView, i4, paramInt1, i13, paramInt2, 0);
            if (i10 != Integer.MIN_VALUE) {
              width = i10;
            }
            i13 = localView.getMeasuredWidth();
            if (i11 != 0)
            {
              f += leftMargin + i13 + rightMargin + b(localView);
            }
            else
            {
              i10 = f;
              f = Math.max(i10, i10 + i13 + leftMargin + rightMargin + b(localView));
            }
            i10 = i3;
            if (bool2) {
              i10 = Math.max(i13, i3);
            }
          }
          i3 = i10;
          label566:
          i14 = i4;
          if ((i16 != 1073741824) && (height == -1))
          {
            i4 = 1;
            i6 = 1;
          }
          else
          {
            i4 = 0;
          }
          i10 = topMargin + bottomMargin;
          i13 = localView.getMeasuredHeight() + i10;
          int i15 = View.combineMeasuredStates(i5, localView.getMeasuredState());
          if (bool1)
          {
            int i18 = localView.getBaseline();
            if (i18 != -1)
            {
              if (gravity < 0) {
                i5 = e;
              } else {
                i5 = gravity;
              }
              i5 = ((i5 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              arrayOfInt[i5] = Math.max(arrayOfInt[i5], i18);
              localObject[i5] = Math.max(localObject[i5], i13 - i18);
            }
          }
          i9 = Math.max(i9, i13);
          if ((i1 != 0) && (height == -1)) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (weight > 0.0F) {
            if (i4 == 0) {
              for (;;)
              {
                i10 = i13;
              }
            }
          }
          for (i4 = Math.max(i7, i10);; i4 = i7)
          {
            break;
            if (i4 != 0) {
              i13 = i10;
            }
            i2 = Math.max(i2, i13);
          }
          i7 = a(localView, i14);
          i5 = i15;
          i10 = i7 + i14;
          i7 = i4;
          i4 = i10;
        }
      }
      i4 += 1;
    }
    i4 = i9;
    if ((f > 0) && (hasDividerBeforeChildAt(i12))) {
      f += l;
    }
    if ((arrayOfInt[1] == -1) && (arrayOfInt[0] == -1) && (arrayOfInt[2] == -1) && (arrayOfInt[3] == -1)) {
      break label983;
    }
    i4 = Math.max(i4, Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))) + Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))));
    label983:
    i9 = i5;
    int i10 = i4;
    if (bool2) {
      if (i17 != Integer.MIN_VALUE)
      {
        i10 = i4;
        if (i17 != 0) {}
      }
      else
      {
        f = 0;
        i5 = 0;
        for (;;)
        {
          i10 = i4;
          if (i5 >= i12) {
            break;
          }
          localView = a(i5);
          if (localView == null)
          {
            f += b(i5);
          }
          else
          {
            if (localView.getVisibility() != 8) {
              break label1088;
            }
            i5 += a(localView, i5);
          }
          for (;;)
          {
            break;
            label1088:
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if (i11 != 0)
            {
              f += leftMargin + i3 + rightMargin + b(localView);
            }
            else
            {
              i10 = f;
              f = Math.max(i10, i10 + i3 + leftMargin + rightMargin + b(localView));
            }
          }
          i5 += 1;
        }
      }
    }
    f += getPaddingLeft() + getPaddingRight();
    int i14 = View.resolveSizeAndState(Math.max(f, getSuggestedMinimumWidth()), paramInt1, 0);
    int i13 = (0xFFFFFF & i14) - f;
    if ((i8 == 0) && ((i13 == 0) || (f1 <= 0.0F)))
    {
      i4 = Math.max(i2, i7);
      if ((bool2) && (i17 != 1073741824))
      {
        i2 = 0;
        while (i2 < i12)
        {
          localObject = a(i2);
          if ((localObject != null) && (((View)localObject).getVisibility() != 8) && (getLayoutParamsweight > 0.0F)) {
            ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject).getMeasuredHeight(), 1073741824));
          }
          i2 += 1;
        }
      }
      i3 = i12;
      i2 = i4;
      i4 = i1;
      i1 = i10;
    }
    else
    {
      if (g > 0.0F) {
        f1 = g;
      }
      arrayOfInt[3] = -1;
      arrayOfInt[2] = -1;
      arrayOfInt[1] = -1;
      arrayOfInt[0] = -1;
      localObject[3] = -1;
      localObject[2] = -1;
      localObject[1] = -1;
      localObject[0] = -1;
      f = 0;
      i7 = -1;
      i8 = 0;
      i4 = i1;
      i3 = i12;
      i5 = i2;
      i1 = i9;
      i2 = i13;
      i9 = i8;
      while (i9 < i3)
      {
        localView = a(i9);
        if ((localView != null) && (localView.getVisibility() != 8))
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          float f2 = weight;
          if (f2 > 0.0F)
          {
            i10 = (int)(i2 * f2 / f1);
            i13 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin, height);
            if ((width == 0) && (i17 == 1073741824))
            {
              if (i10 > 0) {
                i8 = i10;
              } else {
                i8 = 0;
              }
              localView.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), i13);
            }
            else
            {
              i12 = localView.getMeasuredWidth() + i10;
              i8 = i12;
              if (i12 < 0) {
                i8 = 0;
              }
              localView.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), i13);
            }
            i1 = View.combineMeasuredStates(i1, localView.getMeasuredState() & 0xFF000000);
            f1 -= f2;
            i2 -= i10;
          }
          if (i11 != 0) {}
          for (f += localView.getMeasuredWidth() + leftMargin + rightMargin + b(localView);; f = Math.max(i8, localView.getMeasuredWidth() + i8 + leftMargin + rightMargin + b(localView)))
          {
            break;
            i8 = f;
          }
          if ((i16 != 1073741824) && (height == -1)) {
            i8 = 1;
          } else {
            i8 = 0;
          }
          i13 = topMargin + bottomMargin;
          i12 = localView.getMeasuredHeight() + i13;
          i10 = Math.max(i7, i12);
          if (i8 != 0) {
            i7 = i13;
          } else {
            i7 = i12;
          }
          i7 = Math.max(i5, i7);
          if ((i4 != 0) && (height == -1)) {
            i4 = 1;
          } else {
            i4 = 0;
          }
          if (bool1)
          {
            i8 = localView.getBaseline();
            if (i8 != -1)
            {
              if (gravity < 0) {
                i5 = e;
              } else {
                i5 = gravity;
              }
              i5 = ((i5 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              arrayOfInt[i5] = Math.max(arrayOfInt[i5], i8);
              localObject[i5] = Math.max(localObject[i5], i12 - i8);
            }
          }
          i5 = i7;
          i7 = i10;
        }
        i9 += 1;
      }
      f += getPaddingLeft() + getPaddingRight();
      if ((arrayOfInt[1] == -1) && (arrayOfInt[0] == -1) && (arrayOfInt[2] == -1) && (arrayOfInt[3] == -1)) {
        i2 = i7;
      } else {
        i2 = Math.max(i7, Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))) + Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))));
      }
      i7 = i2;
      i9 = i1;
      i2 = i5;
      i1 = i7;
    }
    i5 = i1;
    if (i4 == 0)
    {
      i5 = i1;
      if (i16 != 1073741824) {
        i5 = i2;
      }
    }
    setMeasuredDimension(i14 | i9 & 0xFF000000, View.resolveSizeAndState(Math.max(i5 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i9 << 16));
    if (i6 != 0) {
      d(i3, paramInt1);
    }
  }
  
  void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = ViewUtils.isLayoutRtl(this);
    int i6 = getPaddingTop();
    int i8 = paramInt4 - paramInt2;
    int i9 = getPaddingBottom();
    int i10 = getPaddingBottom();
    int i4 = getVirtualChildCount();
    paramInt4 = e;
    paramInt2 = e & 0x70;
    boolean bool2 = a;
    int[] arrayOfInt1 = i;
    int[] arrayOfInt2 = j;
    paramInt4 = GravityCompat.getAbsoluteGravity(paramInt4 & 0x800007, ViewCompat.getLayoutDirection(this));
    if (paramInt4 != 1)
    {
      if (paramInt4 != 5) {
        paramInt1 = getPaddingLeft();
      } else {
        paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - f;
      }
    }
    else
    {
      paramInt4 = getPaddingLeft();
      paramInt1 = (paramInt3 - paramInt1 - f) / 2 + paramInt4;
    }
    int i2;
    int i3;
    if (bool1)
    {
      i2 = i4 - 1;
      i3 = -1;
    }
    else
    {
      i2 = 0;
      i3 = 1;
    }
    paramInt4 = 0;
    paramInt3 = i6;
    while (paramInt4 < i4)
    {
      int i12 = i2 + i3 * paramInt4;
      View localView = a(i12);
      if (localView == null) {
        paramInt1 += b(i12);
      }
      for (;;)
      {
        break;
        if (localView.getVisibility() != 8)
        {
          int i11 = localView.getMeasuredWidth();
          int i13 = localView.getMeasuredHeight();
          LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if ((bool2) && (height != -1)) {
            i5 = localView.getBaseline();
          } else {
            i5 = -1;
          }
          int i7 = gravity;
          int i1 = i7;
          if (i7 < 0) {
            i1 = paramInt2;
          }
          i1 &= 0x70;
          if (i1 != 16)
          {
            if (i1 != 48)
            {
              if (i1 != 80) {
                i1 = paramInt3;
              }
              for (;;)
              {
                break;
                i7 = i8 - i9 - i13 - bottomMargin;
                i1 = i7;
                if (i5 != -1)
                {
                  i1 = localView.getMeasuredHeight();
                  i1 = i7 - (arrayOfInt2[2] - (i1 - i5));
                }
              }
            }
            i1 = topMargin + paramInt3;
            if (i5 != -1) {
              i1 += arrayOfInt1[1] - i5;
            }
          }
          else
          {
            i1 = (i8 - i6 - i10 - i13) / 2 + paramInt3 + topMargin - bottomMargin;
          }
          int i5 = paramInt1;
          if (hasDividerBeforeChildAt(i12)) {
            i5 = paramInt1 + l;
          }
          paramInt1 = leftMargin + i5;
          a(localView, paramInt1 + a(localView), i1, i11, i13);
          i1 = rightMargin;
          i5 = b(localView);
          paramInt4 += a(localView, i12);
          paramInt1 += i11 + i1 + i5;
          break;
        }
      }
      paramInt4 += 1;
    }
  }
  
  void b(Canvas paramCanvas)
  {
    int i3 = getVirtualChildCount();
    boolean bool = ViewUtils.isLayoutRtl(this);
    int i1 = 0;
    View localView;
    LayoutParams localLayoutParams;
    while (i1 < i3)
    {
      localView = a(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (hasDividerBeforeChildAt(i1)))
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i2;
        if (bool) {
          i2 = localView.getRight() + rightMargin;
        } else {
          i2 = localView.getLeft() - leftMargin - l;
        }
        b(paramCanvas, i2);
      }
      i1 += 1;
    }
    if (hasDividerBeforeChildAt(i3))
    {
      localView = a(i3 - 1);
      if (localView == null)
      {
        if (bool) {
          i1 = getPaddingLeft();
        } else {
          i1 = getWidth() - getPaddingRight() - l;
        }
      }
      else
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (bool) {
          i1 = localView.getLeft() - leftMargin - l;
        } else {
          i1 = localView.getRight() + rightMargin;
        }
      }
      b(paramCanvas, i1);
    }
  }
  
  void b(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(paramInt, getPaddingTop() + o, l + paramInt, getHeight() - getPaddingBottom() - o);
    k.draw(paramCanvas);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    if (d == 0) {
      return new LayoutParams(-2, -2);
    }
    if (d == 1) {
      return new LayoutParams(-1, -2);
    }
    return null;
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getBaseline()
  {
    if (b < 0) {
      return super.getBaseline();
    }
    if (getChildCount() > b)
    {
      View localView = getChildAt(b);
      int i3 = localView.getBaseline();
      if (i3 == -1)
      {
        if (b == 0) {
          return -1;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
      }
      int i2 = c;
      int i1 = i2;
      if (d == 1)
      {
        int i4 = e & 0x70;
        i1 = i2;
        if (i4 != 48) {
          if (i4 != 16)
          {
            if (i4 != 80) {
              i1 = i2;
            } else {
              i1 = getBottom() - getTop() - getPaddingBottom() - f;
            }
          }
          else {
            i1 = i2 + (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - f) / 2;
          }
        }
      }
      return i1 + getLayoutParamstopMargin + i3;
    }
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
  }
  
  public int getBaselineAlignedChildIndex()
  {
    return b;
  }
  
  public Drawable getDividerDrawable()
  {
    return k;
  }
  
  public int getDividerPadding()
  {
    return o;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getDividerWidth()
  {
    return l;
  }
  
  public int getGravity()
  {
    return e;
  }
  
  public int getOrientation()
  {
    return d;
  }
  
  public int getShowDividers()
  {
    return n;
  }
  
  int getVirtualChildCount()
  {
    return getChildCount();
  }
  
  public float getWeightSum()
  {
    return g;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY})
  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramInt == 0)
    {
      if ((n & 0x1) != 0) {
        bool1 = true;
      }
      return bool1;
    }
    if (paramInt == getChildCount())
    {
      bool1 = bool2;
      if ((n & 0x4) != 0) {
        bool1 = true;
      }
      return bool1;
    }
    if ((n & 0x2) != 0)
    {
      paramInt -= 1;
      while (paramInt >= 0)
      {
        if (getChildAt(paramInt).getVisibility() != 8) {
          return true;
        }
        paramInt -= 1;
      }
      return false;
    }
    return false;
  }
  
  public boolean isBaselineAligned()
  {
    return a;
  }
  
  public boolean isMeasureWithLargestChildEnabled()
  {
    return h;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (k == null) {
      return;
    }
    if (d == 1)
    {
      a(paramCanvas);
      return;
    }
    b(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    b(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2);
      return;
    }
    b(paramInt1, paramInt2);
  }
  
  public void setBaselineAligned(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getChildCount()))
    {
      b = paramInt;
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("base aligned child index out of range (0, ");
    localStringBuilder.append(getChildCount());
    localStringBuilder.append(")");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == k) {
      return;
    }
    k = paramDrawable;
    boolean bool = false;
    if (paramDrawable != null)
    {
      l = paramDrawable.getIntrinsicWidth();
      m = paramDrawable.getIntrinsicHeight();
    }
    else
    {
      l = 0;
      m = 0;
    }
    if (paramDrawable == null) {
      bool = true;
    }
    setWillNotDraw(bool);
    requestLayout();
  }
  
  public void setDividerPadding(int paramInt)
  {
    o = paramInt;
  }
  
  public void setGravity(int paramInt)
  {
    if (e != paramInt)
    {
      int i1 = paramInt;
      if ((0x800007 & paramInt) == 0) {
        i1 = paramInt | 0x800003;
      }
      paramInt = i1;
      if ((i1 & 0x70) == 0) {
        paramInt = i1 | 0x30;
      }
      e = paramInt;
      requestLayout();
    }
  }
  
  public void setHorizontalGravity(int paramInt)
  {
    paramInt &= 0x800007;
    if ((0x800007 & e) != paramInt)
    {
      e = (paramInt | e & 0xFF7FFFF8);
      requestLayout();
    }
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setOrientation(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDividers(int paramInt)
  {
    if (paramInt != n) {
      requestLayout();
    }
    n = paramInt;
  }
  
  public void setVerticalGravity(int paramInt)
  {
    paramInt &= 0x70;
    if ((e & 0x70) != paramInt)
    {
      e = (paramInt | e & 0xFFFFFF8F);
      requestLayout();
    }
  }
  
  public void setWeightSum(float paramFloat)
  {
    g = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface DividerMode {}
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public int gravity = -1;
    public float weight;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      weight = 0.0F;
    }
    
    public LayoutParams(int paramInt1, int paramInt2, float paramFloat)
    {
      super(paramInt2);
      weight = paramFloat;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.LinearLayoutCompat_Layout);
      weight = paramContext.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
      gravity = paramContext.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
      paramContext.recycle();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      weight = weight;
      gravity = gravity;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface OrientationMode {}
}
