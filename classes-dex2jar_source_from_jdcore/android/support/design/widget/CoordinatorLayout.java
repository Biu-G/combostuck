package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.coordinatorlayout.R.attr;
import android.support.coordinatorlayout.R.style;
import android.support.coordinatorlayout.R.styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.NestedScrollingParent2;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v4.widget.DirectedAcyclicGraph;
import android.support.v4.widget.ViewGroupUtils;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
  extends ViewGroup
  implements NestedScrollingParent2
{
  static final String a;
  static final Class<?>[] b = { Context.class, AttributeSet.class };
  static final ThreadLocal<Map<String, Constructor<Behavior>>> c = new ThreadLocal();
  static final Comparator<View> d;
  private static final Pools.Pool<Rect> f = new Pools.SynchronizedPool(12);
  ViewGroup.OnHierarchyChangeListener e;
  private final List<View> g = new ArrayList();
  private final DirectedAcyclicGraph<View> h = new DirectedAcyclicGraph();
  private final List<View> i = new ArrayList();
  private final List<View> j = new ArrayList();
  private final int[] k = new int[2];
  private Paint l;
  private boolean m;
  private boolean n;
  private int[] o;
  private View p;
  private View q;
  private b r;
  private boolean s;
  private WindowInsetsCompat t;
  private boolean u;
  private Drawable v;
  private OnApplyWindowInsetsListener w;
  private final NestedScrollingParentHelper x = new NestedScrollingParentHelper(this);
  
  static
  {
    Object localObject = CoordinatorLayout.class.getPackage();
    if (localObject != null) {
      localObject = ((Package)localObject).getName();
    } else {
      localObject = null;
    }
    a = (String)localObject;
    if (Build.VERSION.SDK_INT >= 21) {
      d = new c();
    } else {
      d = null;
    }
  }
  
  public CoordinatorLayout(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CoordinatorLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.coordinatorLayoutStyle);
  }
  
  public CoordinatorLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int i1 = 0;
    if (paramInt == 0) {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout, 0, R.style.Widget_Support_CoordinatorLayout);
    } else {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout, paramInt, 0);
    }
    paramInt = paramAttributeSet.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
    if (paramInt != 0)
    {
      paramContext = paramContext.getResources();
      o = paramContext.getIntArray(paramInt);
      float f1 = getDisplayMetricsdensity;
      int i2 = o.length;
      paramInt = i1;
      while (paramInt < i2)
      {
        o[paramInt] = ((int)(o[paramInt] * f1));
        paramInt += 1;
      }
    }
    v = paramAttributeSet.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
    paramAttributeSet.recycle();
    f();
    super.setOnHierarchyChangeListener(new a());
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    return paramInt1;
  }
  
  static Behavior a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Object localObject1;
    if (paramString.startsWith("."))
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(paramContext.getPackageName());
      ((StringBuilder)localObject1).append(paramString);
      localObject1 = ((StringBuilder)localObject1).toString();
    }
    else if (paramString.indexOf('.') >= 0)
    {
      localObject1 = paramString;
    }
    else
    {
      localObject1 = paramString;
      if (!TextUtils.isEmpty(a))
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(a);
        ((StringBuilder)localObject1).append('.');
        ((StringBuilder)localObject1).append(paramString);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
    }
    try
    {
      Object localObject2 = (Map)c.get();
      paramString = (String)localObject2;
      if (localObject2 == null)
      {
        paramString = new HashMap();
        c.set(paramString);
      }
      Constructor localConstructor = (Constructor)paramString.get(localObject1);
      localObject2 = localConstructor;
      if (localConstructor == null)
      {
        localObject2 = paramContext.getClassLoader().loadClass((String)localObject1).getConstructor(b);
        ((Constructor)localObject2).setAccessible(true);
        paramString.put(localObject1, localObject2);
      }
      paramContext = (Behavior)((Constructor)localObject2).newInstance(new Object[] { paramContext, paramAttributeSet });
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramAttributeSet = new StringBuilder();
      paramAttributeSet.append("Could not inflate Behavior subclass ");
      paramAttributeSet.append((String)localObject1);
      throw new RuntimeException(paramAttributeSet.toString(), paramContext);
    }
  }
  
  private static void a(@NonNull Rect paramRect)
  {
    paramRect.setEmpty();
    f.release(paramRect);
  }
  
  private void a(LayoutParams paramLayoutParams, Rect paramRect, int paramInt1, int paramInt2)
  {
    int i2 = getWidth();
    int i1 = getHeight();
    i2 = Math.max(getPaddingLeft() + leftMargin, Math.min(left, i2 - getPaddingRight() - paramInt1 - rightMargin));
    i1 = Math.max(getPaddingTop() + topMargin, Math.min(top, i1 - getPaddingBottom() - paramInt2 - bottomMargin));
    paramRect.set(i2, i1, paramInt1 + i2, paramInt2 + i1);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = GravityCompat.getAbsoluteGravity(d(gravity), paramInt2);
    int i7 = i1 & 0x7;
    int i6 = i1 & 0x70;
    int i5 = getWidth();
    int i4 = getHeight();
    int i2 = paramView.getMeasuredWidth();
    int i3 = paramView.getMeasuredHeight();
    i1 = paramInt1;
    if (paramInt2 == 1) {
      i1 = i5 - paramInt1;
    }
    paramInt1 = b(i1) - i2;
    paramInt2 = 0;
    if (i7 != 1)
    {
      if (i7 == 5) {
        paramInt1 += i2;
      }
    }
    else {
      paramInt1 += i2 / 2;
    }
    if (i6 != 16)
    {
      if (i6 == 80) {
        paramInt2 = i3 + 0;
      }
    }
    else {
      paramInt2 = 0 + i3 / 2;
    }
    paramInt1 = Math.max(getPaddingLeft() + leftMargin, Math.min(paramInt1, i5 - getPaddingRight() - i2 - rightMargin));
    paramInt2 = Math.max(getPaddingTop() + topMargin, Math.min(paramInt2, i4 - getPaddingBottom() - i3 - bottomMargin));
    paramView.layout(paramInt1, paramInt2, i2 + paramInt1, i3 + paramInt2);
  }
  
  private void a(View paramView, int paramInt1, Rect paramRect1, Rect paramRect2, LayoutParams paramLayoutParams, int paramInt2, int paramInt3)
  {
    int i1 = GravityCompat.getAbsoluteGravity(e(gravity), paramInt1);
    paramInt1 = GravityCompat.getAbsoluteGravity(c(anchorGravity), paramInt1);
    int i4 = i1 & 0x7;
    int i3 = i1 & 0x70;
    int i2 = paramInt1 & 0x7;
    i1 = paramInt1 & 0x70;
    if (i2 != 1)
    {
      if (i2 != 5) {
        paramInt1 = left;
      } else {
        paramInt1 = right;
      }
    }
    else {
      paramInt1 = left + paramRect1.width() / 2;
    }
    if (i1 != 16)
    {
      if (i1 != 80) {
        i1 = top;
      } else {
        i1 = bottom;
      }
    }
    else {
      i1 = top + paramRect1.height() / 2;
    }
    if (i4 != 1)
    {
      i2 = paramInt1;
      if (i4 != 5) {
        i2 = paramInt1 - paramInt2;
      }
    }
    else
    {
      i2 = paramInt1 - paramInt2 / 2;
    }
    if (i3 != 16)
    {
      paramInt1 = i1;
      if (i3 != 80) {
        paramInt1 = i1 - paramInt3;
      }
    }
    else
    {
      paramInt1 = i1 - paramInt3 / 2;
    }
    paramRect2.set(i2, paramInt1, paramInt2 + i2, paramInt3 + paramInt1);
  }
  
  private void a(View paramView, Rect paramRect, int paramInt)
  {
    if (!ViewCompat.isLaidOut(paramView)) {
      return;
    }
    if (paramView.getWidth() > 0)
    {
      if (paramView.getHeight() <= 0) {
        return;
      }
      LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      Behavior localBehavior = localLayoutParams.getBehavior();
      Rect localRect1 = d();
      Rect localRect2 = d();
      localRect2.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
      if ((localBehavior != null) && (localBehavior.getInsetDodgeRect(this, paramView, localRect1)))
      {
        if (!localRect2.contains(localRect1))
        {
          paramView = new StringBuilder();
          paramView.append("Rect should be within the child's bounds. Rect:");
          paramView.append(localRect1.toShortString());
          paramView.append(" | Bounds:");
          paramView.append(localRect2.toShortString());
          throw new IllegalArgumentException(paramView.toString());
        }
      }
      else {
        localRect1.set(localRect2);
      }
      a(localRect2);
      if (localRect1.isEmpty())
      {
        a(localRect1);
        return;
      }
      int i2 = GravityCompat.getAbsoluteGravity(dodgeInsetEdges, paramInt);
      if ((i2 & 0x30) == 48)
      {
        paramInt = top - topMargin - e;
        if (paramInt < top)
        {
          d(paramView, top - paramInt);
          paramInt = 1;
          break label247;
        }
      }
      paramInt = 0;
      label247:
      int i1 = paramInt;
      if ((i2 & 0x50) == 80)
      {
        int i3 = getHeight() - bottom - bottomMargin + e;
        i1 = paramInt;
        if (i3 < bottom)
        {
          d(paramView, i3 - bottom);
          i1 = 1;
        }
      }
      if (i1 == 0) {
        d(paramView, 0);
      }
      if ((i2 & 0x3) == 3)
      {
        paramInt = left - leftMargin - d;
        if (paramInt < left)
        {
          c(paramView, left - paramInt);
          paramInt = 1;
          break label374;
        }
      }
      paramInt = 0;
      label374:
      i1 = paramInt;
      if ((i2 & 0x5) == 5)
      {
        i2 = getWidth() - right - rightMargin + d;
        i1 = paramInt;
        if (i2 < right)
        {
          c(paramView, i2 - right);
          i1 = 1;
        }
      }
      if (i1 == 0) {
        c(paramView, 0);
      }
      a(localRect1);
      return;
    }
  }
  
  private void a(View paramView1, View paramView2, int paramInt)
  {
    Rect localRect1 = d();
    Rect localRect2 = d();
    try
    {
      a(paramView2, localRect1);
      a(paramView1, paramInt, localRect1, localRect2);
      paramView1.layout(left, top, right, bottom);
      return;
    }
    finally
    {
      a(localRect1);
      a(localRect2);
    }
  }
  
  private void a(List<View> paramList)
  {
    paramList.clear();
    boolean bool = isChildrenDrawingOrderEnabled();
    int i3 = getChildCount();
    int i1 = i3 - 1;
    while (i1 >= 0)
    {
      int i2;
      if (bool) {
        i2 = getChildDrawingOrder(i3, i1);
      } else {
        i2 = i1;
      }
      paramList.add(getChildAt(i2));
      i1 -= 1;
    }
    if (d != null) {
      Collections.sort(paramList, d);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      Behavior localBehavior = ((LayoutParams)localView.getLayoutParams()).getBehavior();
      if (localBehavior != null)
      {
        long l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        if (paramBoolean) {
          localBehavior.onInterceptTouchEvent(this, localView, localMotionEvent);
        } else {
          localBehavior.onTouchEvent(this, localView, localMotionEvent);
        }
        localMotionEvent.recycle();
      }
      i1 += 1;
    }
    i1 = 0;
    while (i1 < i2)
    {
      ((LayoutParams)getChildAt(i1).getLayoutParams()).d();
      i1 += 1;
    }
    p = null;
    m = false;
  }
  
  private boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i4 = paramMotionEvent.getActionMasked();
    List localList = i;
    a(localList);
    int i5 = localList.size();
    Object localObject1 = null;
    int i2 = 0;
    boolean bool1 = false;
    int i1 = 0;
    boolean bool2;
    for (;;)
    {
      bool2 = bool1;
      if (i2 >= i5) {
        break;
      }
      View localView = (View)localList.get(i2);
      Object localObject2 = (LayoutParams)localView.getLayoutParams();
      Behavior localBehavior = ((LayoutParams)localObject2).getBehavior();
      boolean bool3;
      int i3;
      if (((bool1) || (i1 != 0)) && (i4 != 0))
      {
        bool3 = bool1;
        i3 = i1;
        localObject2 = localObject1;
        if (localBehavior == null) {
          break label367;
        }
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          long l1 = SystemClock.uptimeMillis();
          localObject2 = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        }
      }
      switch (paramInt)
      {
      default: 
        bool3 = bool1;
        i3 = i1;
        break;
      case 1: 
        localBehavior.onTouchEvent(this, localView, (MotionEvent)localObject2);
        bool3 = bool1;
        i3 = i1;
        break;
      case 0: 
        localBehavior.onInterceptTouchEvent(this, localView, (MotionEvent)localObject2);
        bool3 = bool1;
        i3 = i1;
        break;
        bool2 = bool1;
        if (!bool1)
        {
          bool2 = bool1;
          if (localBehavior != null)
          {
            switch (paramInt)
            {
            default: 
              break;
            case 1: 
              bool1 = localBehavior.onTouchEvent(this, localView, paramMotionEvent);
              break;
            case 0: 
              bool1 = localBehavior.onInterceptTouchEvent(this, localView, paramMotionEvent);
            }
            bool2 = bool1;
            if (bool1)
            {
              p = localView;
              bool2 = bool1;
            }
          }
        }
        bool3 = ((LayoutParams)localObject2).c();
        bool1 = ((LayoutParams)localObject2).a(this, localView);
        if ((bool1) && (!bool3)) {
          i1 = 1;
        } else {
          i1 = 0;
        }
        bool3 = bool2;
        i3 = i1;
        localObject2 = localObject1;
        if (bool1)
        {
          bool3 = bool2;
          i3 = i1;
          localObject2 = localObject1;
          if (i1 == 0) {
            break label387;
          }
        }
        break;
      }
      label367:
      i2 += 1;
      bool1 = bool3;
      i1 = i3;
      localObject1 = localObject2;
    }
    label387:
    localList.clear();
    return bool2;
  }
  
  private int b(int paramInt)
  {
    if (o == null)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("No keylines defined for ");
      localStringBuilder.append(this);
      localStringBuilder.append(" - attempted index lookup ");
      localStringBuilder.append(paramInt);
      Log.e("CoordinatorLayout", localStringBuilder.toString());
      return 0;
    }
    if ((paramInt >= 0) && (paramInt < o.length)) {
      return o[paramInt];
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Keyline index ");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" out of range for ");
    localStringBuilder.append(this);
    Log.e("CoordinatorLayout", localStringBuilder.toString());
    return 0;
  }
  
  private WindowInsetsCompat b(WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (paramWindowInsetsCompat.isConsumed()) {
      return paramWindowInsetsCompat;
    }
    int i1 = 0;
    int i2 = getChildCount();
    for (WindowInsetsCompat localWindowInsetsCompat = paramWindowInsetsCompat; i1 < i2; localWindowInsetsCompat = paramWindowInsetsCompat)
    {
      View localView = getChildAt(i1);
      paramWindowInsetsCompat = localWindowInsetsCompat;
      if (ViewCompat.getFitsSystemWindows(localView))
      {
        Behavior localBehavior = ((LayoutParams)localView.getLayoutParams()).getBehavior();
        paramWindowInsetsCompat = localWindowInsetsCompat;
        if (localBehavior != null)
        {
          localWindowInsetsCompat = localBehavior.onApplyWindowInsets(this, localView, localWindowInsetsCompat);
          paramWindowInsetsCompat = localWindowInsetsCompat;
          if (localWindowInsetsCompat.isConsumed()) {
            return localWindowInsetsCompat;
          }
        }
      }
      i1 += 1;
    }
    return localWindowInsetsCompat;
  }
  
  private void b(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    Rect localRect1 = d();
    localRect1.set(getPaddingLeft() + leftMargin, getPaddingTop() + topMargin, getWidth() - getPaddingRight() - rightMargin, getHeight() - getPaddingBottom() - bottomMargin);
    if ((t != null) && (ViewCompat.getFitsSystemWindows(this)) && (!ViewCompat.getFitsSystemWindows(paramView)))
    {
      left += t.getSystemWindowInsetLeft();
      top += t.getSystemWindowInsetTop();
      right -= t.getSystemWindowInsetRight();
      bottom -= t.getSystemWindowInsetBottom();
    }
    Rect localRect2 = d();
    GravityCompat.apply(c(gravity), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect1, localRect2, paramInt);
    paramView.layout(left, top, right, bottom);
    a(localRect1);
    a(localRect2);
  }
  
  private boolean b(View paramView)
  {
    return h.hasOutgoingEdges(paramView);
  }
  
  private static int c(int paramInt)
  {
    int i1 = paramInt;
    if ((paramInt & 0x7) == 0) {
      i1 = paramInt | 0x800003;
    }
    paramInt = i1;
    if ((i1 & 0x70) == 0) {
      paramInt = i1 | 0x30;
    }
    return paramInt;
  }
  
  private void c(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (d != paramInt)
    {
      ViewCompat.offsetLeftAndRight(paramView, paramInt - d);
      d = paramInt;
    }
  }
  
  private static int d(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388661;
    }
    return i1;
  }
  
  @NonNull
  private static Rect d()
  {
    Rect localRect2 = (Rect)f.acquire();
    Rect localRect1 = localRect2;
    if (localRect2 == null) {
      localRect1 = new Rect();
    }
    return localRect1;
  }
  
  private void d(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (e != paramInt)
    {
      ViewCompat.offsetTopAndBottom(paramView, paramInt - e);
      e = paramInt;
    }
  }
  
  private static int e(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 17;
    }
    return i1;
  }
  
  private void e()
  {
    g.clear();
    h.clear();
    int i3 = getChildCount();
    int i1 = 0;
    while (i1 < i3)
    {
      View localView1 = getChildAt(i1);
      LayoutParams localLayoutParams = a(localView1);
      localLayoutParams.b(this, localView1);
      h.addNode(localView1);
      int i2 = 0;
      while (i2 < i3)
      {
        if (i2 != i1)
        {
          View localView2 = getChildAt(i2);
          if (localLayoutParams.a(this, localView1, localView2))
          {
            if (!h.contains(localView2)) {
              h.addNode(localView2);
            }
            h.addEdge(localView2, localView1);
          }
        }
        i2 += 1;
      }
      i1 += 1;
    }
    g.addAll(h.getSortedList());
    Collections.reverse(g);
  }
  
  private void f()
  {
    if (Build.VERSION.SDK_INT < 21) {
      return;
    }
    if (ViewCompat.getFitsSystemWindows(this))
    {
      if (w == null) {
        w = new OnApplyWindowInsetsListener()
        {
          public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
          {
            return a(paramAnonymousWindowInsetsCompat);
          }
        };
      }
      ViewCompat.setOnApplyWindowInsetsListener(this, w);
      setSystemUiVisibility(1280);
      return;
    }
    ViewCompat.setOnApplyWindowInsetsListener(this, null);
  }
  
  LayoutParams a(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!b)
    {
      if ((paramView instanceof AttachedBehavior))
      {
        paramView = ((AttachedBehavior)paramView).getBehavior();
        if (paramView == null) {
          Log.e("CoordinatorLayout", "Attached behavior class is null");
        }
        localLayoutParams.setBehavior(paramView);
        b = true;
        return localLayoutParams;
      }
      Class localClass = paramView.getClass();
      Object localObject;
      for (paramView = null; localClass != null; paramView = (View)localObject)
      {
        localObject = (DefaultBehavior)localClass.getAnnotation(DefaultBehavior.class);
        paramView = (View)localObject;
        if (localObject != null) {
          break;
        }
        localClass = localClass.getSuperclass();
      }
      if (paramView != null) {
        try
        {
          localLayoutParams.setBehavior((Behavior)paramView.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        catch (Exception localException)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Default behavior class ");
          ((StringBuilder)localObject).append(paramView.value().getName());
          ((StringBuilder)localObject).append(" could not be instantiated. Did you forget");
          ((StringBuilder)localObject).append(" a default constructor?");
          Log.e("CoordinatorLayout", ((StringBuilder)localObject).toString(), localException);
        }
      }
      b = true;
    }
    return localLayoutParams;
  }
  
  final WindowInsetsCompat a(WindowInsetsCompat paramWindowInsetsCompat)
  {
    WindowInsetsCompat localWindowInsetsCompat = paramWindowInsetsCompat;
    if (!ObjectsCompat.equals(t, paramWindowInsetsCompat))
    {
      t = paramWindowInsetsCompat;
      boolean bool2 = true;
      boolean bool1;
      if ((paramWindowInsetsCompat != null) && (paramWindowInsetsCompat.getSystemWindowInsetTop() > 0)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      u = bool1;
      if ((!u) && (getBackground() == null)) {
        bool1 = bool2;
      } else {
        bool1 = false;
      }
      setWillNotDraw(bool1);
      localWindowInsetsCompat = b(paramWindowInsetsCompat);
      requestLayout();
    }
    return localWindowInsetsCompat;
  }
  
  void a()
  {
    int i2 = getChildCount();
    int i4 = 0;
    int i1 = 0;
    int i3;
    for (;;)
    {
      i3 = i4;
      if (i1 >= i2) {
        break;
      }
      if (b(getChildAt(i1)))
      {
        i3 = 1;
        break;
      }
      i1 += 1;
    }
    if (i3 != s)
    {
      if (i3 != 0)
      {
        b();
        return;
      }
      c();
    }
  }
  
  final void a(int paramInt)
  {
    int i3 = ViewCompat.getLayoutDirection(this);
    int i4 = g.size();
    Rect localRect1 = d();
    Rect localRect2 = d();
    Rect localRect3 = d();
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = (View)g.get(i1);
      Object localObject1 = (LayoutParams)localView.getLayoutParams();
      if ((paramInt != 0) || (localView.getVisibility() != 8))
      {
        int i2 = 0;
        Object localObject2;
        while (i2 < i1)
        {
          localObject2 = (View)g.get(i2);
          if (g == localObject2) {
            a(localView, i3);
          }
          i2 += 1;
        }
        a(localView, true, localRect2);
        if ((insetEdge != 0) && (!localRect2.isEmpty()))
        {
          i2 = GravityCompat.getAbsoluteGravity(insetEdge, i3);
          int i5 = i2 & 0x70;
          if (i5 != 48)
          {
            if (i5 == 80) {
              bottom = Math.max(bottom, getHeight() - top);
            }
          }
          else {
            top = Math.max(top, bottom);
          }
          i2 &= 0x7;
          if (i2 != 3)
          {
            if (i2 == 5) {
              right = Math.max(right, getWidth() - left);
            }
          }
          else {
            left = Math.max(left, right);
          }
        }
        if ((dodgeInsetEdges != 0) && (localView.getVisibility() == 0)) {
          a(localView, localRect1, i3);
        }
        if (paramInt != 2)
        {
          c(localView, localRect3);
          if (!localRect3.equals(localRect2)) {
            b(localView, localRect2);
          }
        }
        else
        {
          i2 = i1 + 1;
          while (i2 < i4)
          {
            localObject1 = (View)g.get(i2);
            localObject2 = (LayoutParams)((View)localObject1).getLayoutParams();
            Behavior localBehavior = ((LayoutParams)localObject2).getBehavior();
            if ((localBehavior != null) && (localBehavior.layoutDependsOn(this, (View)localObject1, localView))) {
              if ((paramInt == 0) && (((LayoutParams)localObject2).e()))
              {
                ((LayoutParams)localObject2).f();
              }
              else
              {
                boolean bool;
                if (paramInt != 2)
                {
                  bool = localBehavior.onDependentViewChanged(this, (View)localObject1, localView);
                }
                else
                {
                  localBehavior.onDependentViewRemoved(this, (View)localObject1, localView);
                  bool = true;
                }
                if (paramInt == 1) {
                  ((LayoutParams)localObject2).a(bool);
                }
              }
            }
            i2 += 1;
          }
        }
      }
      i1 += 1;
    }
    a(localRect1);
    a(localRect2);
    a(localRect3);
  }
  
  void a(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (f != null)
    {
      Rect localRect1 = d();
      Rect localRect2 = d();
      Rect localRect3 = d();
      a(f, localRect1);
      int i1 = 0;
      a(paramView, false, localRect2);
      int i2 = paramView.getMeasuredWidth();
      int i3 = paramView.getMeasuredHeight();
      a(paramView, paramInt, localRect1, localRect3, localLayoutParams, i2, i3);
      if (left == left)
      {
        paramInt = i1;
        if (top == top) {}
      }
      else
      {
        paramInt = 1;
      }
      a(localLayoutParams, localRect3, i2, i3);
      i1 = left - left;
      i2 = top - top;
      if (i1 != 0) {
        ViewCompat.offsetLeftAndRight(paramView, i1);
      }
      if (i2 != 0) {
        ViewCompat.offsetTopAndBottom(paramView, i2);
      }
      if (paramInt != 0)
      {
        Behavior localBehavior = localLayoutParams.getBehavior();
        if (localBehavior != null) {
          localBehavior.onDependentViewChanged(this, paramView, f);
        }
      }
      a(localRect1);
      a(localRect2);
      a(localRect3);
    }
  }
  
  void a(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = paramView.getMeasuredWidth();
    int i2 = paramView.getMeasuredHeight();
    a(paramView, paramInt, paramRect1, paramRect2, localLayoutParams, i1, i2);
    a(localLayoutParams, paramRect2, i1, i2);
  }
  
  void a(View paramView, Rect paramRect)
  {
    ViewGroupUtils.getDescendantRect(this, paramView, paramRect);
  }
  
  void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((!paramView.isLayoutRequested()) && (paramView.getVisibility() != 8))
    {
      if (paramBoolean)
      {
        a(paramView, paramRect);
        return;
      }
      paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
      return;
    }
    paramRect.setEmpty();
  }
  
  void b()
  {
    if (n)
    {
      if (r == null) {
        r = new b();
      }
      getViewTreeObserver().addOnPreDrawListener(r);
    }
    s = true;
  }
  
  void b(View paramView, Rect paramRect)
  {
    ((LayoutParams)paramView.getLayoutParams()).a(paramRect);
  }
  
  void c()
  {
    if ((n) && (r != null)) {
      getViewTreeObserver().removeOnPreDrawListener(r);
    }
    s = false;
  }
  
  void c(View paramView, Rect paramRect)
  {
    paramRect.set(((LayoutParams)paramView.getLayoutParams()).a());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void dispatchDependentViewsChanged(@NonNull View paramView)
  {
    List localList = h.getIncomingEdges(paramView);
    if ((localList != null) && (!localList.isEmpty()))
    {
      int i1 = 0;
      while (i1 < localList.size())
      {
        View localView = (View)localList.get(i1);
        Behavior localBehavior = ((LayoutParams)localView.getLayoutParams()).getBehavior();
        if (localBehavior != null) {
          localBehavior.onDependentViewChanged(this, localView, paramView);
        }
        i1 += 1;
      }
    }
  }
  
  public boolean doViewsOverlap(@NonNull View paramView1, @NonNull View paramView2)
  {
    int i1 = paramView1.getVisibility();
    boolean bool2 = false;
    if ((i1 == 0) && (paramView2.getVisibility() == 0))
    {
      Rect localRect = d();
      if (paramView1.getParent() != this) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      a(paramView1, bool1, localRect);
      paramView1 = d();
      if (paramView2.getParent() != this) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      a(paramView2, bool1, paramView1);
      boolean bool1 = bool2;
      try
      {
        if (left <= right)
        {
          bool1 = bool2;
          if (top <= bottom)
          {
            bool1 = bool2;
            if (right >= left)
            {
              i1 = bottom;
              int i2 = top;
              bool1 = bool2;
              if (i1 >= i2) {
                bool1 = true;
              }
            }
          }
        }
        return bool1;
      }
      finally
      {
        a(localRect);
        a(paramView1);
      }
    }
    return false;
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (a != null)
    {
      float f1 = a.getScrimOpacity(this, paramView);
      if (f1 > 0.0F)
      {
        if (l == null) {
          l = new Paint();
        }
        l.setColor(a.getScrimColor(this, paramView));
        l.setAlpha(a(Math.round(f1 * 255.0F), 0, 255));
        int i1 = paramCanvas.save();
        if (paramView.isOpaque()) {
          paramCanvas.clipRect(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom(), Region.Op.DIFFERENCE);
        }
        paramCanvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), l);
        paramCanvas.restoreToCount(i1);
      }
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    Drawable localDrawable = v;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = false | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool1) {
      invalidate();
    }
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-2, -2);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  @NonNull
  public List<View> getDependencies(@NonNull View paramView)
  {
    paramView = h.getOutgoingEdges(paramView);
    j.clear();
    if (paramView != null) {
      j.addAll(paramView);
    }
    return j;
  }
  
  @VisibleForTesting
  final List<View> getDependencySortedChildren()
  {
    e();
    return Collections.unmodifiableList(g);
  }
  
  @NonNull
  public List<View> getDependents(@NonNull View paramView)
  {
    paramView = h.getIncomingEdges(paramView);
    j.clear();
    if (paramView != null) {
      j.addAll(paramView);
    }
    return j;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public final WindowInsetsCompat getLastWindowInsets()
  {
    return t;
  }
  
  public int getNestedScrollAxes()
  {
    return x.getNestedScrollAxes();
  }
  
  @Nullable
  public Drawable getStatusBarBackground()
  {
    return v;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public boolean isPointInChildBounds(@NonNull View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = d();
    a(paramView, localRect);
    try
    {
      boolean bool = localRect.contains(paramInt1, paramInt2);
      return bool;
    }
    finally
    {
      a(localRect);
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a(false);
    if (s)
    {
      if (r == null) {
        r = new b();
      }
      getViewTreeObserver().addOnPreDrawListener(r);
    }
    if ((t == null) && (ViewCompat.getFitsSystemWindows(this))) {
      ViewCompat.requestApplyInsets(this);
    }
    n = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a(false);
    if ((s) && (r != null)) {
      getViewTreeObserver().removeOnPreDrawListener(r);
    }
    if (q != null) {
      onStopNestedScroll(q);
    }
    n = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((u) && (v != null))
    {
      int i1;
      if (t != null) {
        i1 = t.getSystemWindowInsetTop();
      } else {
        i1 = 0;
      }
      if (i1 > 0)
      {
        v.setBounds(0, 0, getWidth(), i1);
        v.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 == 0) {
      a(true);
    }
    boolean bool = a(paramMotionEvent, 0);
    if ((i1 == 1) || (i1 == 3)) {
      a(true);
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = ViewCompat.getLayoutDirection(this);
    paramInt3 = g.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = (View)g.get(paramInt1);
      if (localView.getVisibility() != 8)
      {
        Behavior localBehavior = ((LayoutParams)localView.getLayoutParams()).getBehavior();
        if ((localBehavior == null) || (!localBehavior.onLayoutChild(this, localView, paramInt2))) {
          onLayoutChild(localView, paramInt2);
        }
      }
      paramInt1 += 1;
    }
  }
  
  public void onLayoutChild(@NonNull View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!localLayoutParams.b())
    {
      if (f != null)
      {
        a(paramView, f, paramInt);
        return;
      }
      if (keyline >= 0)
      {
        a(paramView, keyline, paramInt);
        return;
      }
      b(paramView, paramInt);
      return;
    }
    throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    e();
    a();
    int i11 = getPaddingLeft();
    int i12 = getPaddingTop();
    int i13 = getPaddingRight();
    int i14 = getPaddingBottom();
    int i15 = ViewCompat.getLayoutDirection(this);
    int i3;
    if (i15 == 1) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    int i16 = View.MeasureSpec.getMode(paramInt1);
    int i17 = View.MeasureSpec.getSize(paramInt1);
    int i18 = View.MeasureSpec.getMode(paramInt2);
    int i19 = View.MeasureSpec.getSize(paramInt2);
    int i8 = getSuggestedMinimumWidth();
    int i2 = getSuggestedMinimumHeight();
    int i4;
    if ((t != null) && (ViewCompat.getFitsSystemWindows(this))) {
      i4 = 1;
    } else {
      i4 = 0;
    }
    int i5 = g.size();
    int i7 = 0;
    int i6 = 0;
    while (i6 < i5)
    {
      View localView = (View)g.get(i6);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i9;
        if ((keyline >= 0) && (i16 != 0))
        {
          i1 = b(keyline);
          i9 = GravityCompat.getAbsoluteGravity(d(gravity), i15) & 0x7;
          if (((i9 == 3) && (i3 == 0)) || ((i9 == 5) && (i3 != 0)))
          {
            i1 = Math.max(0, i17 - i13 - i1);
            break label289;
          }
          if (((i9 == 5) && (i3 == 0)) || ((i9 == 3) && (i3 != 0)))
          {
            i1 = Math.max(0, i1 - i11);
            break label289;
          }
        }
        int i1 = 0;
        label289:
        int i10 = i2;
        if ((i4 != 0) && (!ViewCompat.getFitsSystemWindows(localView)))
        {
          i2 = t.getSystemWindowInsetLeft();
          int i21 = t.getSystemWindowInsetRight();
          i9 = t.getSystemWindowInsetTop();
          int i20 = t.getSystemWindowInsetBottom();
          i2 = View.MeasureSpec.makeMeasureSpec(i17 - (i2 + i21), i16);
          i9 = View.MeasureSpec.makeMeasureSpec(i19 - (i9 + i20), i18);
        }
        else
        {
          i2 = paramInt1;
          i9 = paramInt2;
        }
        Behavior localBehavior = localLayoutParams.getBehavior();
        if (localBehavior != null) {
          if (localBehavior.onMeasureChild(this, localView, i2, i1, i9, 0)) {
            break label425;
          }
        }
        onMeasureChild(localView, i2, i1, i9, 0);
        label425:
        i8 = Math.max(i8, i11 + i13 + localView.getMeasuredWidth() + leftMargin + rightMargin);
        i2 = Math.max(i10, i12 + i14 + localView.getMeasuredHeight() + topMargin + bottomMargin);
        i7 = View.combineMeasuredStates(i7, localView.getMeasuredState());
      }
      i6 += 1;
    }
    setMeasuredDimension(View.resolveSizeAndState(i8, paramInt1, 0xFF000000 & i7), View.resolveSizeAndState(i2, paramInt2, i7 << 16));
  }
  
  public void onMeasureChild(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool2;
    for (boolean bool1 = false; i1 < i2; bool1 = bool2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
      {
        bool2 = bool1;
      }
      else
      {
        Object localObject = (LayoutParams)localView.getLayoutParams();
        if (!((LayoutParams)localObject).b(0))
        {
          bool2 = bool1;
        }
        else
        {
          localObject = ((LayoutParams)localObject).getBehavior();
          bool2 = bool1;
          if (localObject != null) {
            bool2 = bool1 | ((Behavior)localObject).onNestedFling(this, localView, paramView, paramFloat1, paramFloat2, paramBoolean);
          }
        }
      }
      i1 += 1;
    }
    if (bool1) {
      a(1);
    }
    return bool1;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool2;
    for (boolean bool1 = false; i1 < i2; bool1 = bool2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
      {
        bool2 = bool1;
      }
      else
      {
        Object localObject = (LayoutParams)localView.getLayoutParams();
        if (!((LayoutParams)localObject).b(0))
        {
          bool2 = bool1;
        }
        else
        {
          localObject = ((LayoutParams)localObject).getBehavior();
          bool2 = bool1;
          if (localObject != null) {
            bool2 = bool1 | ((Behavior)localObject).onNestedPreFling(this, localView, paramView, paramFloat1, paramFloat2);
          }
        }
      }
      i1 += 1;
    }
    return bool1;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    onNestedPreScroll(paramView, paramInt1, paramInt2, paramArrayOfInt, 0);
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    int i7 = getChildCount();
    int i6 = 0;
    int i3 = 0;
    int i4 = 0;
    int i1;
    for (int i2 = 0; i3 < i7; i2 = i1)
    {
      View localView = getChildAt(i3);
      int i5;
      if (localView.getVisibility() == 8)
      {
        i5 = i4;
        i1 = i2;
      }
      else
      {
        Object localObject = (LayoutParams)localView.getLayoutParams();
        if (!((LayoutParams)localObject).b(paramInt3))
        {
          i5 = i4;
          i1 = i2;
        }
        else
        {
          localObject = ((LayoutParams)localObject).getBehavior();
          i5 = i4;
          i1 = i2;
          if (localObject != null)
          {
            int[] arrayOfInt = k;
            k[1] = 0;
            arrayOfInt[0] = 0;
            ((Behavior)localObject).onNestedPreScroll(this, localView, paramView, paramInt1, paramInt2, k, paramInt3);
            if (paramInt1 > 0) {
              i1 = Math.max(i4, k[0]);
            } else {
              i1 = Math.min(i4, k[0]);
            }
            if (paramInt2 > 0) {
              i2 = Math.max(i2, k[1]);
            } else {
              i2 = Math.min(i2, k[1]);
            }
            i5 = i1;
            i1 = i2;
            i6 = 1;
          }
        }
      }
      i3 += 1;
      i4 = i5;
    }
    paramArrayOfInt[0] = i4;
    paramArrayOfInt[1] = i2;
    if (i6 != 0) {
      a(1);
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    onNestedScroll(paramView, paramInt1, paramInt2, paramInt3, paramInt4, 0);
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i3 = getChildCount();
    int i2 = 0;
    int i1 = 0;
    while (i1 < i3)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() != 8)
      {
        Object localObject = (LayoutParams)localView.getLayoutParams();
        if (((LayoutParams)localObject).b(paramInt5))
        {
          localObject = ((LayoutParams)localObject).getBehavior();
          if (localObject != null)
          {
            ((Behavior)localObject).onNestedScroll(this, localView, paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
            i2 = 1;
          }
        }
      }
      i1 += 1;
    }
    if (i2 != 0) {
      a(1);
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    onNestedScrollAccepted(paramView1, paramView2, paramInt, 0);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    x.onNestedScrollAccepted(paramView1, paramView2, paramInt1, paramInt2);
    q = paramView2;
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      Object localObject = (LayoutParams)localView.getLayoutParams();
      if (((LayoutParams)localObject).b(paramInt2))
      {
        localObject = ((LayoutParams)localObject).getBehavior();
        if (localObject != null) {
          ((Behavior)localObject).onNestedScrollAccepted(this, localView, paramView1, paramView2, paramInt1, paramInt2);
        }
      }
      i1 += 1;
    }
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
    paramParcelable = a;
    int i1 = 0;
    int i2 = getChildCount();
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      int i3 = localView.getId();
      Behavior localBehavior = a(localView).getBehavior();
      if ((i3 != -1) && (localBehavior != null))
      {
        Parcelable localParcelable = (Parcelable)paramParcelable.get(i3);
        if (localParcelable != null) {
          localBehavior.onRestoreInstanceState(this, localView, localParcelable);
        }
      }
      i1 += 1;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      int i3 = ((View)localObject).getId();
      Behavior localBehavior = ((LayoutParams)((View)localObject).getLayoutParams()).getBehavior();
      if ((i3 != -1) && (localBehavior != null))
      {
        localObject = localBehavior.onSaveInstanceState(this, (View)localObject);
        if (localObject != null) {
          localSparseArray.append(i3, localObject);
        }
      }
      i1 += 1;
    }
    a = localSparseArray;
    return localSavedState;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    return onStartNestedScroll(paramView1, paramView2, paramInt, 0);
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool1 = false;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        Behavior localBehavior = localLayoutParams.getBehavior();
        if (localBehavior != null)
        {
          boolean bool2 = localBehavior.onStartNestedScroll(this, localView, paramView1, paramView2, paramInt1, paramInt2);
          localLayoutParams.a(paramInt2, bool2);
          bool1 |= bool2;
        }
        else
        {
          localLayoutParams.a(paramInt2, false);
        }
      }
      i1 += 1;
    }
    return bool1;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    onStopNestedScroll(paramView, 0);
  }
  
  public void onStopNestedScroll(View paramView, int paramInt)
  {
    x.onStopNestedScroll(paramView, paramInt);
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.b(paramInt))
      {
        Behavior localBehavior = localLayoutParams.getBehavior();
        if (localBehavior != null) {
          localBehavior.onStopNestedScroll(this, localView, paramView, paramInt);
        }
        localLayoutParams.a(paramInt);
        localLayoutParams.f();
      }
      i1 += 1;
    }
    q = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    boolean bool1;
    if (p == null)
    {
      bool1 = a(paramMotionEvent, 1);
      bool2 = bool1;
      if (bool1) {
        break label44;
      }
    }
    boolean bool3;
    label44:
    do
    {
      bool3 = false;
      bool1 = bool2;
      bool2 = bool3;
      break;
      bool1 = false;
      localBehavior = ((LayoutParams)p.getLayoutParams()).getBehavior();
      bool2 = bool1;
    } while (localBehavior == null);
    boolean bool2 = localBehavior.onTouchEvent(this, p, paramMotionEvent);
    View localView = p;
    Behavior localBehavior = null;
    if (localView == null)
    {
      bool3 = bool2 | super.onTouchEvent(paramMotionEvent);
      paramMotionEvent = localBehavior;
    }
    else
    {
      bool3 = bool2;
      paramMotionEvent = localBehavior;
      if (bool1)
      {
        long l1 = SystemClock.uptimeMillis();
        paramMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        super.onTouchEvent(paramMotionEvent);
        bool3 = bool2;
      }
    }
    if (paramMotionEvent != null) {
      paramMotionEvent.recycle();
    }
    if ((i1 == 1) || (i1 == 3)) {
      a(false);
    }
    return bool3;
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    Behavior localBehavior = ((LayoutParams)paramView.getLayoutParams()).getBehavior();
    if ((localBehavior != null) && (localBehavior.onRequestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean))) {
      return true;
    }
    return super.requestChildRectangleOnScreen(paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if ((paramBoolean) && (!m))
    {
      a(false);
      m = true;
    }
  }
  
  public void setFitsSystemWindows(boolean paramBoolean)
  {
    super.setFitsSystemWindows(paramBoolean);
    f();
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    e = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(@Nullable Drawable paramDrawable)
  {
    if (v != paramDrawable)
    {
      Drawable localDrawable2 = v;
      Drawable localDrawable1 = null;
      if (localDrawable2 != null) {
        v.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable1 = paramDrawable.mutate();
      }
      v = localDrawable1;
      if (v != null)
      {
        if (v.isStateful()) {
          v.setState(getDrawableState());
        }
        DrawableCompat.setLayoutDirection(v, ViewCompat.getLayoutDirection(this));
        paramDrawable = v;
        boolean bool;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramDrawable.setVisible(bool, false);
        v.setCallback(this);
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public void setStatusBarBackgroundColor(@ColorInt int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(@DrawableRes int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = ContextCompat.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setStatusBarBackground(localDrawable);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    boolean bool;
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    }
    if ((v != null) && (v.isVisible() != bool)) {
      v.setVisible(bool, false);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == v);
  }
  
  public static abstract interface AttachedBehavior
  {
    @NonNull
    public abstract CoordinatorLayout.Behavior getBehavior();
  }
  
  public static abstract class Behavior<V extends View>
  {
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet) {}
    
    @Nullable
    public static Object getTag(@NonNull View paramView)
    {
      return getLayoutParamsi;
    }
    
    public static void setTag(@NonNull View paramView, @Nullable Object paramObject)
    {
      getLayoutParamsi = paramObject;
    }
    
    public boolean blocksInteractionBelow(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV)
    {
      return getScrimOpacity(paramCoordinatorLayout, paramV) > 0.0F;
    }
    
    public boolean getInsetDodgeRect(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull Rect paramRect)
    {
      return false;
    }
    
    @ColorInt
    public int getScrimColor(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV)
    {
      return -16777216;
    }
    
    @FloatRange(from=0.0D, to=1.0D)
    public float getScrimOpacity(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV)
    {
      return 0.0F;
    }
    
    public boolean layoutDependsOn(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView)
    {
      return false;
    }
    
    @NonNull
    public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull WindowInsetsCompat paramWindowInsetsCompat)
    {
      return paramWindowInsetsCompat;
    }
    
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams paramLayoutParams) {}
    
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView)
    {
      return false;
    }
    
    public void onDependentViewRemoved(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView) {}
    
    public void onDetachedFromLayoutParams() {}
    
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean onLayoutChild(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, int paramInt)
    {
      return false;
    }
    
    public boolean onMeasureChild(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return false;
    }
    
    public boolean onNestedFling(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
    {
      return false;
    }
    
    public boolean onNestedPreFling(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, float paramFloat1, float paramFloat2)
    {
      return false;
    }
    
    @Deprecated
    public void onNestedPreScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt1, int paramInt2, @NonNull int[] paramArrayOfInt) {}
    
    public void onNestedPreScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt1, int paramInt2, @NonNull int[] paramArrayOfInt, int paramInt3)
    {
      if (paramInt3 == 0) {
        onNestedPreScroll(paramCoordinatorLayout, paramV, paramView, paramInt1, paramInt2, paramArrayOfInt);
      }
    }
    
    @Deprecated
    public void onNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void onNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      if (paramInt5 == 0) {
        onNestedScroll(paramCoordinatorLayout, paramV, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    @Deprecated
    public void onNestedScrollAccepted(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView1, @NonNull View paramView2, int paramInt) {}
    
    public void onNestedScrollAccepted(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0) {
        onNestedScrollAccepted(paramCoordinatorLayout, paramV, paramView1, paramView2, paramInt1);
      }
    }
    
    public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull Rect paramRect, boolean paramBoolean)
    {
      return false;
    }
    
    public void onRestoreInstanceState(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull Parcelable paramParcelable) {}
    
    @Nullable
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV)
    {
      return View.BaseSavedState.EMPTY_STATE;
    }
    
    @Deprecated
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView1, @NonNull View paramView2, int paramInt)
    {
      return false;
    }
    
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView1, @NonNull View paramView2, int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0) {
        return onStartNestedScroll(paramCoordinatorLayout, paramV, paramView1, paramView2, paramInt1);
      }
      return false;
    }
    
    @Deprecated
    public void onStopNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView) {}
    
    public void onStopNestedScroll(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull View paramView, int paramInt)
    {
      if (paramInt == 0) {
        onStopNestedScroll(paramCoordinatorLayout, paramV, paramView);
      }
    }
    
    public boolean onTouchEvent(@NonNull CoordinatorLayout paramCoordinatorLayout, @NonNull V paramV, @NonNull MotionEvent paramMotionEvent)
    {
      return false;
    }
  }
  
  @Deprecated
  @Retention(RetentionPolicy.RUNTIME)
  public static @interface DefaultBehavior
  {
    Class<? extends CoordinatorLayout.Behavior> value();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface DispatchChangeEvent {}
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    CoordinatorLayout.Behavior a;
    public int anchorGravity = 0;
    boolean b = false;
    int c = -1;
    int d;
    public int dodgeInsetEdges = 0;
    int e;
    View f;
    View g;
    public int gravity = 0;
    final Rect h = new Rect();
    Object i;
    public int insetEdge = 0;
    private boolean j;
    private boolean k;
    public int keyline = -1;
    private boolean l;
    private boolean m;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    LayoutParams(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout_Layout);
      gravity = localTypedArray.getInteger(R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
      c = localTypedArray.getResourceId(R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
      anchorGravity = localTypedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
      keyline = localTypedArray.getInteger(R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
      insetEdge = localTypedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
      dodgeInsetEdges = localTypedArray.getInt(R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
      b = localTypedArray.hasValue(R.styleable.CoordinatorLayout_Layout_layout_behavior);
      if (b) {
        a = CoordinatorLayout.a(paramContext, paramAttributeSet, localTypedArray.getString(R.styleable.CoordinatorLayout_Layout_layout_behavior));
      }
      localTypedArray.recycle();
      if (a != null) {
        a.onAttachedToLayoutParams(this);
      }
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    private void a(View paramView, CoordinatorLayout paramCoordinatorLayout)
    {
      f = paramCoordinatorLayout.findViewById(c);
      if (f != null)
      {
        if (f == paramCoordinatorLayout)
        {
          if (paramCoordinatorLayout.isInEditMode())
          {
            g = null;
            f = null;
            return;
          }
          throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
        }
        View localView = f;
        for (localObject = f.getParent(); (localObject != paramCoordinatorLayout) && (localObject != null); localObject = ((ViewParent)localObject).getParent())
        {
          if (localObject == paramView)
          {
            if (paramCoordinatorLayout.isInEditMode())
            {
              g = null;
              f = null;
              return;
            }
            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
          }
          if ((localObject instanceof View)) {
            localView = (View)localObject;
          }
        }
        g = localView;
        return;
      }
      if (paramCoordinatorLayout.isInEditMode())
      {
        g = null;
        f = null;
        return;
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Could not find CoordinatorLayout descendant view with id ");
      ((StringBuilder)localObject).append(paramCoordinatorLayout.getResources().getResourceName(c));
      ((StringBuilder)localObject).append(" to anchor view ");
      ((StringBuilder)localObject).append(paramView);
      throw new IllegalStateException(((StringBuilder)localObject).toString());
    }
    
    private boolean a(View paramView, int paramInt)
    {
      int n = GravityCompat.getAbsoluteGravity(getLayoutParamsinsetEdge, paramInt);
      return (n != 0) && ((GravityCompat.getAbsoluteGravity(dodgeInsetEdges, paramInt) & n) == n);
    }
    
    private boolean b(View paramView, CoordinatorLayout paramCoordinatorLayout)
    {
      if (f.getId() != c) {
        return false;
      }
      View localView = f;
      ViewParent localViewParent = f.getParent();
      while (localViewParent != paramCoordinatorLayout) {
        if ((localViewParent != null) && (localViewParent != paramView))
        {
          if ((localViewParent instanceof View)) {
            localView = (View)localViewParent;
          }
          localViewParent = localViewParent.getParent();
        }
        else
        {
          g = null;
          f = null;
          return false;
        }
      }
      g = localView;
      return true;
    }
    
    Rect a()
    {
      return h;
    }
    
    void a(int paramInt)
    {
      a(paramInt, false);
    }
    
    void a(int paramInt, boolean paramBoolean)
    {
      switch (paramInt)
      {
      default: 
        return;
      case 1: 
        l = paramBoolean;
        return;
      }
      k = paramBoolean;
    }
    
    void a(Rect paramRect)
    {
      h.set(paramRect);
    }
    
    void a(boolean paramBoolean)
    {
      m = paramBoolean;
    }
    
    boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView)
    {
      if (j) {
        return true;
      }
      boolean bool2 = j;
      boolean bool1;
      if (a != null) {
        bool1 = a.blocksInteractionBelow(paramCoordinatorLayout, paramView);
      } else {
        bool1 = false;
      }
      bool1 |= bool2;
      j = bool1;
      return bool1;
    }
    
    boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      return (paramView2 == g) || (a(paramView2, ViewCompat.getLayoutDirection(paramCoordinatorLayout))) || ((a != null) && (a.layoutDependsOn(paramCoordinatorLayout, paramView1, paramView2)));
    }
    
    View b(CoordinatorLayout paramCoordinatorLayout, View paramView)
    {
      if (c == -1)
      {
        g = null;
        f = null;
        return null;
      }
      if ((f == null) || (!b(paramView, paramCoordinatorLayout))) {
        a(paramView, paramCoordinatorLayout);
      }
      return f;
    }
    
    boolean b()
    {
      return (f == null) && (c != -1);
    }
    
    boolean b(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return false;
      case 1: 
        return l;
      }
      return k;
    }
    
    boolean c()
    {
      if (a == null) {
        j = false;
      }
      return j;
    }
    
    void d()
    {
      j = false;
    }
    
    boolean e()
    {
      return m;
    }
    
    void f()
    {
      m = false;
    }
    
    void g()
    {
      g = null;
      f = null;
    }
    
    @IdRes
    public int getAnchorId()
    {
      return c;
    }
    
    @Nullable
    public CoordinatorLayout.Behavior getBehavior()
    {
      return a;
    }
    
    public void setAnchorId(@IdRes int paramInt)
    {
      g();
      c = paramInt;
    }
    
    public void setBehavior(@Nullable CoordinatorLayout.Behavior paramBehavior)
    {
      if (a != paramBehavior)
      {
        if (a != null) {
          a.onDetachedFromLayoutParams();
        }
        a = paramBehavior;
        i = null;
        b = true;
        if (paramBehavior != null) {
          paramBehavior.onAttachedToLayoutParams(this);
        }
      }
    }
  }
  
  protected static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public CoordinatorLayout.SavedState a(Parcel paramAnonymousParcel)
      {
        return new CoordinatorLayout.SavedState(paramAnonymousParcel, null);
      }
      
      public CoordinatorLayout.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new CoordinatorLayout.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public CoordinatorLayout.SavedState[] a(int paramAnonymousInt)
      {
        return new CoordinatorLayout.SavedState[paramAnonymousInt];
      }
    };
    SparseArray<Parcelable> a;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      int j = paramParcel.readInt();
      int[] arrayOfInt = new int[j];
      paramParcel.readIntArray(arrayOfInt);
      paramParcel = paramParcel.readParcelableArray(paramClassLoader);
      a = new SparseArray(j);
      int i = 0;
      while (i < j)
      {
        a.append(arrayOfInt[i], paramParcel[i]);
        i += 1;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      Object localObject = a;
      int j = 0;
      int i;
      if (localObject != null) {
        i = a.size();
      } else {
        i = 0;
      }
      paramParcel.writeInt(i);
      localObject = new int[i];
      Parcelable[] arrayOfParcelable = new Parcelable[i];
      while (j < i)
      {
        localObject[j] = a.keyAt(j);
        arrayOfParcelable[j] = ((Parcelable)a.valueAt(j));
        j += 1;
      }
      paramParcel.writeIntArray((int[])localObject);
      paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
    }
  }
  
  private class a
    implements ViewGroup.OnHierarchyChangeListener
  {
    a() {}
    
    public void onChildViewAdded(View paramView1, View paramView2)
    {
      if (e != null) {
        e.onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public void onChildViewRemoved(View paramView1, View paramView2)
    {
      a(2);
      if (e != null) {
        e.onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
  
  class b
    implements ViewTreeObserver.OnPreDrawListener
  {
    b() {}
    
    public boolean onPreDraw()
    {
      a(0);
      return true;
    }
  }
  
  static class c
    implements Comparator<View>
  {
    c() {}
    
    public int a(View paramView1, View paramView2)
    {
      float f1 = ViewCompat.getZ(paramView1);
      float f2 = ViewCompat.getZ(paramView2);
      if (f1 > f2) {
        return -1;
      }
      if (f1 < f2) {
        return 1;
      }
      return 0;
    }
  }
}
