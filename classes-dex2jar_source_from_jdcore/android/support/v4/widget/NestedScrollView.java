package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.NestedScrollingChild2;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent2;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.OverScroller;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.List;

public class NestedScrollView
  extends FrameLayout
  implements NestedScrollingChild2, NestedScrollingParent2, ScrollingView
{
  private static final a w = new a();
  private static final int[] x = { 16843130 };
  private float A;
  private OnScrollChangeListener B;
  private long a;
  private final Rect b = new Rect();
  private OverScroller c;
  private EdgeEffect d;
  private EdgeEffect e;
  private int f;
  private boolean g = true;
  private boolean h = false;
  private View i = null;
  private boolean j = false;
  private VelocityTracker k;
  private boolean l;
  private boolean m = true;
  private int n;
  private int o;
  private int p;
  private int q = -1;
  private final int[] r = new int[2];
  private final int[] s = new int[2];
  private int t;
  private int u;
  private b v;
  private final NestedScrollingParentHelper y;
  private final NestedScrollingChildHelper z;
  
  public NestedScrollView(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NestedScrollView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NestedScrollView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, x, paramInt, 0);
    setFillViewport(paramContext.getBoolean(0, false));
    paramContext.recycle();
    y = new NestedScrollingParentHelper(this);
    z = new NestedScrollingChildHelper(this);
    setNestedScrollingEnabled(true);
    ViewCompat.setAccessibilityDelegate(this, w);
  }
  
  private View a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = getFocusables(2);
    int i6 = localArrayList.size();
    Object localObject2 = null;
    int i3 = 0;
    int i2;
    for (int i4 = 0; i3 < i6; i4 = i2)
    {
      View localView = (View)localArrayList.get(i3);
      int i5 = localView.getTop();
      int i7 = localView.getBottom();
      Object localObject1 = localObject2;
      i2 = i4;
      if (paramInt1 < i7)
      {
        localObject1 = localObject2;
        i2 = i4;
        if (i5 < paramInt2)
        {
          int i1;
          if ((paramInt1 < i5) && (i7 < paramInt2)) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          if (localObject2 == null)
          {
            localObject1 = localView;
            i2 = i1;
          }
          else
          {
            if (((paramBoolean) && (i5 < localObject2.getTop())) || ((!paramBoolean) && (i7 > localObject2.getBottom()))) {
              i5 = 1;
            } else {
              i5 = 0;
            }
            if (i4 != 0)
            {
              localObject1 = localObject2;
              i2 = i4;
              if (i1 == 0) {
                break label232;
              }
              localObject1 = localObject2;
              i2 = i4;
              if (i5 == 0) {
                break label232;
              }
            }
            else
            {
              if (i1 != 0)
              {
                localObject1 = localView;
                i2 = 1;
                break label232;
              }
              localObject1 = localObject2;
              i2 = i4;
              if (i5 == 0) {
                break label232;
              }
            }
            localObject1 = localView;
            i2 = i4;
          }
        }
      }
      label232:
      i3 += 1;
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  private void a()
  {
    c = new OverScroller(getContext());
    setFocusable(true);
    setDescendantFocusability(262144);
    setWillNotDraw(false);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    n = localViewConfiguration.getScaledTouchSlop();
    o = localViewConfiguration.getScaledMinimumFlingVelocity();
    p = localViewConfiguration.getScaledMaximumFlingVelocity();
  }
  
  private void a(int paramInt)
  {
    if (paramInt != 0)
    {
      if (m)
      {
        smoothScrollBy(0, paramInt);
        return;
      }
      scrollBy(0, paramInt);
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    if (paramMotionEvent.getPointerId(i1) == q)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      f = ((int)paramMotionEvent.getY(i1));
      q = paramMotionEvent.getPointerId(i1);
      if (k != null) {
        k.clear();
      }
    }
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    int i1 = getChildCount();
    boolean bool2 = false;
    if (i1 > 0)
    {
      i1 = getScrollY();
      View localView = getChildAt(0);
      boolean bool1 = bool2;
      if (paramInt2 >= localView.getTop() - i1)
      {
        bool1 = bool2;
        if (paramInt2 < localView.getBottom() - i1)
        {
          bool1 = bool2;
          if (paramInt1 >= localView.getLeft())
          {
            bool1 = bool2;
            if (paramInt1 < localView.getRight()) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    return false;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i2 = getHeight();
    int i1 = getScrollY();
    i2 += i1;
    boolean bool2 = false;
    boolean bool1;
    if (paramInt1 == 33) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    View localView = a(bool1, paramInt2, paramInt3);
    Object localObject = localView;
    if (localView == null) {
      localObject = this;
    }
    if ((paramInt2 >= i1) && (paramInt3 <= i2))
    {
      bool1 = bool2;
    }
    else
    {
      if (bool1) {
        paramInt2 -= i1;
      } else {
        paramInt2 = paramInt3 - i2;
      }
      a(paramInt2);
      bool1 = true;
    }
    if (localObject != findFocus()) {
      ((View)localObject).requestFocus(paramInt1);
    }
    return bool1;
  }
  
  private boolean a(Rect paramRect, boolean paramBoolean)
  {
    int i1 = computeScrollDeltaToGetChildRectOnScreen(paramRect);
    boolean bool;
    if (i1 != 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool)
    {
      if (paramBoolean)
      {
        scrollBy(0, i1);
        return bool;
      }
      smoothScrollBy(0, i1);
    }
    return bool;
  }
  
  private boolean a(View paramView)
  {
    return a(paramView, 0, getHeight()) ^ true;
  }
  
  private boolean a(View paramView, int paramInt1, int paramInt2)
  {
    paramView.getDrawingRect(b);
    offsetDescendantRectToMyCoords(paramView, b);
    return (b.bottom + paramInt1 >= getScrollY()) && (b.top - paramInt1 <= getScrollY() + paramInt2);
  }
  
  private static boolean a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2) {
      return true;
    }
    paramView1 = paramView1.getParent();
    return ((paramView1 instanceof ViewGroup)) && (a((View)paramView1, paramView2));
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 < paramInt3) && (paramInt1 >= 0))
    {
      if (paramInt2 + paramInt1 > paramInt3) {
        return paramInt3 - paramInt2;
      }
      return paramInt1;
    }
    return 0;
  }
  
  private void b(int paramInt)
  {
    int i1 = getScrollY();
    boolean bool;
    if (((i1 <= 0) && (paramInt <= 0)) || ((i1 >= getScrollRange()) && (paramInt >= 0))) {
      bool = false;
    } else {
      bool = true;
    }
    float f1 = paramInt;
    if (!dispatchNestedPreFling(0.0F, f1))
    {
      dispatchNestedFling(0.0F, f1, bool);
      fling(paramInt);
    }
  }
  
  private void b(View paramView)
  {
    paramView.getDrawingRect(b);
    offsetDescendantRectToMyCoords(paramView, b);
    int i1 = computeScrollDeltaToGetChildRectOnScreen(b);
    if (i1 != 0) {
      scrollBy(0, i1);
    }
  }
  
  private boolean b()
  {
    int i1 = getChildCount();
    boolean bool = false;
    if (i1 > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      if (localView.getHeight() + topMargin + bottomMargin > getHeight() - getPaddingTop() - getPaddingBottom()) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  private void c()
  {
    if (k == null)
    {
      k = VelocityTracker.obtain();
      return;
    }
    k.clear();
  }
  
  private void d()
  {
    if (k == null) {
      k = VelocityTracker.obtain();
    }
  }
  
  private void e()
  {
    if (k != null)
    {
      k.recycle();
      k = null;
    }
  }
  
  private void f()
  {
    j = false;
    e();
    stopNestedScroll(0);
    if (d != null)
    {
      d.onRelease();
      e.onRelease();
    }
  }
  
  private void g()
  {
    if (getOverScrollMode() != 2)
    {
      if (d == null)
      {
        Context localContext = getContext();
        d = new EdgeEffect(localContext);
        e = new EdgeEffect(localContext);
      }
    }
    else
    {
      d = null;
      e = null;
    }
  }
  
  private float getVerticalScrollFactorCompat()
  {
    if (A == 0.0F)
    {
      TypedValue localTypedValue = new TypedValue();
      Context localContext = getContext();
      if (localContext.getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        A = localTypedValue.getDimension(localContext.getResources().getDisplayMetrics());
      } else {
        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
      }
    }
    return A;
  }
  
  boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
  {
    int i3 = getOverScrollMode();
    int i1 = computeHorizontalScrollRange();
    int i2 = computeHorizontalScrollExtent();
    boolean bool2 = false;
    if (i1 > i2) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (computeVerticalScrollRange() > computeVerticalScrollExtent()) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if ((i3 != 0) && ((i3 != 1) || (i1 == 0))) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if ((i3 != 0) && ((i3 != 1) || (i2 == 0))) {
      i2 = 0;
    } else {
      i2 = 1;
    }
    paramInt3 += paramInt1;
    if (i1 == 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = paramInt7;
    }
    paramInt4 += paramInt2;
    if (i2 == 0) {
      paramInt2 = 0;
    } else {
      paramInt2 = paramInt8;
    }
    paramInt7 = -paramInt1;
    paramInt1 += paramInt5;
    paramInt5 = -paramInt2;
    paramInt6 = paramInt2 + paramInt6;
    if (paramInt3 > paramInt1) {}
    for (;;)
    {
      paramBoolean = true;
      paramInt2 = paramInt1;
      break label198;
      if (paramInt3 >= paramInt7) {
        break;
      }
      paramInt1 = paramInt7;
    }
    paramInt2 = paramInt3;
    paramBoolean = false;
    label198:
    if (paramInt4 > paramInt6) {}
    for (paramInt1 = paramInt6;; paramInt1 = paramInt5)
    {
      bool1 = true;
      break label233;
      if (paramInt4 >= paramInt5) {
        break;
      }
    }
    paramInt1 = paramInt4;
    boolean bool1 = false;
    label233:
    if ((bool1) && (!hasNestedScrollingParent(1))) {
      c.springBack(paramInt2, paramInt1, 0, 0, 0, getScrollRange());
    }
    onOverScrolled(paramInt2, paramInt1, paramBoolean, bool1);
    if (!paramBoolean)
    {
      paramBoolean = bool2;
      if (!bool1) {}
    }
    else
    {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  public void addView(View paramView)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, int paramInt)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramInt);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (getChildCount() <= 0)
    {
      super.addView(paramView, paramLayoutParams);
      return;
    }
    throw new IllegalStateException("ScrollView can host only one direct child");
  }
  
  public boolean arrowScroll(int paramInt)
  {
    View localView2 = findFocus();
    View localView1 = localView2;
    if (localView2 == this) {
      localView1 = null;
    }
    localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    int i2 = getMaxScrollAmount();
    if ((localView2 != null) && (a(localView2, i2, getHeight())))
    {
      localView2.getDrawingRect(b);
      offsetDescendantRectToMyCoords(localView2, b);
      a(computeScrollDeltaToGetChildRectOnScreen(b));
      localView2.requestFocus(paramInt);
    }
    else
    {
      int i1;
      if ((paramInt == 33) && (getScrollY() < i2))
      {
        i1 = getScrollY();
      }
      else
      {
        i1 = i2;
        if (paramInt == 130)
        {
          i1 = i2;
          if (getChildCount() > 0)
          {
            localView2 = getChildAt(0);
            FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView2.getLayoutParams();
            i1 = Math.min(localView2.getBottom() + bottomMargin - (getScrollY() + getHeight() - getPaddingBottom()), i2);
          }
        }
      }
      if (i1 == 0) {
        return false;
      }
      if (paramInt != 130) {
        i1 = -i1;
      }
      a(i1);
    }
    if ((localView1 != null) && (localView1.isFocused()) && (a(localView1)))
    {
      paramInt = getDescendantFocusability();
      setDescendantFocusability(131072);
      requestFocus();
      setDescendantFocusability(paramInt);
    }
    return true;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeHorizontalScrollExtent()
  {
    return super.computeHorizontalScrollExtent();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeHorizontalScrollOffset()
  {
    return super.computeHorizontalScrollOffset();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeHorizontalScrollRange()
  {
    return super.computeHorizontalScrollRange();
  }
  
  public void computeScroll()
  {
    if (c.computeScrollOffset())
    {
      c.getCurrX();
      int i3 = c.getCurrY();
      int i2 = i3 - u;
      int i1 = i2;
      if (dispatchNestedPreScroll(0, i2, s, null, 1)) {
        i1 = i2 - s[1];
      }
      if (i1 != 0)
      {
        i2 = getScrollRange();
        int i4 = getScrollY();
        a(0, i1, getScrollX(), i4, 0, i2, 0, 0, false);
        int i5 = getScrollY() - i4;
        if (!dispatchNestedScroll(0, i5, 0, i1 - i5, null, 1))
        {
          i1 = getOverScrollMode();
          if ((i1 != 0) && ((i1 != 1) || (i2 <= 0))) {
            i1 = 0;
          } else {
            i1 = 1;
          }
          if (i1 != 0)
          {
            g();
            if ((i3 <= 0) && (i4 > 0)) {
              d.onAbsorb((int)c.getCurrVelocity());
            } else if ((i3 >= i2) && (i4 < i2)) {
              e.onAbsorb((int)c.getCurrVelocity());
            }
          }
        }
      }
      u = i3;
      ViewCompat.postInvalidateOnAnimation(this);
      return;
    }
    if (hasNestedScrollingParent(1)) {
      stopNestedScroll(1);
    }
    u = 0;
  }
  
  protected int computeScrollDeltaToGetChildRectOnScreen(Rect paramRect)
  {
    int i1 = getChildCount();
    int i4 = 0;
    if (i1 == 0) {
      return 0;
    }
    int i5 = getHeight();
    int i2 = getScrollY();
    int i3 = i2 + i5;
    int i6 = getVerticalFadingEdgeLength();
    i1 = i2;
    if (top > 0) {
      i1 = i2 + i6;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    if (bottom < localView.getHeight() + topMargin + bottomMargin) {
      i2 = i3 - i6;
    } else {
      i2 = i3;
    }
    if ((bottom > i2) && (top > i1))
    {
      if (paramRect.height() > i5) {
        i1 = top - i1 + 0;
      } else {
        i1 = bottom - i2 + 0;
      }
      return Math.min(i1, localView.getBottom() + bottomMargin - i3);
    }
    i3 = i4;
    if (top < i1)
    {
      i3 = i4;
      if (bottom < i2)
      {
        if (paramRect.height() > i5) {
          i1 = 0 - (i2 - bottom);
        } else {
          i1 = 0 - (i1 - top);
        }
        i3 = Math.max(i1, -getScrollY());
      }
    }
    return i3;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeVerticalScrollExtent()
  {
    return super.computeVerticalScrollExtent();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeVerticalScrollOffset()
  {
    return Math.max(0, super.computeVerticalScrollOffset());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int computeVerticalScrollRange()
  {
    int i2 = getChildCount();
    int i1 = getHeight() - getPaddingBottom() - getPaddingTop();
    if (i2 == 0) {
      return i1;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    i2 = localView.getBottom() + bottomMargin;
    int i3 = getScrollY();
    int i4 = Math.max(0, i2 - i1);
    if (i3 < 0) {
      return i2 - i3;
    }
    i1 = i2;
    if (i3 > i4) {
      i1 = i2 + (i3 - i4);
    }
    return i1;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return z.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return z.dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, 0);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
  {
    return z.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, 0);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt, int paramInt5)
  {
    return z.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt, paramInt5);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (d != null)
    {
      int i8 = getScrollY();
      boolean bool = d.isFinished();
      int i5 = 0;
      int i9;
      int i1;
      int i7;
      int i6;
      int i2;
      int i4;
      int i3;
      if (!bool)
      {
        i9 = paramCanvas.save();
        i1 = getWidth();
        i7 = getHeight();
        i6 = Math.min(0, i8);
        if ((Build.VERSION.SDK_INT >= 21) && (!getClipToPadding()))
        {
          i2 = 0;
        }
        else
        {
          i1 -= getPaddingLeft() + getPaddingRight();
          i2 = getPaddingLeft() + 0;
        }
        i4 = i7;
        i3 = i6;
        if (Build.VERSION.SDK_INT >= 21)
        {
          i4 = i7;
          i3 = i6;
          if (getClipToPadding())
          {
            i4 = i7 - (getPaddingTop() + getPaddingBottom());
            i3 = i6 + getPaddingTop();
          }
        }
        paramCanvas.translate(i2, i3);
        d.setSize(i1, i4);
        if (d.draw(paramCanvas)) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        paramCanvas.restoreToCount(i9);
      }
      if (!e.isFinished())
      {
        i9 = paramCanvas.save();
        i3 = getWidth();
        i6 = getHeight();
        i7 = Math.max(getScrollRange(), i8) + i6;
        if (Build.VERSION.SDK_INT >= 21)
        {
          i2 = i5;
          i1 = i3;
          if (!getClipToPadding()) {}
        }
        else
        {
          i1 = i3 - (getPaddingLeft() + getPaddingRight());
          i2 = 0 + getPaddingLeft();
        }
        i4 = i7;
        i3 = i6;
        if (Build.VERSION.SDK_INT >= 21)
        {
          i4 = i7;
          i3 = i6;
          if (getClipToPadding())
          {
            i3 = i6 - (getPaddingTop() + getPaddingBottom());
            i4 = i7 - getPaddingBottom();
          }
        }
        paramCanvas.translate(i2 - i1, i4);
        paramCanvas.rotate(180.0F, i1, 0.0F);
        e.setSize(i1, i3);
        if (e.draw(paramCanvas)) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        paramCanvas.restoreToCount(i9);
      }
    }
  }
  
  public boolean executeKeyEvent(@NonNull KeyEvent paramKeyEvent)
  {
    b.setEmpty();
    boolean bool1 = b();
    boolean bool2 = false;
    int i1 = 130;
    if (!bool1)
    {
      if ((isFocused()) && (paramKeyEvent.getKeyCode() != 4))
      {
        View localView = findFocus();
        paramKeyEvent = localView;
        if (localView == this) {
          paramKeyEvent = null;
        }
        paramKeyEvent = FocusFinder.getInstance().findNextFocus(this, paramKeyEvent, 130);
        bool1 = bool2;
        if (paramKeyEvent != null)
        {
          bool1 = bool2;
          if (paramKeyEvent != this)
          {
            bool1 = bool2;
            if (paramKeyEvent.requestFocus(130)) {
              bool1 = true;
            }
          }
        }
        return bool1;
      }
      return false;
    }
    if (paramKeyEvent.getAction() == 0)
    {
      int i2 = paramKeyEvent.getKeyCode();
      if (i2 != 62)
      {
        switch (i2)
        {
        default: 
          return false;
        case 20: 
          if (!paramKeyEvent.isAltPressed()) {
            return arrowScroll(130);
          }
          return fullScroll(130);
        }
        if (!paramKeyEvent.isAltPressed()) {
          return arrowScroll(33);
        }
        return fullScroll(33);
      }
      if (paramKeyEvent.isShiftPressed()) {
        i1 = 33;
      }
      pageScroll(i1);
    }
    return false;
  }
  
  public void fling(int paramInt)
  {
    if (getChildCount() > 0)
    {
      startNestedScroll(2, 1);
      c.fling(getScrollX(), getScrollY(), 0, paramInt, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
      u = getScrollY();
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public boolean fullScroll(int paramInt)
  {
    int i1;
    if (paramInt == 130) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = getHeight();
    b.top = 0;
    b.bottom = i2;
    if (i1 != 0)
    {
      i1 = getChildCount();
      if (i1 > 0)
      {
        View localView = getChildAt(i1 - 1);
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
        b.bottom = (localView.getBottom() + bottomMargin + getPaddingBottom());
        b.top = (b.bottom - i2);
      }
    }
    return a(paramInt, b.top, b.bottom);
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getHeight();
    int i3 = getPaddingBottom();
    i2 = localView.getBottom() + bottomMargin - getScrollY() - (i2 - i3);
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public int getMaxScrollAmount()
  {
    return (int)(getHeight() * 0.5F);
  }
  
  public int getNestedScrollAxes()
  {
    return y.getNestedScrollAxes();
  }
  
  int getScrollRange()
  {
    int i2 = getChildCount();
    int i1 = 0;
    if (i2 > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      i1 = Math.max(0, localView.getHeight() + topMargin + bottomMargin - (getHeight() - getPaddingTop() - getPaddingBottom()));
    }
    return i1;
  }
  
  protected float getTopFadingEdgeStrength()
  {
    if (getChildCount() == 0) {
      return 0.0F;
    }
    int i1 = getVerticalFadingEdgeLength();
    int i2 = getScrollY();
    if (i2 < i1) {
      return i2 / i1;
    }
    return 1.0F;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return hasNestedScrollingParent(0);
  }
  
  public boolean hasNestedScrollingParent(int paramInt)
  {
    return z.hasNestedScrollingParent(paramInt);
  }
  
  public boolean isFillViewport()
  {
    return l;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return z.isNestedScrollingEnabled();
  }
  
  public boolean isSmoothScrollingEnabled()
  {
    return m;
  }
  
  protected void measureChild(View paramView, int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight(), width), View.MeasureSpec.makeMeasureSpec(0, 0));
  }
  
  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + paramInt2, width), View.MeasureSpec.makeMeasureSpec(topMargin + bottomMargin, 0));
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    h = false;
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getSource() & 0x2) != 0)
    {
      if (paramMotionEvent.getAction() != 8) {
        return false;
      }
      if (!j)
      {
        float f1 = paramMotionEvent.getAxisValue(9);
        if (f1 != 0.0F)
        {
          int i1 = (int)(f1 * getVerticalScrollFactorCompat());
          int i2 = getScrollRange();
          int i4 = getScrollY();
          int i3 = i4 - i1;
          if (i3 < 0)
          {
            i1 = 0;
          }
          else
          {
            i1 = i3;
            if (i3 > i2) {
              i1 = i2;
            }
          }
          if (i1 != i4)
          {
            super.scrollTo(getScrollX(), i1);
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 2) && (j)) {
      return true;
    }
    i1 &= 0xFF;
    if (i1 != 6) {
      switch (i1)
      {
      default: 
        break;
      case 2: 
        i1 = q;
        if (i1 == -1) {
          break;
        }
        int i2 = paramMotionEvent.findPointerIndex(i1);
        if (i2 == -1)
        {
          paramMotionEvent = new StringBuilder();
          paramMotionEvent.append("Invalid pointerId=");
          paramMotionEvent.append(i1);
          paramMotionEvent.append(" in onInterceptTouchEvent");
          Log.e("NestedScrollView", paramMotionEvent.toString());
        }
        else
        {
          i1 = (int)paramMotionEvent.getY(i2);
          if ((Math.abs(i1 - f) > n) && ((0x2 & getNestedScrollAxes()) == 0))
          {
            j = true;
            f = i1;
            d();
            k.addMovement(paramMotionEvent);
            t = 0;
            paramMotionEvent = getParent();
            if (paramMotionEvent != null) {
              paramMotionEvent.requestDisallowInterceptTouchEvent(true);
            }
          }
        }
        break;
      case 1: 
      case 3: 
        j = false;
        q = -1;
        e();
        if (c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        stopNestedScroll(0);
        break;
      case 0: 
        i1 = (int)paramMotionEvent.getY();
        if (!a((int)paramMotionEvent.getX(), i1))
        {
          j = false;
          e();
        }
        else
        {
          f = i1;
          q = paramMotionEvent.getPointerId(0);
          c();
          k.addMovement(paramMotionEvent);
          c.computeScrollOffset();
          j = (c.isFinished() ^ true);
          startNestedScroll(2, 0);
        }
        break;
      }
    } else {
      a(paramMotionEvent);
    }
    return j;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt1 = 0;
    g = false;
    if ((i != null) && (a(i, this))) {
      b(i);
    }
    i = null;
    if (!h)
    {
      if (v != null)
      {
        scrollTo(getScrollX(), v.a);
        v = null;
      }
      if (getChildCount() > 0)
      {
        View localView = getChildAt(0);
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
        paramInt1 = localView.getMeasuredHeight() + topMargin + bottomMargin;
      }
      int i1 = getPaddingTop();
      int i2 = getPaddingBottom();
      paramInt3 = getScrollY();
      paramInt1 = b(paramInt3, paramInt4 - paramInt2 - i1 - i2, paramInt1);
      if (paramInt1 != paramInt3) {
        scrollTo(getScrollX(), paramInt1);
      }
    }
    scrollTo(getScrollX(), getScrollY());
    h = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!l) {
      return;
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      return;
    }
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      paramInt2 = localView.getMeasuredHeight();
      int i1 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom() - topMargin - bottomMargin;
      if (paramInt2 < i1) {
        localView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin, width), View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      b((int)paramFloat2);
      return true;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return dispatchNestedPreFling(paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt, 0);
  }
  
  public void onNestedPreScroll(@NonNull View paramView, int paramInt1, int paramInt2, @NonNull int[] paramArrayOfInt, int paramInt3)
  {
    dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt, null, paramInt3);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, 0);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt1 = getScrollY();
    scrollBy(0, paramInt4);
    paramInt1 = getScrollY() - paramInt1;
    dispatchNestedScroll(0, paramInt1, 0, paramInt4 - paramInt1, null, paramInt5);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    onNestedScrollAccepted(paramView1, paramView2, paramInt, 0);
  }
  
  public void onNestedScrollAccepted(@NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
  {
    y.onNestedScrollAccepted(paramView1, paramView2, paramInt1, paramInt2);
    startNestedScroll(2, paramInt2);
  }
  
  protected void onOverScrolled(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.scrollTo(paramInt1, paramInt2);
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i1;
    if (paramInt == 2)
    {
      i1 = 130;
    }
    else
    {
      i1 = paramInt;
      if (paramInt == 1) {
        i1 = 33;
      }
    }
    View localView;
    if (paramRect == null) {
      localView = FocusFinder.getInstance().findNextFocus(this, null, i1);
    } else {
      localView = FocusFinder.getInstance().findNextFocusFromRect(this, paramRect, i1);
    }
    if (localView == null) {
      return false;
    }
    if (a(localView)) {
      return false;
    }
    return localView.requestFocus(i1, paramRect);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof b))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (b)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    v = paramParcelable;
    requestLayout();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    b localB = new b(super.onSaveInstanceState());
    a = getScrollY();
    return localB;
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (B != null) {
      B.onScrollChange(this, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = findFocus();
    if (localView != null)
    {
      if (this == localView) {
        return;
      }
      if (a(localView, 0, paramInt4))
      {
        localView.getDrawingRect(b);
        offsetDescendantRectToMyCoords(localView, b);
        a(computeScrollDeltaToGetChildRectOnScreen(b));
      }
      return;
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return onStartNestedScroll(paramView1, paramView2, paramInt, 0);
  }
  
  public boolean onStartNestedScroll(@NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
  {
    return (paramInt1 & 0x2) != 0;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    onStopNestedScroll(paramView, 0);
  }
  
  public void onStopNestedScroll(@NonNull View paramView, int paramInt)
  {
    y.onStopNestedScroll(paramView, paramInt);
    stopNestedScroll(paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    d();
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 == 0) {
      t = 0;
    }
    localMotionEvent.offsetLocation(0.0F, t);
    ViewParent localViewParent;
    switch (i1)
    {
    case 4: 
    default: 
      break;
    case 6: 
      a(paramMotionEvent);
      f = ((int)paramMotionEvent.getY(paramMotionEvent.findPointerIndex(q)));
      break;
    case 5: 
      i1 = paramMotionEvent.getActionIndex();
      f = ((int)paramMotionEvent.getY(i1));
      q = paramMotionEvent.getPointerId(i1);
      break;
    case 3: 
      if ((j) && (getChildCount() > 0) && (c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange()))) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      q = -1;
      f();
      break;
    case 2: 
      int i3 = paramMotionEvent.findPointerIndex(q);
      if (i3 == -1)
      {
        paramMotionEvent = new StringBuilder();
        paramMotionEvent.append("Invalid pointerId=");
        paramMotionEvent.append(q);
        paramMotionEvent.append(" in onTouchEvent");
        Log.e("NestedScrollView", paramMotionEvent.toString());
      }
      else
      {
        int i4 = (int)paramMotionEvent.getY(i3);
        i1 = f - i4;
        int i2 = i1;
        if (dispatchNestedPreScroll(0, i1, s, r, 0))
        {
          i2 = i1 - s[1];
          localMotionEvent.offsetLocation(0.0F, r[1]);
          t += r[1];
        }
        i1 = i2;
        if (!j)
        {
          i1 = i2;
          if (Math.abs(i2) > n)
          {
            localViewParent = getParent();
            if (localViewParent != null) {
              localViewParent.requestDisallowInterceptTouchEvent(true);
            }
            j = true;
            if (i2 > 0) {
              i1 = i2 - n;
            } else {
              i1 = i2 + n;
            }
          }
        }
        if (j)
        {
          f = (i4 - r[1]);
          int i5 = getScrollY();
          i4 = getScrollRange();
          i2 = getOverScrollMode();
          if ((i2 != 0) && ((i2 != 1) || (i4 <= 0))) {
            i2 = 0;
          } else {
            i2 = 1;
          }
          if ((a(0, i1, 0, getScrollY(), 0, i4, 0, 0, true)) && (!hasNestedScrollingParent(0))) {
            k.clear();
          }
          int i6 = getScrollY() - i5;
          if (dispatchNestedScroll(0, i6, 0, i1 - i6, r, 0))
          {
            f -= r[1];
            localMotionEvent.offsetLocation(0.0F, r[1]);
            t += r[1];
          }
          else if (i2 != 0)
          {
            g();
            i2 = i5 + i1;
            if (i2 < 0)
            {
              EdgeEffectCompat.onPull(d, i1 / getHeight(), paramMotionEvent.getX(i3) / getWidth());
              if (!e.isFinished()) {
                e.onRelease();
              }
            }
            else if (i2 > i4)
            {
              EdgeEffectCompat.onPull(e, i1 / getHeight(), 1.0F - paramMotionEvent.getX(i3) / getWidth());
              if (!d.isFinished()) {
                d.onRelease();
              }
            }
            if ((d != null) && ((!d.isFinished()) || (!e.isFinished()))) {
              ViewCompat.postInvalidateOnAnimation(this);
            }
          }
        }
      }
      break;
    case 1: 
      paramMotionEvent = k;
      paramMotionEvent.computeCurrentVelocity(1000, p);
      i1 = (int)paramMotionEvent.getYVelocity(q);
      if (Math.abs(i1) > o) {
        b(-i1);
      } else if (c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      q = -1;
      f();
      break;
    case 0: 
      if (getChildCount() == 0) {
        return false;
      }
      boolean bool = c.isFinished() ^ true;
      j = bool;
      if (bool)
      {
        localViewParent = getParent();
        if (localViewParent != null) {
          localViewParent.requestDisallowInterceptTouchEvent(true);
        }
      }
      if (!c.isFinished()) {
        c.abortAnimation();
      }
      f = ((int)paramMotionEvent.getY());
      q = paramMotionEvent.getPointerId(0);
      startNestedScroll(2, 0);
    }
    if (k != null) {
      k.addMovement(localMotionEvent);
    }
    localMotionEvent.recycle();
    return true;
  }
  
  public boolean pageScroll(int paramInt)
  {
    int i1;
    if (paramInt == 130) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i2 = getHeight();
    if (i1 != 0)
    {
      b.top = (getScrollY() + i2);
      i1 = getChildCount();
      if (i1 > 0)
      {
        View localView = getChildAt(i1 - 1);
        FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
        i1 = localView.getBottom() + bottomMargin + getPaddingBottom();
        if (b.top + i2 > i1) {
          b.top = (i1 - i2);
        }
      }
    }
    else
    {
      b.top = (getScrollY() - i2);
      if (b.top < 0) {
        b.top = 0;
      }
    }
    b.bottom = (b.top + i2);
    return a(paramInt, b.top, b.bottom);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    if (!g) {
      b(paramView2);
    } else {
      i = paramView2;
    }
    super.requestChildFocus(paramView1, paramView2);
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    paramRect.offset(paramView.getLeft() - paramView.getScrollX(), paramView.getTop() - paramView.getScrollY());
    return a(paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    if (paramBoolean) {
      e();
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    g = true;
    super.requestLayout();
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      int i7 = getWidth();
      int i8 = getPaddingLeft();
      int i9 = getPaddingRight();
      int i10 = localView.getWidth();
      int i11 = leftMargin;
      int i12 = rightMargin;
      int i1 = getHeight();
      int i2 = getPaddingTop();
      int i3 = getPaddingBottom();
      int i4 = localView.getHeight();
      int i5 = topMargin;
      int i6 = bottomMargin;
      paramInt1 = b(paramInt1, i7 - i8 - i9, i10 + i11 + i12);
      paramInt2 = b(paramInt2, i1 - i2 - i3, i4 + i5 + i6);
      if ((paramInt1 != getScrollX()) || (paramInt2 != getScrollY())) {
        super.scrollTo(paramInt1, paramInt2);
      }
    }
  }
  
  public void setFillViewport(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      requestLayout();
    }
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    z.setNestedScrollingEnabled(paramBoolean);
  }
  
  public void setOnScrollChangeListener(@Nullable OnScrollChangeListener paramOnScrollChangeListener)
  {
    B = paramOnScrollChangeListener;
  }
  
  public void setSmoothScrollingEnabled(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return true;
  }
  
  public final void smoothScrollBy(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0) {
      return;
    }
    if (AnimationUtils.currentAnimationTimeMillis() - a > 250L)
    {
      View localView = getChildAt(0);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      int i1 = localView.getHeight();
      int i2 = topMargin;
      int i3 = bottomMargin;
      int i4 = getHeight();
      int i5 = getPaddingTop();
      int i6 = getPaddingBottom();
      paramInt1 = getScrollY();
      paramInt2 = Math.max(0, Math.min(paramInt2 + paramInt1, Math.max(0, i1 + i2 + i3 - (i4 - i5 - i6))));
      u = getScrollY();
      c.startScroll(getScrollX(), paramInt1, 0, paramInt2 - paramInt1);
      ViewCompat.postInvalidateOnAnimation(this);
    }
    else
    {
      if (!c.isFinished()) {
        c.abortAnimation();
      }
      scrollBy(paramInt1, paramInt2);
    }
    a = AnimationUtils.currentAnimationTimeMillis();
  }
  
  public final void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollBy(paramInt1 - getScrollX(), paramInt2 - getScrollY());
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return startNestedScroll(paramInt, 0);
  }
  
  public boolean startNestedScroll(int paramInt1, int paramInt2)
  {
    return z.startNestedScroll(paramInt1, paramInt2);
  }
  
  public void stopNestedScroll()
  {
    stopNestedScroll(0);
  }
  
  public void stopNestedScroll(int paramInt)
  {
    z.stopNestedScroll(paramInt);
  }
  
  public static abstract interface OnScrollChangeListener
  {
    public abstract void onScrollChange(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
  
  static class a
    extends AccessibilityDelegateCompat
  {
    a() {}
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramView = (NestedScrollView)paramView;
      paramAccessibilityEvent.setClassName(ScrollView.class.getName());
      boolean bool;
      if (paramView.getScrollRange() > 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramAccessibilityEvent.setScrollable(bool);
      paramAccessibilityEvent.setScrollX(paramView.getScrollX());
      paramAccessibilityEvent.setScrollY(paramView.getScrollY());
      AccessibilityRecordCompat.setMaxScrollX(paramAccessibilityEvent, paramView.getScrollX());
      AccessibilityRecordCompat.setMaxScrollY(paramAccessibilityEvent, paramView.getScrollRange());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      paramView = (NestedScrollView)paramView;
      paramAccessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
      if (paramView.isEnabled())
      {
        int i = paramView.getScrollRange();
        if (i > 0)
        {
          paramAccessibilityNodeInfoCompat.setScrollable(true);
          if (paramView.getScrollY() > 0) {
            paramAccessibilityNodeInfoCompat.addAction(8192);
          }
          if (paramView.getScrollY() < i) {
            paramAccessibilityNodeInfoCompat.addAction(4096);
          }
        }
      }
    }
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        return true;
      }
      paramView = (NestedScrollView)paramView;
      if (!paramView.isEnabled()) {
        return false;
      }
      if (paramInt != 4096)
      {
        if (paramInt != 8192) {
          return false;
        }
        paramInt = paramView.getHeight();
        i = paramView.getPaddingBottom();
        j = paramView.getPaddingTop();
        paramInt = Math.max(paramView.getScrollY() - (paramInt - i - j), 0);
        if (paramInt != paramView.getScrollY())
        {
          paramView.smoothScrollTo(0, paramInt);
          return true;
        }
        return false;
      }
      paramInt = paramView.getHeight();
      int i = paramView.getPaddingBottom();
      int j = paramView.getPaddingTop();
      paramInt = Math.min(paramView.getScrollY() + (paramInt - i - j), paramView.getScrollRange());
      if (paramInt != paramView.getScrollY())
      {
        paramView.smoothScrollTo(0, paramInt);
        return true;
      }
      return false;
    }
  }
  
  static class b
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator()
    {
      public NestedScrollView.b a(Parcel paramAnonymousParcel)
      {
        return new NestedScrollView.b(paramAnonymousParcel);
      }
      
      public NestedScrollView.b[] a(int paramAnonymousInt)
      {
        return new NestedScrollView.b[paramAnonymousInt];
      }
    };
    public int a;
    
    b(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
    }
    
    b(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("HorizontalScrollView.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" scrollPosition=");
      localStringBuilder.append(a);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
    }
  }
}
