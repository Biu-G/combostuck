package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Px;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  View a;
  float b;
  int c;
  boolean d;
  final ViewDragHelper e;
  boolean f;
  final ArrayList<b> g = new ArrayList();
  private int h = -858993460;
  private int i;
  private Drawable j;
  private Drawable k;
  private final int l;
  private boolean m;
  private float n;
  private int o;
  private float p;
  private float q;
  private PanelSlideListener r;
  private boolean s = true;
  private final Rect t = new Rect();
  private Method u;
  private Field v;
  private boolean w;
  
  public SlidingPaneLayout(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingPaneLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingPaneLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = getResourcesgetDisplayMetricsdensity;
    l = ((int)(32.0F * f1 + 0.5F));
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new a());
    ViewCompat.setImportantForAccessibility(this, 1);
    e = ViewDragHelper.create(this, 0.5F, new c());
    e.setMinVelocity(f1 * 400.0F);
  }
  
  private void a(float paramFloat)
  {
    boolean bool1 = b();
    Object localObject = (LayoutParams)a.getLayoutParams();
    boolean bool2 = b;
    int i2 = 0;
    if (bool2)
    {
      if (bool1) {
        i1 = rightMargin;
      } else {
        i1 = leftMargin;
      }
      if (i1 <= 0)
      {
        i1 = 1;
        break label64;
      }
    }
    int i1 = 0;
    label64:
    int i5 = getChildCount();
    while (i2 < i5)
    {
      localObject = getChildAt(i2);
      if (localObject != a)
      {
        int i3 = (int)((1.0F - n) * o);
        n = paramFloat;
        int i4 = i3 - (int)((1.0F - paramFloat) * o);
        i3 = i4;
        if (bool1) {
          i3 = -i4;
        }
        ((View)localObject).offsetLeftAndRight(i3);
        if (i1 != 0)
        {
          float f1;
          if (bool1) {
            f1 = n - 1.0F;
          } else {
            f1 = 1.0F - n;
          }
          a((View)localObject, f1, i);
        }
      }
      i2 += 1;
    }
  }
  
  private void a(View paramView, float paramFloat, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      int i1 = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (c == null) {
        c = new Paint();
      }
      c.setColorFilter(new PorterDuffColorFilter(i1 << 24 | paramInt & 0xFFFFFF, PorterDuff.Mode.SRC_OVER));
      if (paramView.getLayerType() != 2) {
        paramView.setLayerType(2, c);
      }
      e(paramView);
      return;
    }
    if (paramView.getLayerType() != 0)
    {
      if (c != null) {
        c.setColorFilter(null);
      }
      paramView = new b(paramView);
      g.add(paramView);
      ViewCompat.postOnAnimation(this, paramView);
    }
  }
  
  private boolean a(View paramView, int paramInt)
  {
    if ((!s) && (!a(0.0F, paramInt))) {
      return false;
    }
    f = false;
    return true;
  }
  
  private boolean b(View paramView, int paramInt)
  {
    if ((!s) && (!a(1.0F, paramInt))) {
      return false;
    }
    f = true;
    return true;
  }
  
  private static boolean g(View paramView)
  {
    if (paramView.isOpaque()) {
      return true;
    }
    if (Build.VERSION.SDK_INT >= 18) {
      return false;
    }
    paramView = paramView.getBackground();
    if (paramView != null) {
      return paramView.getOpacity() == -1;
    }
    return false;
  }
  
  void a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i1 += 1;
    }
  }
  
  void a(int paramInt)
  {
    if (a == null)
    {
      b = 0.0F;
      return;
    }
    boolean bool = b();
    LayoutParams localLayoutParams = (LayoutParams)a.getLayoutParams();
    int i2 = a.getWidth();
    int i1 = paramInt;
    if (bool) {
      i1 = getWidth() - paramInt - i2;
    }
    if (bool) {
      paramInt = getPaddingRight();
    } else {
      paramInt = getPaddingLeft();
    }
    if (bool) {
      i2 = rightMargin;
    } else {
      i2 = leftMargin;
    }
    b = ((i1 - (paramInt + i2)) / c);
    if (o != 0) {
      a(b);
    }
    if (b) {
      a(a, b, h);
    }
    a(a);
  }
  
  void a(View paramView)
  {
    if (r != null) {
      r.onPanelSlide(paramView, b);
    }
  }
  
  boolean a(float paramFloat, int paramInt)
  {
    if (!m) {
      return false;
    }
    boolean bool = b();
    LayoutParams localLayoutParams = (LayoutParams)a.getLayoutParams();
    if (bool)
    {
      paramInt = getPaddingRight();
      int i1 = rightMargin;
      int i2 = a.getWidth();
      paramInt = (int)(getWidth() - (paramInt + i1 + paramFloat * c + i2));
    }
    else
    {
      paramInt = (int)(getPaddingLeft() + leftMargin + paramFloat * c);
    }
    if (e.smoothSlideViewTo(a, paramInt, a.getTop()))
    {
      a();
      ViewCompat.postInvalidateOnAnimation(this);
      return true;
    }
    return false;
  }
  
  void b(View paramView)
  {
    if (r != null) {
      r.onPanelOpened(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  boolean b()
  {
    return ViewCompat.getLayoutDirection(this) == 1;
  }
  
  void c(View paramView)
  {
    if (r != null) {
      r.onPanelClosed(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i2 = paramView.getScrollX();
      int i3 = paramView.getScrollY();
      int i1 = localViewGroup.getChildCount() - 1;
      while (i1 >= 0)
      {
        View localView = localViewGroup.getChildAt(i1);
        int i4 = paramInt2 + i2;
        if ((i4 >= localView.getLeft()) && (i4 < localView.getRight()))
        {
          int i5 = paramInt3 + i3;
          if ((i5 >= localView.getTop()) && (i5 < localView.getBottom()) && (canScroll(localView, true, paramInt1, i4 - localView.getLeft(), i5 - localView.getTop()))) {
            return true;
          }
        }
        i1 -= 1;
      }
    }
    if (paramBoolean)
    {
      if (!b()) {
        paramInt1 = -paramInt1;
      }
      if (paramView.canScrollHorizontally(paramInt1)) {
        return true;
      }
    }
    return false;
  }
  
  @Deprecated
  public boolean canSlide()
  {
    return m;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public boolean closePane()
  {
    return a(a, 0);
  }
  
  public void computeScroll()
  {
    if (e.continueSettling(true))
    {
      if (!m)
      {
        e.abort();
        return;
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  void d(View paramView)
  {
    boolean bool = b();
    int i1;
    if (bool) {
      i1 = getWidth() - getPaddingRight();
    } else {
      i1 = getPaddingLeft();
    }
    int i2;
    if (bool) {
      i2 = getPaddingLeft();
    } else {
      i2 = getWidth() - getPaddingRight();
    }
    int i9 = getPaddingTop();
    int i10 = getHeight();
    int i11 = getPaddingBottom();
    int i3;
    int i4;
    int i5;
    int i6;
    if ((paramView != null) && (g(paramView)))
    {
      i3 = paramView.getLeft();
      i4 = paramView.getRight();
      i5 = paramView.getTop();
      i6 = paramView.getBottom();
    }
    else
    {
      i3 = 0;
      i4 = 0;
      i5 = 0;
      i6 = 0;
    }
    int i12 = getChildCount();
    int i7 = 0;
    while (i7 < i12)
    {
      View localView = getChildAt(i7);
      if (localView == paramView) {
        return;
      }
      if (localView.getVisibility() != 8)
      {
        if (bool) {
          i8 = i2;
        } else {
          i8 = i1;
        }
        int i13 = Math.max(i8, localView.getLeft());
        int i14 = Math.max(i9, localView.getTop());
        if (bool) {
          i8 = i1;
        } else {
          i8 = i2;
        }
        int i8 = Math.min(i8, localView.getRight());
        int i15 = Math.min(i10 - i11, localView.getBottom());
        if ((i13 >= i3) && (i14 >= i5) && (i8 <= i4) && (i15 <= i6)) {
          i8 = 4;
        } else {
          i8 = 0;
        }
        localView.setVisibility(i8);
      }
      i7 += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    if (b()) {
      localDrawable = k;
    } else {
      localDrawable = j;
    }
    View localView;
    if (getChildCount() > 1) {
      localView = getChildAt(1);
    } else {
      localView = null;
    }
    if (localView != null)
    {
      if (localDrawable == null) {
        return;
      }
      int i4 = localView.getTop();
      int i5 = localView.getBottom();
      int i3 = localDrawable.getIntrinsicWidth();
      int i1;
      int i2;
      if (b())
      {
        i1 = localView.getRight();
        i2 = i3 + i1;
      }
      else
      {
        i2 = localView.getLeft();
        i1 = i2;
        i3 = i2 - i3;
        i2 = i1;
        i1 = i3;
      }
      localDrawable.setBounds(i1, i4, i2, i5);
      localDrawable.draw(paramCanvas);
      return;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = paramCanvas.save();
    if ((m) && (!a) && (a != null))
    {
      paramCanvas.getClipBounds(t);
      if (b()) {
        t.left = Math.max(t.left, a.getRight());
      } else {
        t.right = Math.min(t.right, a.getLeft());
      }
      paramCanvas.clipRect(t);
    }
    boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
    paramCanvas.restoreToCount(i1);
    return bool;
  }
  
  void e(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      ViewCompat.setLayerPaint(paramView, getLayoutParamsc);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      if (!w)
      {
        try
        {
          u = View.class.getDeclaredMethod("getDisplayList", (Class[])null);
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", localNoSuchMethodException);
        }
        try
        {
          v = View.class.getDeclaredField("mRecreateDisplayList");
          v.setAccessible(true);
        }
        catch (NoSuchFieldException localNoSuchFieldException)
        {
          Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", localNoSuchFieldException);
        }
        w = true;
      }
      if ((u != null) && (v != null))
      {
        try
        {
          v.setBoolean(paramView, true);
          u.invoke(paramView, (Object[])null);
        }
        catch (Exception localException)
        {
          Log.e("SlidingPaneLayout", "Error refreshing display list state", localException);
        }
      }
      else
      {
        paramView.invalidate();
        return;
      }
    }
    ViewCompat.postInvalidateOnAnimation(this, paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  boolean f(View paramView)
  {
    boolean bool2 = false;
    if (paramView == null) {
      return false;
    }
    paramView = (LayoutParams)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (m)
    {
      bool1 = bool2;
      if (b)
      {
        bool1 = bool2;
        if (b > 0.0F) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  @ColorInt
  public int getCoveredFadeColor()
  {
    return i;
  }
  
  @Px
  public int getParallaxDistance()
  {
    return o;
  }
  
  @ColorInt
  public int getSliderFadeColor()
  {
    return h;
  }
  
  public boolean isOpen()
  {
    return (!m) || (b == 1.0F);
  }
  
  public boolean isSlideable()
  {
    return m;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    s = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    s = true;
    int i2 = g.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((b)g.get(i1)).run();
      i1 += 1;
    }
    g.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    boolean bool2 = m;
    boolean bool1 = true;
    if ((!bool2) && (i1 == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        f = (e.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()) ^ true);
      }
    }
    if ((m) && ((!d) || (i1 == 0)))
    {
      if ((i1 != 3) && (i1 != 1))
      {
        float f2;
        float f1;
        if (i1 != 0)
        {
          if (i1 == 2)
          {
            f2 = paramMotionEvent.getX();
            f1 = paramMotionEvent.getY();
            f2 = Math.abs(f2 - p);
            f1 = Math.abs(f1 - q);
            if ((f2 > e.getTouchSlop()) && (f1 > f2))
            {
              e.cancel();
              d = true;
              return false;
            }
          }
        }
        else
        {
          d = false;
          f1 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          p = f1;
          q = f2;
          if ((e.isViewUnder(a, (int)f1, (int)f2)) && (f(a)))
          {
            i1 = 1;
            break label247;
          }
        }
        i1 = 0;
        label247:
        if (!e.shouldInterceptTouchEvent(paramMotionEvent))
        {
          if (i1 != 0) {
            return true;
          }
          bool1 = false;
        }
        return bool1;
      }
      e.cancel();
      return false;
    }
    e.cancel();
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = b();
    if (bool) {
      e.setEdgeTrackingEnabled(2);
    } else {
      e.setEdgeTrackingEnabled(1);
    }
    int i3 = paramInt3 - paramInt1;
    if (bool) {
      paramInt1 = getPaddingRight();
    } else {
      paramInt1 = getPaddingLeft();
    }
    if (bool) {
      paramInt3 = getPaddingLeft();
    } else {
      paramInt3 = getPaddingRight();
    }
    int i5 = getPaddingTop();
    int i4 = getChildCount();
    if (s)
    {
      float f1;
      if ((m) && (f)) {
        f1 = 1.0F;
      } else {
        f1 = 0.0F;
      }
      b = f1;
    }
    paramInt2 = paramInt1;
    paramInt4 = 0;
    while (paramInt4 < i4)
    {
      View localView = getChildAt(paramInt4);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i6 = localView.getMeasuredWidth();
        int i2;
        if (a)
        {
          i1 = leftMargin;
          int i7 = rightMargin;
          i2 = i3 - paramInt3;
          i7 = Math.min(paramInt1, i2 - l) - paramInt2 - (i1 + i7);
          c = i7;
          if (bool) {
            i1 = rightMargin;
          } else {
            i1 = leftMargin;
          }
          if (paramInt2 + i1 + i7 + i6 / 2 > i2) {
            paramBoolean = true;
          } else {
            paramBoolean = false;
          }
          b = paramBoolean;
          i2 = (int)(i7 * b);
          paramInt2 = i1 + i2 + paramInt2;
          b = (i2 / c);
        }
        else
        {
          if ((m) && (o != 0))
          {
            i1 = (int)((1.0F - b) * o);
            paramInt2 = paramInt1;
            break label354;
          }
          paramInt2 = paramInt1;
        }
        int i1 = 0;
        label354:
        if (bool)
        {
          i2 = i3 - paramInt2 + i1;
          i1 = i2 - i6;
        }
        else
        {
          i1 = paramInt2 - i1;
          i2 = i1 + i6;
        }
        localView.layout(i1, i5, i2, localView.getMeasuredHeight() + i5);
        paramInt1 += localView.getWidth();
      }
      paramInt4 += 1;
    }
    if (s)
    {
      if (m)
      {
        if (o != 0) {
          a(b);
        }
        if (a.getLayoutParams()).b) {
          a(a, b, h);
        }
      }
      else
      {
        paramInt1 = 0;
        while (paramInt1 < i4)
        {
          a(getChildAt(paramInt1), 0.0F, h);
          paramInt1 += 1;
        }
      }
      d(a);
    }
    s = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    int i3;
    int i5;
    if (i4 != 1073741824)
    {
      if (isInEditMode())
      {
        if (i4 == Integer.MIN_VALUE)
        {
          i3 = i1;
          i5 = i2;
          paramInt1 = paramInt2;
        }
        else
        {
          i3 = i1;
          i5 = i2;
          paramInt1 = paramInt2;
          if (i4 == 0)
          {
            i3 = 300;
            i5 = i2;
            paramInt1 = paramInt2;
          }
        }
      }
      else {
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
      }
    }
    else
    {
      i3 = i1;
      i5 = i2;
      paramInt1 = paramInt2;
      if (i2 == 0) {
        if (isInEditMode())
        {
          i3 = i1;
          i5 = i2;
          paramInt1 = paramInt2;
          if (i2 == 0)
          {
            i5 = Integer.MIN_VALUE;
            paramInt1 = 300;
            i3 = i1;
          }
        }
        else
        {
          throw new IllegalStateException("Height must not be UNSPECIFIED");
        }
      }
    }
    if (i5 != Integer.MIN_VALUE)
    {
      if (i5 != 1073741824)
      {
        paramInt1 = 0;
        paramInt2 = 0;
      }
      else
      {
        paramInt1 = paramInt1 - getPaddingTop() - getPaddingBottom();
        paramInt2 = paramInt1;
      }
    }
    else
    {
      paramInt2 = paramInt1 - getPaddingTop() - getPaddingBottom();
      paramInt1 = 0;
    }
    int i7 = i3 - getPaddingLeft() - getPaddingRight();
    int i8 = getChildCount();
    if (i8 > 2) {
      Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
    }
    a = null;
    i4 = i7;
    int i6 = 0;
    boolean bool1 = false;
    float f2 = 0.0F;
    View localView;
    LayoutParams localLayoutParams;
    int i9;
    for (i1 = paramInt1; i6 < i8; i1 = paramInt1)
    {
      localView = getChildAt(i6);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      float f1;
      if (localView.getVisibility() == 8)
      {
        b = false;
        f1 = f2;
        paramInt1 = i1;
      }
      else
      {
        f1 = f2;
        if (weight > 0.0F)
        {
          f2 += weight;
          f1 = f2;
          if (width == 0)
          {
            f1 = f2;
            paramInt1 = i1;
            break label593;
          }
        }
        paramInt1 = leftMargin + rightMargin;
        if (width == -2) {
          paramInt1 = View.MeasureSpec.makeMeasureSpec(i7 - paramInt1, Integer.MIN_VALUE);
        } else if (width == -1) {
          paramInt1 = View.MeasureSpec.makeMeasureSpec(i7 - paramInt1, 1073741824);
        } else {
          paramInt1 = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
        }
        if (height == -2) {
          i2 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
        } else if (height == -1) {
          i2 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        } else {
          i2 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
        }
        localView.measure(paramInt1, i2);
        i2 = localView.getMeasuredWidth();
        i9 = localView.getMeasuredHeight();
        paramInt1 = i1;
        if (i5 == Integer.MIN_VALUE)
        {
          paramInt1 = i1;
          if (i9 > i1) {
            paramInt1 = Math.min(i9, paramInt2);
          }
        }
        i4 -= i2;
        boolean bool2;
        if (i4 < 0) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        a = bool2;
        if (a) {
          a = localView;
        }
        bool1 = bool2 | bool1;
      }
      label593:
      i6 += 1;
      f2 = f1;
    }
    if ((bool1) || (f2 > 0.0F))
    {
      i2 = i7 - l;
      i5 = 0;
      while (i5 < i8)
      {
        localView = getChildAt(i5);
        if (localView.getVisibility() != 8)
        {
          for (;;)
          {
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if (localView.getVisibility() != 8)
            {
              if ((width == 0) && (weight > 0.0F)) {
                paramInt1 = 1;
              } else {
                paramInt1 = 0;
              }
              if (paramInt1 != 0) {
                i6 = 0;
              } else {
                i6 = localView.getMeasuredWidth();
              }
              if ((bool1) && (localView != a))
              {
                if ((width < 0) && ((i6 > i2) || (weight > 0.0F)))
                {
                  if (paramInt1 != 0)
                  {
                    if (height == -2) {
                      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
                    } else if (height == -1) {
                      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
                    } else {
                      paramInt1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                    }
                  }
                  else {
                    paramInt1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                  }
                  localView.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), paramInt1);
                }
              }
              else if (weight > 0.0F)
              {
                if (width == 0)
                {
                  if (height == -2) {
                    paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
                  } else if (height == -1) {
                    paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
                  } else {
                    paramInt1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                  }
                }
                else {
                  paramInt1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                }
                if (!bool1) {
                  break;
                }
                i9 = i7 - (leftMargin + rightMargin);
                int i10 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                if (i6 != i9) {
                  localView.measure(i10, paramInt1);
                }
              }
            }
          }
          i9 = Math.max(0, i4);
          localView.measure(View.MeasureSpec.makeMeasureSpec(i6 + (int)(weight * i9 / f2), 1073741824), paramInt1);
        }
        i5 += 1;
      }
    }
    setMeasuredDimension(i3, i1 + getPaddingTop() + getPaddingBottom());
    m = bool1;
    if ((e.getViewDragState() != 0) && (!bool1)) {
      e.abort();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof d))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (d)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a) {
      openPane();
    } else {
      closePane();
    }
    f = a;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    d localD = new d(super.onSaveInstanceState());
    boolean bool;
    if (isSlideable()) {
      bool = isOpen();
    } else {
      bool = f;
    }
    a = bool;
    return localD;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      s = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!m) {
      return super.onTouchEvent(paramMotionEvent);
    }
    e.processTouchEvent(paramMotionEvent);
    float f1;
    float f2;
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      return true;
    case 1: 
      if (f(a))
      {
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        float f3 = f1 - p;
        float f4 = f2 - q;
        int i1 = e.getTouchSlop();
        if ((f3 * f3 + f4 * f4 < i1 * i1) && (e.isViewUnder(a, (int)f1, (int)f2)))
        {
          a(a, 0);
          return true;
        }
      }
      break;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      p = f1;
      q = f2;
    }
    return true;
  }
  
  public boolean openPane()
  {
    return b(a, 0);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!m))
    {
      boolean bool;
      if (paramView1 == a) {
        bool = true;
      } else {
        bool = false;
      }
      f = bool;
    }
  }
  
  public void setCoveredFadeColor(@ColorInt int paramInt)
  {
    i = paramInt;
  }
  
  public void setPanelSlideListener(@Nullable PanelSlideListener paramPanelSlideListener)
  {
    r = paramPanelSlideListener;
  }
  
  public void setParallaxDistance(@Px int paramInt)
  {
    o = paramInt;
    requestLayout();
  }
  
  @Deprecated
  public void setShadowDrawable(Drawable paramDrawable)
  {
    setShadowDrawableLeft(paramDrawable);
  }
  
  public void setShadowDrawableLeft(@Nullable Drawable paramDrawable)
  {
    j = paramDrawable;
  }
  
  public void setShadowDrawableRight(@Nullable Drawable paramDrawable)
  {
    k = paramDrawable;
  }
  
  @Deprecated
  public void setShadowResource(@DrawableRes int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceLeft(int paramInt)
  {
    setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setShadowResourceRight(int paramInt)
  {
    setShadowDrawableRight(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setSliderFadeColor(@ColorInt int paramInt)
  {
    h = paramInt;
  }
  
  @Deprecated
  public void smoothSlideClosed()
  {
    closePane();
  }
  
  @Deprecated
  public void smoothSlideOpen()
  {
    openPane();
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    private static final int[] d = { 16843137 };
    boolean a;
    boolean b;
    Paint c;
    public float weight = 0.0F;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, d);
      weight = paramContext.getFloat(0, 0.0F);
      paramContext.recycle();
    }
    
    public LayoutParams(@NonNull LayoutParams paramLayoutParams)
    {
      super();
      weight = weight;
    }
    
    public LayoutParams(@NonNull ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(@NonNull ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface PanelSlideListener
  {
    public abstract void onPanelClosed(@NonNull View paramView);
    
    public abstract void onPanelOpened(@NonNull View paramView);
    
    public abstract void onPanelSlide(@NonNull View paramView, float paramFloat);
  }
  
  public static class SimplePanelSlideListener
    implements SlidingPaneLayout.PanelSlideListener
  {
    public SimplePanelSlideListener() {}
    
    public void onPanelClosed(View paramView) {}
    
    public void onPanelOpened(View paramView) {}
    
    public void onPanelSlide(View paramView, float paramFloat) {}
  }
  
  class a
    extends AccessibilityDelegateCompat
  {
    private final Rect b = new Rect();
    
    a() {}
    
    private void a(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat1, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat2)
    {
      Rect localRect = b;
      paramAccessibilityNodeInfoCompat2.getBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat2.getBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setVisibleToUser(paramAccessibilityNodeInfoCompat2.isVisibleToUser());
      paramAccessibilityNodeInfoCompat1.setPackageName(paramAccessibilityNodeInfoCompat2.getPackageName());
      paramAccessibilityNodeInfoCompat1.setClassName(paramAccessibilityNodeInfoCompat2.getClassName());
      paramAccessibilityNodeInfoCompat1.setContentDescription(paramAccessibilityNodeInfoCompat2.getContentDescription());
      paramAccessibilityNodeInfoCompat1.setEnabled(paramAccessibilityNodeInfoCompat2.isEnabled());
      paramAccessibilityNodeInfoCompat1.setClickable(paramAccessibilityNodeInfoCompat2.isClickable());
      paramAccessibilityNodeInfoCompat1.setFocusable(paramAccessibilityNodeInfoCompat2.isFocusable());
      paramAccessibilityNodeInfoCompat1.setFocused(paramAccessibilityNodeInfoCompat2.isFocused());
      paramAccessibilityNodeInfoCompat1.setAccessibilityFocused(paramAccessibilityNodeInfoCompat2.isAccessibilityFocused());
      paramAccessibilityNodeInfoCompat1.setSelected(paramAccessibilityNodeInfoCompat2.isSelected());
      paramAccessibilityNodeInfoCompat1.setLongClickable(paramAccessibilityNodeInfoCompat2.isLongClickable());
      paramAccessibilityNodeInfoCompat1.addAction(paramAccessibilityNodeInfoCompat2.getActions());
      paramAccessibilityNodeInfoCompat1.setMovementGranularities(paramAccessibilityNodeInfoCompat2.getMovementGranularities());
    }
    
    public boolean a(View paramView)
    {
      return f(paramView);
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
      super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
      a(paramAccessibilityNodeInfoCompat, localAccessibilityNodeInfoCompat);
      localAccessibilityNodeInfoCompat.recycle();
      paramAccessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
      paramAccessibilityNodeInfoCompat.setSource(paramView);
      paramView = ViewCompat.getParentForAccessibility(paramView);
      if ((paramView instanceof View)) {
        paramAccessibilityNodeInfoCompat.setParent((View)paramView);
      }
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        paramView = getChildAt(i);
        if ((!a(paramView)) && (paramView.getVisibility() == 0))
        {
          ViewCompat.setImportantForAccessibility(paramView, 1);
          paramAccessibilityNodeInfoCompat.addChild(paramView);
        }
        i += 1;
      }
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (!a(paramView)) {
        return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return false;
    }
  }
  
  private class b
    implements Runnable
  {
    final View a;
    
    b(View paramView)
    {
      a = paramView;
    }
    
    public void run()
    {
      if (a.getParent() == SlidingPaneLayout.this)
      {
        a.setLayerType(0, null);
        e(a);
      }
      g.remove(this);
    }
  }
  
  private class c
    extends ViewDragHelper.Callback
  {
    c() {}
    
    public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
    {
      paramView = (SlidingPaneLayout.LayoutParams)a.getLayoutParams();
      if (b())
      {
        paramInt2 = getWidth() - (getPaddingRight() + rightMargin + a.getWidth());
        i = c;
        return Math.max(Math.min(paramInt1, paramInt2), paramInt2 - i);
      }
      paramInt2 = getPaddingLeft() + leftMargin;
      int i = c;
      return Math.min(Math.max(paramInt1, paramInt2), i + paramInt2);
    }
    
    public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
    {
      return paramView.getTop();
    }
    
    public int getViewHorizontalDragRange(View paramView)
    {
      return c;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2)
    {
      e.captureChildView(a, paramInt2);
    }
    
    public void onViewCaptured(View paramView, int paramInt)
    {
      a();
    }
    
    public void onViewDragStateChanged(int paramInt)
    {
      if (e.getViewDragState() == 0)
      {
        if (b == 0.0F)
        {
          d(a);
          c(a);
          f = false;
          return;
        }
        b(a);
        f = true;
      }
    }
    
    public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a(paramInt1);
      invalidate();
    }
    
    public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
    {
      SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
      int j;
      int i;
      if (b())
      {
        j = getPaddingRight() + rightMargin;
        if (paramFloat1 >= 0.0F)
        {
          i = j;
          if (paramFloat1 == 0.0F)
          {
            i = j;
            if (b <= 0.5F) {}
          }
        }
        else
        {
          i = j + c;
        }
        j = a.getWidth();
        i = getWidth() - i - j;
      }
      else
      {
        i = getPaddingLeft();
        j = leftMargin + i;
        boolean bool = paramFloat1 < 0.0F;
        if (!bool)
        {
          i = j;
          if (!bool)
          {
            i = j;
            if (b <= 0.5F) {}
          }
        }
        else
        {
          i = j + c;
        }
      }
      e.settleCapturedViewAt(i, paramView.getTop());
      invalidate();
    }
    
    public boolean tryCaptureView(View paramView, int paramInt)
    {
      if (d) {
        return false;
      }
      return getLayoutParamsa;
    }
  }
  
  static class d
    extends AbsSavedState
  {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public SlidingPaneLayout.d a(Parcel paramAnonymousParcel)
      {
        return new SlidingPaneLayout.d(paramAnonymousParcel, null);
      }
      
      public SlidingPaneLayout.d a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new SlidingPaneLayout.d(paramAnonymousParcel, null);
      }
      
      public SlidingPaneLayout.d[] a(int paramAnonymousInt)
      {
        return new SlidingPaneLayout.d[paramAnonymousInt];
      }
    };
    boolean a;
    
    d(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      boolean bool;
      if (paramParcel.readInt() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      a = bool;
    }
    
    d(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
}
