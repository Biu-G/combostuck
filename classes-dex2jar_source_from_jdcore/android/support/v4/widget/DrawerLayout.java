package android.support.v4.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

public class DrawerLayout
  extends ViewGroup
{
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  public static final int LOCK_MODE_UNDEFINED = 3;
  public static final int LOCK_MODE_UNLOCKED = 0;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  static final int[] a;
  static final boolean b;
  private static final int[] c;
  private static final boolean d;
  private float A;
  private Drawable B;
  private Drawable C;
  private Drawable D;
  private CharSequence E;
  private CharSequence F;
  private Object G;
  private boolean H;
  private Drawable I = null;
  private Drawable J = null;
  private Drawable K = null;
  private Drawable L = null;
  private final ArrayList<View> M;
  private Rect N;
  private Matrix O;
  private final b e = new b();
  private float f;
  private int g;
  private int h = -1728053248;
  private float i;
  private Paint j = new Paint();
  private final ViewDragHelper k;
  private final ViewDragHelper l;
  private final c m;
  private final c n;
  private int o;
  private boolean p;
  private boolean q = true;
  private int r = 3;
  private int s = 3;
  private int t = 3;
  private int u = 3;
  private boolean v;
  private boolean w;
  @Nullable
  private DrawerListener x;
  private List<DrawerListener> y;
  private float z;
  
  static
  {
    boolean bool2 = true;
    c = new int[] { 16843828 };
    a = new int[] { 16842931 };
    boolean bool1;
    if (Build.VERSION.SDK_INT >= 19) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    b = bool1;
    if (Build.VERSION.SDK_INT >= 21) {
      bool1 = bool2;
    } else {
      bool1 = false;
    }
    d = bool1;
  }
  
  public DrawerLayout(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResourcesgetDisplayMetricsdensity;
    g = ((int)(64.0F * f1 + 0.5F));
    float f2 = 400.0F * f1;
    m = new c(3);
    n = new c(5);
    k = ViewDragHelper.create(this, 1.0F, m);
    k.setEdgeTrackingEnabled(1);
    k.setMinVelocity(f2);
    m.a(k);
    l = ViewDragHelper.create(this, 1.0F, n);
    l.setEdgeTrackingEnabled(2);
    l.setMinVelocity(f2);
    n.a(l);
    setFocusableInTouchMode(true);
    ViewCompat.setImportantForAccessibility(this, 1);
    ViewCompat.setAccessibilityDelegate(this, new a());
    setMotionEventSplittingEnabled(false);
    if (ViewCompat.getFitsSystemWindows(this))
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener()
        {
          public WindowInsets onApplyWindowInsets(View paramAnonymousView, WindowInsets paramAnonymousWindowInsets)
          {
            paramAnonymousView = (DrawerLayout)paramAnonymousView;
            boolean bool;
            if (paramAnonymousWindowInsets.getSystemWindowInsetTop() > 0) {
              bool = true;
            } else {
              bool = false;
            }
            paramAnonymousView.setChildInsets(paramAnonymousWindowInsets, bool);
            return paramAnonymousWindowInsets.consumeSystemWindowInsets();
          }
        });
        setSystemUiVisibility(1280);
        paramContext = paramContext.obtainStyledAttributes(c);
      }
      try
      {
        B = paramContext.getDrawable(0);
        paramContext.recycle();
      }
      finally
      {
        paramContext.recycle();
      }
    }
    f = (f1 * 10.0F);
    M = new ArrayList();
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (((!paramBoolean) && (!f(localView))) || ((paramBoolean) && (localView == paramView))) {
        ViewCompat.setImportantForAccessibility(localView, 1);
      } else {
        ViewCompat.setImportantForAccessibility(localView, 4);
      }
      i1 += 1;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2, View paramView)
  {
    if (N == null) {
      N = new Rect();
    }
    paramView.getHitRect(N);
    return N.contains((int)paramFloat1, (int)paramFloat2);
  }
  
  private boolean a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable != null) && (DrawableCompat.isAutoMirrored(paramDrawable)))
    {
      DrawableCompat.setLayoutDirection(paramDrawable, paramInt);
      return true;
    }
    return false;
  }
  
  private boolean a(MotionEvent paramMotionEvent, View paramView)
  {
    if (!paramView.getMatrix().isIdentity())
    {
      paramMotionEvent = b(paramMotionEvent, paramView);
      bool = paramView.dispatchGenericMotionEvent(paramMotionEvent);
      paramMotionEvent.recycle();
      return bool;
    }
    float f1 = getScrollX() - paramView.getLeft();
    float f2 = getScrollY() - paramView.getTop();
    paramMotionEvent.offsetLocation(f1, f2);
    boolean bool = paramView.dispatchGenericMotionEvent(paramMotionEvent);
    paramMotionEvent.offsetLocation(-f1, -f2);
    return bool;
  }
  
  private MotionEvent b(MotionEvent paramMotionEvent, View paramView)
  {
    float f1 = getScrollX() - paramView.getLeft();
    float f2 = getScrollY() - paramView.getTop();
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent);
    paramMotionEvent.offsetLocation(f1, f2);
    paramView = paramView.getMatrix();
    if (!paramView.isIdentity())
    {
      if (O == null) {
        O = new Matrix();
      }
      paramView.invert(O);
      paramMotionEvent.transform(O);
    }
    return paramMotionEvent;
  }
  
  static String b(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private void d()
  {
    if (d) {
      return;
    }
    C = e();
    D = f();
  }
  
  private Drawable e()
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    if (i1 == 0)
    {
      if (I != null)
      {
        a(I, i1);
        return I;
      }
    }
    else if (J != null)
    {
      a(J, i1);
      return J;
    }
    return K;
  }
  
  private Drawable f()
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    if (i1 == 0)
    {
      if (J != null)
      {
        a(J, i1);
        return J;
      }
    }
    else if (I != null)
    {
      a(I, i1);
      return I;
    }
    return L;
  }
  
  private boolean g()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (getChildAtgetLayoutParamsb) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  static boolean g(View paramView)
  {
    return (ViewCompat.getImportantForAccessibility(paramView) != 4) && (ViewCompat.getImportantForAccessibility(paramView) != 2);
  }
  
  private boolean h()
  {
    return b() != null;
  }
  
  private static boolean h(View paramView)
  {
    paramView = paramView.getBackground();
    boolean bool = false;
    if (paramView != null)
    {
      if (paramView.getOpacity() == -1) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  View a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((getLayoutParamsc & 0x1) == 1) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  View a(int paramInt)
  {
    int i1 = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    int i2 = getChildCount();
    paramInt = 0;
    while (paramInt < i2)
    {
      View localView = getChildAt(paramInt);
      if ((d(localView) & 0x7) == (i1 & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  void a(int paramInt1, int paramInt2, View paramView)
  {
    int i2 = k.getViewDragState();
    int i3 = l.getViewDragState();
    int i1 = 2;
    if ((i2 != 1) && (i3 != 1))
    {
      paramInt1 = i1;
      if (i2 != 2) {
        if (i3 == 2) {
          paramInt1 = i1;
        } else {
          paramInt1 = 0;
        }
      }
    }
    else
    {
      paramInt1 = 1;
    }
    if ((paramView != null) && (paramInt2 == 0))
    {
      LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      if (a == 0.0F) {
        a(paramView);
      } else if (a == 1.0F) {
        b(paramView);
      }
    }
    if (paramInt1 != o)
    {
      o = paramInt1;
      if (y != null)
      {
        paramInt2 = y.size() - 1;
        while (paramInt2 >= 0)
        {
          ((DrawerListener)y.get(paramInt2)).onDrawerStateChanged(paramInt1);
          paramInt2 -= 1;
        }
      }
    }
  }
  
  void a(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((c & 0x1) == 1)
    {
      c = 0;
      if (y != null)
      {
        int i1 = y.size() - 1;
        while (i1 >= 0)
        {
          ((DrawerListener)y.get(i1)).onDrawerClosed(paramView);
          i1 -= 1;
        }
      }
      a(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  void a(View paramView, float paramFloat)
  {
    if (y != null)
    {
      int i1 = y.size() - 1;
      while (i1 >= 0)
      {
        ((DrawerListener)y.get(i1)).onDrawerSlide(paramView, paramFloat);
        i1 -= 1;
      }
    }
  }
  
  void a(boolean paramBoolean)
  {
    int i4 = getChildCount();
    int i2 = 0;
    int i3;
    for (int i1 = 0; i2 < i4; i1 = i3)
    {
      View localView = getChildAt(i2);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      boolean bool = i1;
      if (f(localView)) {
        if ((paramBoolean) && (!b))
        {
          bool = i1;
        }
        else
        {
          i3 = localView.getWidth();
          if (a(localView, 3)) {
            i1 |= k.smoothSlideViewTo(localView, -i3, localView.getTop());
          } else {
            i1 |= l.smoothSlideViewTo(localView, getWidth(), localView.getTop());
          }
          b = false;
          i3 = i1;
        }
      }
      i2 += 1;
    }
    m.a();
    n.a();
    if (i1 != 0) {
      invalidate();
    }
  }
  
  boolean a(View paramView, int paramInt)
  {
    return (d(paramView) & paramInt) == paramInt;
  }
  
  public void addDrawerListener(@NonNull DrawerListener paramDrawerListener)
  {
    if (paramDrawerListener == null) {
      return;
    }
    if (y == null) {
      y = new ArrayList();
    }
    y.add(paramDrawerListener);
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if (getDescendantFocusability() == 393216) {
      return;
    }
    int i4 = getChildCount();
    int i3 = 0;
    int i1 = 0;
    int i2 = 0;
    View localView;
    while (i1 < i4)
    {
      localView = getChildAt(i1);
      if (f(localView))
      {
        if (isDrawerOpen(localView))
        {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          i2 = 1;
        }
      }
      else {
        M.add(localView);
      }
      i1 += 1;
    }
    if (i2 == 0)
    {
      i2 = M.size();
      i1 = i3;
      while (i1 < i2)
      {
        localView = (View)M.get(i1);
        if (localView.getVisibility() == 0) {
          localView.addFocusables(paramArrayList, paramInt1, paramInt2);
        }
        i1 += 1;
      }
    }
    M.clear();
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((a() == null) && (!f(paramView))) {
      ViewCompat.setImportantForAccessibility(paramView, 1);
    } else {
      ViewCompat.setImportantForAccessibility(paramView, 4);
    }
    if (!b) {
      ViewCompat.setAccessibilityDelegate(paramView, e);
    }
  }
  
  View b()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((f(localView)) && (isDrawerVisible(localView))) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  void b(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((c & 0x1) == 0)
    {
      c = 1;
      if (y != null)
      {
        int i1 = y.size() - 1;
        while (i1 >= 0)
        {
          ((DrawerListener)y.get(i1)).onDrawerOpened(paramView);
          i1 -= 1;
        }
      }
      a(paramView, true);
      if (hasWindowFocus()) {
        sendAccessibilityEvent(32);
      }
    }
  }
  
  void b(View paramView, float paramFloat)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (paramFloat == a) {
      return;
    }
    a = paramFloat;
    a(paramView, paramFloat);
  }
  
  float c(View paramView)
  {
    return getLayoutParamsa;
  }
  
  void c()
  {
    if (!w)
    {
      long l1 = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
      int i2 = getChildCount();
      int i1 = 0;
      while (i1 < i2)
      {
        getChildAt(i1).dispatchTouchEvent(localMotionEvent);
        i1 += 1;
      }
      localMotionEvent.recycle();
      w = true;
    }
  }
  
  void c(View paramView, float paramFloat)
  {
    float f1 = c(paramView);
    float f2 = paramView.getWidth();
    int i1 = (int)(f1 * f2);
    i1 = (int)(f2 * paramFloat) - i1;
    if (!a(paramView, 3)) {
      i1 = -i1;
    }
    paramView.offsetLeftAndRight(i1);
    b(paramView, paramFloat);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void closeDrawer(int paramInt)
  {
    closeDrawer(paramInt, true);
  }
  
  public void closeDrawer(int paramInt, boolean paramBoolean)
  {
    Object localObject = a(paramInt);
    if (localObject != null)
    {
      closeDrawer((View)localObject, paramBoolean);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("No drawer view found with gravity ");
    ((StringBuilder)localObject).append(b(paramInt));
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void closeDrawer(@NonNull View paramView)
  {
    closeDrawer(paramView, true);
  }
  
  public void closeDrawer(@NonNull View paramView, boolean paramBoolean)
  {
    if (f(paramView))
    {
      localObject = (LayoutParams)paramView.getLayoutParams();
      if (q)
      {
        a = 0.0F;
        c = 0;
      }
      else if (paramBoolean)
      {
        c |= 0x4;
        if (a(paramView, 3)) {
          k.smoothSlideViewTo(paramView, -paramView.getWidth(), paramView.getTop());
        } else {
          l.smoothSlideViewTo(paramView, getWidth(), paramView.getTop());
        }
      }
      else
      {
        c(paramView, 0.0F);
        a(gravity, 0, paramView);
        paramView.setVisibility(4);
      }
      invalidate();
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("View ");
    ((StringBuilder)localObject).append(paramView);
    ((StringBuilder)localObject).append(" is not a sliding drawer");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void closeDrawers()
  {
    a(false);
  }
  
  public void computeScroll()
  {
    int i2 = getChildCount();
    float f1 = 0.0F;
    int i1 = 0;
    while (i1 < i2)
    {
      f1 = Math.max(f1, getChildAtgetLayoutParamsa);
      i1 += 1;
    }
    i = f1;
    boolean bool1 = k.continueSettling(true);
    boolean bool2 = l.continueSettling(true);
    if ((bool1) || (bool2)) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  int d(View paramView)
  {
    return GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(this));
  }
  
  public boolean dispatchGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (((paramMotionEvent.getSource() & 0x2) != 0) && (paramMotionEvent.getAction() != 10) && (i > 0.0F))
    {
      int i1 = getChildCount();
      if (i1 != 0)
      {
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        i1 -= 1;
        while (i1 >= 0)
        {
          View localView = getChildAt(i1);
          if ((a(f1, f2, localView)) && (!e(localView)) && (a(paramMotionEvent, localView))) {
            return true;
          }
          i1 -= 1;
        }
      }
      return false;
    }
    return super.dispatchGenericMotionEvent(paramMotionEvent);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i8 = getHeight();
    boolean bool1 = e(paramView);
    int i1 = getWidth();
    int i7 = paramCanvas.save();
    int i2 = 0;
    int i3;
    int i4;
    if (bool1)
    {
      int i9 = getChildCount();
      i3 = 0;
      i2 = 0;
      while (i3 < i9)
      {
        View localView = getChildAt(i3);
        i4 = i2;
        int i5 = i1;
        if (localView != paramView)
        {
          i4 = i2;
          i5 = i1;
          if (localView.getVisibility() == 0)
          {
            i4 = i2;
            i5 = i1;
            if (h(localView))
            {
              i4 = i2;
              i5 = i1;
              if (f(localView)) {
                if (localView.getHeight() < i8)
                {
                  i4 = i2;
                  i5 = i1;
                }
                else
                {
                  int i6;
                  if (a(localView, 3))
                  {
                    i6 = localView.getRight();
                    i4 = i2;
                    i5 = i1;
                    if (i6 > i2)
                    {
                      i4 = i6;
                      i5 = i1;
                    }
                  }
                  else
                  {
                    i6 = localView.getLeft();
                    i4 = i2;
                    i5 = i1;
                    if (i6 < i1)
                    {
                      i5 = i6;
                      i4 = i2;
                    }
                  }
                }
              }
            }
          }
        }
        i3 += 1;
        i2 = i4;
        i1 = i5;
      }
      paramCanvas.clipRect(i2, 0, i1, getHeight());
    }
    boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
    paramCanvas.restoreToCount(i7);
    if ((i > 0.0F) && (bool1))
    {
      i3 = (int)(((h & 0xFF000000) >>> 24) * i);
      i4 = h;
      j.setColor(i3 << 24 | i4 & 0xFFFFFF);
      paramCanvas.drawRect(i2, 0.0F, i1, getHeight(), j);
      return bool2;
    }
    float f1;
    if ((C != null) && (a(paramView, 3)))
    {
      i1 = C.getIntrinsicWidth();
      i2 = paramView.getRight();
      i3 = k.getEdgeSize();
      f1 = Math.max(0.0F, Math.min(i2 / i3, 1.0F));
      C.setBounds(i2, paramView.getTop(), i1 + i2, paramView.getBottom());
      C.setAlpha((int)(f1 * 255.0F));
      C.draw(paramCanvas);
      return bool2;
    }
    if ((D != null) && (a(paramView, 5)))
    {
      i1 = D.getIntrinsicWidth();
      i2 = paramView.getLeft();
      i3 = getWidth();
      i4 = l.getEdgeSize();
      f1 = Math.max(0.0F, Math.min((i3 - i2) / i4, 1.0F));
      D.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      D.setAlpha((int)(f1 * 255.0F));
      D.draw(paramCanvas);
    }
    return bool2;
  }
  
  boolean e(View paramView)
  {
    return getLayoutParamsgravity == 0;
  }
  
  boolean f(View paramView)
  {
    int i1 = GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(paramView));
    if ((i1 & 0x3) != 0) {
      return true;
    }
    return (i1 & 0x5) != 0;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public float getDrawerElevation()
  {
    if (d) {
      return f;
    }
    return 0.0F;
  }
  
  public int getDrawerLockMode(int paramInt)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    if (paramInt != 3)
    {
      if (paramInt != 5)
      {
        if (paramInt != 8388611)
        {
          if (paramInt == 8388613)
          {
            if (u != 3) {
              return u;
            }
            if (i1 == 0) {
              paramInt = s;
            } else {
              paramInt = r;
            }
            if (paramInt != 3) {
              return paramInt;
            }
          }
        }
        else
        {
          if (t != 3) {
            return t;
          }
          if (i1 == 0) {
            paramInt = r;
          } else {
            paramInt = s;
          }
          if (paramInt != 3) {
            return paramInt;
          }
        }
      }
      else
      {
        if (s != 3) {
          return s;
        }
        if (i1 == 0) {
          paramInt = u;
        } else {
          paramInt = t;
        }
        if (paramInt != 3) {
          return paramInt;
        }
      }
    }
    else
    {
      if (r != 3) {
        return r;
      }
      if (i1 == 0) {
        paramInt = t;
      } else {
        paramInt = u;
      }
      if (paramInt != 3) {
        return paramInt;
      }
    }
    return 0;
  }
  
  public int getDrawerLockMode(@NonNull View paramView)
  {
    if (f(paramView)) {
      return getDrawerLockMode(getLayoutParamsgravity);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("View ");
    localStringBuilder.append(paramView);
    localStringBuilder.append(" is not a drawer");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  @Nullable
  public CharSequence getDrawerTitle(int paramInt)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      return E;
    }
    if (paramInt == 5) {
      return F;
    }
    return null;
  }
  
  @Nullable
  public Drawable getStatusBarBackgroundDrawable()
  {
    return B;
  }
  
  public boolean isDrawerOpen(int paramInt)
  {
    View localView = a(paramInt);
    if (localView != null) {
      return isDrawerOpen(localView);
    }
    return false;
  }
  
  public boolean isDrawerOpen(@NonNull View paramView)
  {
    if (f(paramView)) {
      return (getLayoutParamsc & 0x1) == 1;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("View ");
    localStringBuilder.append(paramView);
    localStringBuilder.append(" is not a drawer");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public boolean isDrawerVisible(int paramInt)
  {
    View localView = a(paramInt);
    if (localView != null) {
      return isDrawerVisible(localView);
    }
    return false;
  }
  
  public boolean isDrawerVisible(@NonNull View paramView)
  {
    if (f(paramView)) {
      return getLayoutParamsa > 0.0F;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("View ");
    localStringBuilder.append(paramView);
    localStringBuilder.append(" is not a drawer");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    q = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((H) && (B != null))
    {
      int i1;
      if ((Build.VERSION.SDK_INT >= 21) && (G != null)) {
        i1 = ((WindowInsets)G).getSystemWindowInsetTop();
      } else {
        i1 = 0;
      }
      if (i1 > 0)
      {
        B.setBounds(0, 0, getWidth(), i1);
        B.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    boolean bool3 = k.shouldInterceptTouchEvent(paramMotionEvent);
    boolean bool4 = l.shouldInterceptTouchEvent(paramMotionEvent);
    boolean bool2 = true;
    switch (i1)
    {
    default: 
      break;
    case 2: 
      if (k.checkTouchSlop(3))
      {
        m.a();
        n.a();
      }
      break;
    case 1: 
    case 3: 
      a(true);
      v = false;
      w = false;
      break;
    case 0: 
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      z = f1;
      A = f2;
      if (i > 0.0F)
      {
        paramMotionEvent = k.findTopChildUnder((int)f1, (int)f2);
        if ((paramMotionEvent != null) && (e(paramMotionEvent)))
        {
          i1 = 1;
          break label171;
        }
      }
      i1 = 0;
      label171:
      v = false;
      w = false;
      break;
    }
    i1 = 0;
    boolean bool1 = bool2;
    if (!(bool3 | bool4))
    {
      bool1 = bool2;
      if (i1 == 0)
      {
        bool1 = bool2;
        if (!g())
        {
          if (w) {
            return true;
          }
          bool1 = false;
        }
      }
    }
    return bool1;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (h()))
    {
      paramKeyEvent.startTracking();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = b();
      if ((paramKeyEvent != null) && (getDrawerLockMode(paramKeyEvent) == 0)) {
        closeDrawers();
      }
      return paramKeyEvent != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p = true;
    int i4 = paramInt3 - paramInt1;
    int i5 = getChildCount();
    paramInt3 = 0;
    while (paramInt3 < i5)
    {
      View localView = getChildAt(paramInt3);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (e(localView))
        {
          localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
        }
        else
        {
          int i6 = localView.getMeasuredWidth();
          int i7 = localView.getMeasuredHeight();
          float f1;
          int i1;
          if (a(localView, 3))
          {
            paramInt1 = -i6;
            f1 = i6;
            i1 = paramInt1 + (int)(a * f1);
            f1 = (i6 + i1) / f1;
          }
          else
          {
            f1 = i6;
            i1 = i4 - (int)(a * f1);
            f1 = (i4 - i1) / f1;
          }
          int i2;
          if (f1 != a) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          paramInt1 = gravity & 0x70;
          if (paramInt1 != 16)
          {
            if (paramInt1 != 80)
            {
              localView.layout(i1, topMargin, i6 + i1, topMargin + i7);
            }
            else
            {
              paramInt1 = paramInt4 - paramInt2;
              localView.layout(i1, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i6 + i1, paramInt1 - bottomMargin);
            }
          }
          else
          {
            int i8 = paramInt4 - paramInt2;
            int i3 = (i8 - i7) / 2;
            if (i3 < topMargin)
            {
              paramInt1 = topMargin;
            }
            else
            {
              paramInt1 = i3;
              if (i3 + i7 > i8 - bottomMargin) {
                paramInt1 = i8 - bottomMargin - i7;
              }
            }
            localView.layout(i1, paramInt1, i6 + i1, i7 + paramInt1);
          }
          if (i2 != 0) {
            b(localView, f1);
          }
          if (a > 0.0F) {
            paramInt1 = 0;
          } else {
            paramInt1 = 4;
          }
          if (localView.getVisibility() != paramInt1) {
            localView.setVisibility(paramInt1);
          }
        }
      }
      paramInt3 += 1;
    }
    p = false;
    q = false;
  }
  
  @SuppressLint({"WrongConstant"})
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i6 = View.MeasureSpec.getMode(paramInt1);
    int i5 = View.MeasureSpec.getMode(paramInt2);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2 = View.MeasureSpec.getSize(paramInt2);
    int i3;
    int i4;
    if (i6 == 1073741824)
    {
      i3 = i1;
      i4 = i2;
      if (i5 == 1073741824) {}
    }
    else
    {
      if (!isInEditMode()) {
        break label807;
      }
      if ((i6 != Integer.MIN_VALUE) && (i6 == 0)) {
        i1 = 300;
      }
      if (i5 == Integer.MIN_VALUE)
      {
        i3 = i1;
        i4 = i2;
      }
      else
      {
        i3 = i1;
        i4 = i2;
        if (i5 == 0)
        {
          i4 = 300;
          i3 = i1;
        }
      }
    }
    setMeasuredDimension(i3, i4);
    if ((G != null) && (ViewCompat.getFitsSystemWindows(this))) {
      i5 = 1;
    } else {
      i5 = 0;
    }
    int i8 = ViewCompat.getLayoutDirection(this);
    int i9 = getChildCount();
    i6 = 0;
    i2 = 0;
    i1 = 0;
    while (i6 < i9)
    {
      View localView = getChildAt(i6);
      LayoutParams localLayoutParams;
      int i7;
      Object localObject;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (i5 != 0)
        {
          i7 = GravityCompat.getAbsoluteGravity(gravity, i8);
          WindowInsets localWindowInsets;
          if (ViewCompat.getFitsSystemWindows(localView))
          {
            if (Build.VERSION.SDK_INT >= 21)
            {
              localWindowInsets = (WindowInsets)G;
              if (i7 == 3)
              {
                localObject = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
              }
              else
              {
                localObject = localWindowInsets;
                if (i7 == 5) {
                  localObject = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
                }
              }
              localView.dispatchApplyWindowInsets((WindowInsets)localObject);
            }
          }
          else if (Build.VERSION.SDK_INT >= 21)
          {
            localWindowInsets = (WindowInsets)G;
            if (i7 == 3)
            {
              localObject = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
            }
            else
            {
              localObject = localWindowInsets;
              if (i7 == 5) {
                localObject = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
              }
            }
            leftMargin = ((WindowInsets)localObject).getSystemWindowInsetLeft();
            topMargin = ((WindowInsets)localObject).getSystemWindowInsetTop();
            rightMargin = ((WindowInsets)localObject).getSystemWindowInsetRight();
            bottomMargin = ((WindowInsets)localObject).getSystemWindowInsetBottom();
          }
        }
        if (e(localView)) {
          localView.measure(View.MeasureSpec.makeMeasureSpec(i3 - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i4 - topMargin - bottomMargin, 1073741824));
        }
      }
      else
      {
        break label723;
      }
      if (f(localView))
      {
        if ((d) && (ViewCompat.getElevation(localView) != f)) {
          ViewCompat.setElevation(localView, f);
        }
        int i10 = d(localView) & 0x7;
        if (i10 == 3) {
          i7 = 1;
        } else {
          i7 = 0;
        }
        if (((i7 != 0) && (i2 != 0)) || ((i7 == 0) && (i1 != 0)))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Child drawer has absolute gravity ");
          ((StringBuilder)localObject).append(b(i10));
          ((StringBuilder)localObject).append(" but this ");
          ((StringBuilder)localObject).append("DrawerLayout");
          ((StringBuilder)localObject).append(" already has a ");
          ((StringBuilder)localObject).append("drawer view along that edge");
          throw new IllegalStateException(((StringBuilder)localObject).toString());
        }
        if (i7 != 0) {
          i2 = 1;
        } else {
          i1 = 1;
        }
        localView.measure(getChildMeasureSpec(paramInt1, g + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
        label723:
        i6 += 1;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Child ");
        ((StringBuilder)localObject).append(localView);
        ((StringBuilder)localObject).append(" at index ");
        ((StringBuilder)localObject).append(i6);
        ((StringBuilder)localObject).append(" does not have a valid layout_gravity - must be Gravity.LEFT, ");
        ((StringBuilder)localObject).append("Gravity.RIGHT or Gravity.NO_GRAVITY");
        throw new IllegalStateException(((StringBuilder)localObject).toString());
      }
    }
    return;
    label807:
    throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (a != 0)
    {
      View localView = a(a);
      if (localView != null) {
        openDrawer(localView);
      }
    }
    if (b != 3) {
      setDrawerLockMode(b, 3);
    }
    if (c != 3) {
      setDrawerLockMode(c, 5);
    }
    if (d != 3) {
      setDrawerLockMode(d, 8388611);
    }
    if (e != 3) {
      setDrawerLockMode(e, 8388613);
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    d();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    int i4 = getChildCount();
    int i1 = 0;
    while (i1 < i4)
    {
      LayoutParams localLayoutParams = (LayoutParams)getChildAt(i1).getLayoutParams();
      int i2 = c;
      int i3 = 1;
      if (i2 == 1) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      if (c != 2) {
        i3 = 0;
      }
      if ((i2 == 0) && (i3 == 0)) {
        i1 += 1;
      } else {
        a = gravity;
      }
    }
    b = r;
    c = s;
    d = t;
    e = u;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    k.processTouchEvent(paramMotionEvent);
    l.processTouchEvent(paramMotionEvent);
    int i1 = paramMotionEvent.getAction() & 0xFF;
    if (i1 != 3)
    {
      switch (i1)
      {
      default: 
        return true;
      case 1: 
        f2 = paramMotionEvent.getX();
        f1 = paramMotionEvent.getY();
        paramMotionEvent = k.findTopChildUnder((int)f2, (int)f1);
        if ((paramMotionEvent != null) && (e(paramMotionEvent)))
        {
          f2 -= z;
          f1 -= A;
          i1 = k.getTouchSlop();
          if (f2 * f2 + f1 * f1 < i1 * i1)
          {
            paramMotionEvent = a();
            if ((paramMotionEvent != null) && (getDrawerLockMode(paramMotionEvent) != 2))
            {
              bool = false;
              break label162;
            }
          }
        }
        boolean bool = true;
        label162:
        a(bool);
        v = false;
        return true;
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      z = f1;
      A = f2;
      v = false;
      w = false;
      return true;
    }
    a(true);
    v = false;
    w = false;
    return true;
  }
  
  public void openDrawer(int paramInt)
  {
    openDrawer(paramInt, true);
  }
  
  public void openDrawer(int paramInt, boolean paramBoolean)
  {
    Object localObject = a(paramInt);
    if (localObject != null)
    {
      openDrawer((View)localObject, paramBoolean);
      return;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("No drawer view found with gravity ");
    ((StringBuilder)localObject).append(b(paramInt));
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void openDrawer(@NonNull View paramView)
  {
    openDrawer(paramView, true);
  }
  
  public void openDrawer(@NonNull View paramView, boolean paramBoolean)
  {
    if (f(paramView))
    {
      localObject = (LayoutParams)paramView.getLayoutParams();
      if (q)
      {
        a = 1.0F;
        c = 1;
        a(paramView, true);
      }
      else if (paramBoolean)
      {
        c |= 0x2;
        if (a(paramView, 3)) {
          k.smoothSlideViewTo(paramView, 0, paramView.getTop());
        } else {
          l.smoothSlideViewTo(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
        }
      }
      else
      {
        c(paramView, 1.0F);
        a(gravity, 0, paramView);
        paramView.setVisibility(0);
      }
      invalidate();
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("View ");
    ((StringBuilder)localObject).append(paramView);
    ((StringBuilder)localObject).append(" is not a sliding drawer");
    throw new IllegalArgumentException(((StringBuilder)localObject).toString());
  }
  
  public void removeDrawerListener(@NonNull DrawerListener paramDrawerListener)
  {
    if (paramDrawerListener == null) {
      return;
    }
    if (y == null) {
      return;
    }
    y.remove(paramDrawerListener);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    v = paramBoolean;
    if (paramBoolean) {
      a(true);
    }
  }
  
  public void requestLayout()
  {
    if (!p) {
      super.requestLayout();
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setChildInsets(Object paramObject, boolean paramBoolean)
  {
    G = paramObject;
    H = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    setWillNotDraw(paramBoolean);
    requestLayout();
  }
  
  public void setDrawerElevation(float paramFloat)
  {
    f = paramFloat;
    int i1 = 0;
    while (i1 < getChildCount())
    {
      View localView = getChildAt(i1);
      if (f(localView)) {
        ViewCompat.setElevation(localView, f);
      }
      i1 += 1;
    }
  }
  
  @Deprecated
  public void setDrawerListener(DrawerListener paramDrawerListener)
  {
    if (x != null) {
      removeDrawerListener(x);
    }
    if (paramDrawerListener != null) {
      addDrawerListener(paramDrawerListener);
    }
    x = paramDrawerListener;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }
  
  public void setDrawerLockMode(int paramInt1, int paramInt2)
  {
    int i1 = GravityCompat.getAbsoluteGravity(paramInt2, ViewCompat.getLayoutDirection(this));
    if (paramInt2 != 3)
    {
      if (paramInt2 != 5)
      {
        if (paramInt2 != 8388611)
        {
          if (paramInt2 == 8388613) {
            u = paramInt1;
          }
        }
        else {
          t = paramInt1;
        }
      }
      else {
        s = paramInt1;
      }
    }
    else {
      r = paramInt1;
    }
    Object localObject;
    if (paramInt1 != 0)
    {
      if (i1 == 3) {
        localObject = k;
      } else {
        localObject = l;
      }
      ((ViewDragHelper)localObject).cancel();
    }
    switch (paramInt1)
    {
    default: 
      
    case 2: 
      localObject = a(i1);
      if (localObject != null)
      {
        openDrawer((View)localObject);
        return;
      }
      break;
    case 1: 
      localObject = a(i1);
      if (localObject != null) {
        closeDrawer((View)localObject);
      }
      break;
    }
  }
  
  public void setDrawerLockMode(int paramInt, @NonNull View paramView)
  {
    if (f(paramView))
    {
      setDrawerLockMode(paramInt, getLayoutParamsgravity);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("View ");
    localStringBuilder.append(paramView);
    localStringBuilder.append(" is not a ");
    localStringBuilder.append("drawer with appropriate layout_gravity");
    throw new IllegalArgumentException(localStringBuilder.toString());
  }
  
  public void setDrawerShadow(@DrawableRes int paramInt1, int paramInt2)
  {
    setDrawerShadow(ContextCompat.getDrawable(getContext(), paramInt1), paramInt2);
  }
  
  public void setDrawerShadow(Drawable paramDrawable, int paramInt)
  {
    if (d) {
      return;
    }
    if ((paramInt & 0x800003) == 8388611)
    {
      I = paramDrawable;
    }
    else if ((paramInt & 0x800005) == 8388613)
    {
      J = paramDrawable;
    }
    else if ((paramInt & 0x3) == 3)
    {
      K = paramDrawable;
    }
    else
    {
      if ((paramInt & 0x5) != 5) {
        return;
      }
      L = paramDrawable;
    }
    d();
    invalidate();
    return;
  }
  
  public void setDrawerTitle(int paramInt, @Nullable CharSequence paramCharSequence)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3)
    {
      E = paramCharSequence;
      return;
    }
    if (paramInt == 5) {
      F = paramCharSequence;
    }
  }
  
  public void setScrimColor(@ColorInt int paramInt)
  {
    h = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = ContextCompat.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    B = localDrawable;
    invalidate();
  }
  
  public void setStatusBarBackground(@Nullable Drawable paramDrawable)
  {
    B = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(@ColorInt int paramInt)
  {
    B = new ColorDrawable(paramInt);
    invalidate();
  }
  
  public static abstract interface DrawerListener
  {
    public abstract void onDrawerClosed(@NonNull View paramView);
    
    public abstract void onDrawerOpened(@NonNull View paramView);
    
    public abstract void onDrawerSlide(@NonNull View paramView, float paramFloat);
    
    public abstract void onDrawerStateChanged(int paramInt);
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    float a;
    boolean b;
    int c;
    public int gravity = 0;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(int paramInt1, int paramInt2, int paramInt3)
    {
      this(paramInt1, paramInt2);
    }
    
    public LayoutParams(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.a);
      gravity = paramContext.getInt(0, 0);
      paramContext.recycle();
    }
    
    public LayoutParams(@NonNull LayoutParams paramLayoutParams)
    {
      super();
      gravity = gravity;
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
  
  protected static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public DrawerLayout.SavedState a(Parcel paramAnonymousParcel)
      {
        return new DrawerLayout.SavedState(paramAnonymousParcel, null);
      }
      
      public DrawerLayout.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new DrawerLayout.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public DrawerLayout.SavedState[] a(int paramAnonymousInt)
      {
        return new DrawerLayout.SavedState[paramAnonymousInt];
      }
    };
    int a = 0;
    int b;
    int c;
    int d;
    int e;
    
    public SavedState(@NonNull Parcel paramParcel, @Nullable ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
      d = paramParcel.readInt();
      e = paramParcel.readInt();
    }
    
    public SavedState(@NonNull Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      paramParcel.writeInt(c);
      paramParcel.writeInt(d);
      paramParcel.writeInt(e);
    }
  }
  
  public static abstract class SimpleDrawerListener
    implements DrawerLayout.DrawerListener
  {
    public SimpleDrawerListener() {}
    
    public void onDrawerClosed(View paramView) {}
    
    public void onDrawerOpened(View paramView) {}
    
    public void onDrawerSlide(View paramView, float paramFloat) {}
    
    public void onDrawerStateChanged(int paramInt) {}
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
    }
    
    private void a(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat, ViewGroup paramViewGroup)
    {
      int j = paramViewGroup.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = paramViewGroup.getChildAt(i);
        if (DrawerLayout.g(localView)) {
          paramAccessibilityNodeInfoCompat.addChild(localView);
        }
        i += 1;
      }
    }
    
    public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramView = paramAccessibilityEvent.getText();
        paramAccessibilityEvent = b();
        if (paramAccessibilityEvent != null)
        {
          int i = d(paramAccessibilityEvent);
          paramAccessibilityEvent = getDrawerTitle(i);
          if (paramAccessibilityEvent != null) {
            paramView.add(paramAccessibilityEvent);
          }
        }
        return true;
      }
      return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      if (DrawerLayout.b)
      {
        super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      }
      else
      {
        AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
        super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
        paramAccessibilityNodeInfoCompat.setSource(paramView);
        ViewParent localViewParent = ViewCompat.getParentForAccessibility(paramView);
        if ((localViewParent instanceof View)) {
          paramAccessibilityNodeInfoCompat.setParent((View)localViewParent);
        }
        a(paramAccessibilityNodeInfoCompat, localAccessibilityNodeInfoCompat);
        localAccessibilityNodeInfoCompat.recycle();
        a(paramAccessibilityNodeInfoCompat, (ViewGroup)paramView);
      }
      paramAccessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
      paramAccessibilityNodeInfoCompat.setFocusable(false);
      paramAccessibilityNodeInfoCompat.setFocused(false);
      paramAccessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
      paramAccessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if ((!DrawerLayout.b) && (!DrawerLayout.g(paramView))) {
        return false;
      }
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
  }
  
  static final class b
    extends AccessibilityDelegateCompat
  {
    b() {}
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      if (!DrawerLayout.g(paramView)) {
        paramAccessibilityNodeInfoCompat.setParent(null);
      }
    }
  }
  
  private class c
    extends ViewDragHelper.Callback
  {
    private final int b;
    private ViewDragHelper c;
    private final Runnable d = new Runnable()
    {
      public void run()
      {
        b();
      }
    };
    
    c(int paramInt)
    {
      b = paramInt;
    }
    
    private void c()
    {
      int j = b;
      int i = 3;
      if (j == 3) {
        i = 5;
      }
      View localView = a(i);
      if (localView != null) {
        closeDrawer(localView);
      }
    }
    
    public void a()
    {
      removeCallbacks(d);
    }
    
    public void a(ViewDragHelper paramViewDragHelper)
    {
      c = paramViewDragHelper;
    }
    
    void b()
    {
      int k = c.getEdgeSize();
      int i = b;
      int j = 0;
      if (i == 3) {
        i = 1;
      } else {
        i = 0;
      }
      View localView;
      if (i != 0)
      {
        localView = a(3);
        if (localView != null) {
          j = -localView.getWidth();
        }
        j += k;
      }
      else
      {
        localView = a(5);
        j = getWidth() - k;
      }
      if ((localView != null) && (((i != 0) && (localView.getLeft() < j)) || ((i == 0) && (localView.getLeft() > j) && (getDrawerLockMode(localView) == 0))))
      {
        DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        c.smoothSlideViewTo(localView, j, localView.getTop());
        b = true;
        invalidate();
        c();
        DrawerLayout.this.c();
      }
    }
    
    public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
    {
      if (a(paramView, 3)) {
        return Math.max(-paramView.getWidth(), Math.min(paramInt1, 0));
      }
      paramInt2 = getWidth();
      return Math.max(paramInt2 - paramView.getWidth(), Math.min(paramInt1, paramInt2));
    }
    
    public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
    {
      return paramView.getTop();
    }
    
    public int getViewHorizontalDragRange(View paramView)
    {
      if (f(paramView)) {
        return paramView.getWidth();
      }
      return 0;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2)
    {
      View localView;
      if ((paramInt1 & 0x1) == 1) {
        localView = a(3);
      } else {
        localView = a(5);
      }
      if ((localView != null) && (getDrawerLockMode(localView) == 0)) {
        c.captureChildView(localView, paramInt2);
      }
    }
    
    public boolean onEdgeLock(int paramInt)
    {
      return false;
    }
    
    public void onEdgeTouched(int paramInt1, int paramInt2)
    {
      postDelayed(d, 160L);
    }
    
    public void onViewCaptured(View paramView, int paramInt)
    {
      getLayoutParamsb = false;
      c();
    }
    
    public void onViewDragStateChanged(int paramInt)
    {
      a(b, paramInt, c.getCapturedView());
    }
    
    public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramInt2 = paramView.getWidth();
      float f;
      if (a(paramView, 3)) {
        f = (paramInt1 + paramInt2) / paramInt2;
      } else {
        f = (getWidth() - paramInt1) / paramInt2;
      }
      b(paramView, f);
      if (f == 0.0F) {
        paramInt1 = 4;
      } else {
        paramInt1 = 0;
      }
      paramView.setVisibility(paramInt1);
      invalidate();
    }
    
    public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
    {
      paramFloat2 = c(paramView);
      int k = paramView.getWidth();
      int i;
      if (a(paramView, 3))
      {
        boolean bool = paramFloat1 < 0.0F;
        if ((!bool) && ((bool) || (paramFloat2 <= 0.5F))) {
          i = -k;
        } else {
          i = 0;
        }
      }
      else
      {
        int j = getWidth();
        if (paramFloat1 >= 0.0F)
        {
          i = j;
          if (paramFloat1 == 0.0F)
          {
            i = j;
            if (paramFloat2 <= 0.5F) {}
          }
        }
        else
        {
          i = j - k;
        }
      }
      c.settleCapturedViewAt(i, paramView.getTop());
      invalidate();
    }
    
    public boolean tryCaptureView(View paramView, int paramInt)
    {
      return (f(paramView)) && (a(paramView, b)) && (getDrawerLockMode(paramView) == 0);
    }
  }
}
