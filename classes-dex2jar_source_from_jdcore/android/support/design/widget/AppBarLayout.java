package android.support.design.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.ThemeEnforcement;
import android.support.v4.math.MathUtils;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class AppBarLayout
  extends LinearLayout
{
  private int a = -1;
  private int b = -1;
  private int c = -1;
  private boolean d;
  private int e = 0;
  private WindowInsetsCompat f;
  private List<BaseOnOffsetChangedListener> g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private int[] l;
  
  public AppBarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    if (Build.VERSION.SDK_INT >= 21)
    {
      j.a(this);
      j.a(this, paramAttributeSet, 0, R.style.Widget_Design_AppBarLayout);
    }
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout, new int[0]);
    ViewCompat.setBackground(this, paramContext.getDrawable(R.styleable.AppBarLayout_android_background));
    if (paramContext.hasValue(R.styleable.AppBarLayout_expanded)) {
      a(paramContext.getBoolean(R.styleable.AppBarLayout_expanded, false), false, false);
    }
    if ((Build.VERSION.SDK_INT >= 21) && (paramContext.hasValue(R.styleable.AppBarLayout_elevation))) {
      j.a(this, paramContext.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0));
    }
    if (Build.VERSION.SDK_INT >= 26)
    {
      if (paramContext.hasValue(R.styleable.AppBarLayout_android_keyboardNavigationCluster)) {
        setKeyboardNavigationCluster(paramContext.getBoolean(R.styleable.AppBarLayout_android_keyboardNavigationCluster, false));
      }
      if (paramContext.hasValue(R.styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
        setTouchscreenBlocksFocus(paramContext.getBoolean(R.styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
      }
    }
    k = paramContext.getBoolean(R.styleable.AppBarLayout_liftOnScroll, false);
    paramContext.recycle();
    ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener()
    {
      public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
      {
        return a(paramAnonymousWindowInsetsCompat);
      }
    });
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int m;
    if (paramBoolean1) {
      m = 1;
    } else {
      m = 2;
    }
    int i1 = 0;
    int n;
    if (paramBoolean2) {
      n = 4;
    } else {
      n = 0;
    }
    if (paramBoolean3) {
      i1 = 8;
    }
    e = (m | n | i1);
    requestLayout();
  }
  
  private boolean b(boolean paramBoolean)
  {
    if (i != paramBoolean)
    {
      i = paramBoolean;
      refreshDrawableState();
      return true;
    }
    return false;
  }
  
  private boolean d()
  {
    int n = getChildCount();
    int m = 0;
    while (m < n)
    {
      if (((LayoutParams)getChildAt(m).getLayoutParams()).a()) {
        return true;
      }
      m += 1;
    }
    return false;
  }
  
  private void e()
  {
    a = -1;
    b = -1;
    c = -1;
  }
  
  WindowInsetsCompat a(WindowInsetsCompat paramWindowInsetsCompat)
  {
    WindowInsetsCompat localWindowInsetsCompat;
    if (ViewCompat.getFitsSystemWindows(this)) {
      localWindowInsetsCompat = paramWindowInsetsCompat;
    } else {
      localWindowInsetsCompat = null;
    }
    if (!ObjectsCompat.equals(f, localWindowInsetsCompat))
    {
      f = localWindowInsetsCompat;
      e();
    }
    return paramWindowInsetsCompat;
  }
  
  void a(int paramInt)
  {
    if (g != null)
    {
      int m = 0;
      int n = g.size();
      while (m < n)
      {
        BaseOnOffsetChangedListener localBaseOnOffsetChangedListener = (BaseOnOffsetChangedListener)g.get(m);
        if (localBaseOnOffsetChangedListener != null) {
          localBaseOnOffsetChangedListener.onOffsetChanged(this, paramInt);
        }
        m += 1;
      }
    }
  }
  
  boolean a()
  {
    return d;
  }
  
  boolean a(boolean paramBoolean)
  {
    if (j != paramBoolean)
    {
      j = paramBoolean;
      refreshDrawableState();
      return true;
    }
    return false;
  }
  
  public void addOnOffsetChangedListener(BaseOnOffsetChangedListener paramBaseOnOffsetChangedListener)
  {
    if (g == null) {
      g = new ArrayList();
    }
    if ((paramBaseOnOffsetChangedListener != null) && (!g.contains(paramBaseOnOffsetChangedListener))) {
      g.add(paramBaseOnOffsetChangedListener);
    }
  }
  
  public void addOnOffsetChangedListener(OnOffsetChangedListener paramOnOffsetChangedListener)
  {
    addOnOffsetChangedListener(paramOnOffsetChangedListener);
  }
  
  boolean b()
  {
    return getTotalScrollRange() != 0;
  }
  
  void c()
  {
    e = 0;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -2);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((Build.VERSION.SDK_INT >= 19) && ((paramLayoutParams instanceof LinearLayout.LayoutParams))) {
      return new LayoutParams((LinearLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  int getDownNestedPreScrollRange()
  {
    if (b != -1) {
      return b;
    }
    int n = getChildCount() - 1;
    for (int i1 = 0; n >= 0; i1 = m)
    {
      View localView = getChildAt(n);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      m = localView.getMeasuredHeight();
      int i2 = a;
      if ((i2 & 0x5) == 5)
      {
        i1 += topMargin + bottomMargin;
        if ((i2 & 0x8) != 0) {
          m = i1 + ViewCompat.getMinimumHeight(localView);
        } else if ((i2 & 0x2) != 0) {
          m = i1 + (m - ViewCompat.getMinimumHeight(localView));
        } else {
          m = i1 + (m - getTopInset());
        }
      }
      else
      {
        m = i1;
        if (i1 > 0) {
          break;
        }
      }
      n -= 1;
    }
    int m = Math.max(0, i1);
    b = m;
    return m;
  }
  
  int getDownNestedScrollRange()
  {
    if (c != -1) {
      return c;
    }
    int i2 = getChildCount();
    int n = 0;
    int m = 0;
    int i1;
    for (;;)
    {
      i1 = m;
      if (n >= i2) {
        break;
      }
      View localView = getChildAt(n);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      int i4 = localView.getMeasuredHeight();
      int i5 = topMargin;
      int i6 = bottomMargin;
      int i3 = a;
      i1 = m;
      if ((i3 & 0x1) == 0) {
        break;
      }
      m += i4 + (i5 + i6);
      if ((i3 & 0x2) != 0)
      {
        i1 = m - (ViewCompat.getMinimumHeight(localView) + getTopInset());
        break;
      }
      n += 1;
    }
    m = Math.max(0, i1);
    c = m;
    return m;
  }
  
  public final int getMinimumHeightForVisibleOverlappingContent()
  {
    int n = getTopInset();
    int m = ViewCompat.getMinimumHeight(this);
    if (m != 0) {
      return m * 2 + n;
    }
    m = getChildCount();
    if (m >= 1) {
      m = ViewCompat.getMinimumHeight(getChildAt(m - 1));
    } else {
      m = 0;
    }
    if (m != 0) {
      return m * 2 + n;
    }
    return getHeight() / 3;
  }
  
  int getPendingAction()
  {
    return e;
  }
  
  @Deprecated
  public float getTargetElevation()
  {
    return 0.0F;
  }
  
  @VisibleForTesting
  final int getTopInset()
  {
    if (f != null) {
      return f.getSystemWindowInsetTop();
    }
    return 0;
  }
  
  public final int getTotalScrollRange()
  {
    if (a != -1) {
      return a;
    }
    int i2 = getChildCount();
    int n = 0;
    int m = 0;
    int i1;
    for (;;)
    {
      i1 = m;
      if (n >= i2) {
        break;
      }
      View localView = getChildAt(n);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      int i4 = localView.getMeasuredHeight();
      int i3 = a;
      i1 = m;
      if ((i3 & 0x1) == 0) {
        break;
      }
      m += i4 + topMargin + bottomMargin;
      if ((i3 & 0x2) != 0)
      {
        i1 = m - ViewCompat.getMinimumHeight(localView);
        break;
      }
      n += 1;
    }
    m = Math.max(0, i1 - getTopInset());
    a = m;
    return m;
  }
  
  int getUpNestedPreScrollRange()
  {
    return getTotalScrollRange();
  }
  
  public boolean isLiftOnScroll()
  {
    return k;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    if (l == null) {
      l = new int[4];
    }
    int[] arrayOfInt1 = l;
    int[] arrayOfInt2 = super.onCreateDrawableState(paramInt + arrayOfInt1.length);
    if (i) {
      paramInt = R.attr.state_liftable;
    } else {
      paramInt = -R.attr.state_liftable;
    }
    arrayOfInt1[0] = paramInt;
    if ((i) && (j)) {
      paramInt = R.attr.state_lifted;
    } else {
      paramInt = -R.attr.state_lifted;
    }
    arrayOfInt1[1] = paramInt;
    if (i) {
      paramInt = R.attr.state_collapsible;
    } else {
      paramInt = -R.attr.state_collapsible;
    }
    arrayOfInt1[2] = paramInt;
    if ((i) && (j)) {
      paramInt = R.attr.state_collapsed;
    } else {
      paramInt = -R.attr.state_collapsed;
    }
    arrayOfInt1[3] = paramInt;
    return mergeDrawableStates(arrayOfInt2, arrayOfInt1);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    e();
    paramBoolean = false;
    d = false;
    paramInt2 = getChildCount();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      if (((LayoutParams)getChildAt(paramInt1).getLayoutParams()).getScrollInterpolator() != null)
      {
        d = true;
        break;
      }
      paramInt1 += 1;
    }
    if (!h)
    {
      if ((k) || (d())) {
        paramBoolean = true;
      }
      b(paramBoolean);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    e();
  }
  
  public void removeOnOffsetChangedListener(BaseOnOffsetChangedListener paramBaseOnOffsetChangedListener)
  {
    if ((g != null) && (paramBaseOnOffsetChangedListener != null)) {
      g.remove(paramBaseOnOffsetChangedListener);
    }
  }
  
  public void removeOnOffsetChangedListener(OnOffsetChangedListener paramOnOffsetChangedListener)
  {
    removeOnOffsetChangedListener(paramOnOffsetChangedListener);
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    setExpanded(paramBoolean, ViewCompat.isLaidOut(this));
  }
  
  public void setExpanded(boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramBoolean1, paramBoolean2, true);
  }
  
  public void setLiftOnScroll(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public boolean setLiftable(boolean paramBoolean)
  {
    h = true;
    return b(paramBoolean);
  }
  
  public boolean setLifted(boolean paramBoolean)
  {
    return a(paramBoolean);
  }
  
  public void setOrientation(int paramInt)
  {
    if (paramInt == 1)
    {
      super.setOrientation(paramInt);
      return;
    }
    throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
  }
  
  @Deprecated
  public void setTargetElevation(float paramFloat)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      j.a(this, paramFloat);
    }
  }
  
  protected static class BaseBehavior<T extends AppBarLayout>
    extends d<T>
  {
    private int b;
    private int c;
    private ValueAnimator d;
    private int e = -1;
    private boolean f;
    private float g;
    private WeakReference<View> h;
    private BaseDragCallback i;
    
    public BaseBehavior() {}
    
    public BaseBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    private int a(T paramT, int paramInt)
    {
      int i2 = paramT.getChildCount();
      int j = 0;
      while (j < i2)
      {
        Object localObject = paramT.getChildAt(j);
        int i1 = ((View)localObject).getTop();
        int n = ((View)localObject).getBottom();
        localObject = (AppBarLayout.LayoutParams)((View)localObject).getLayoutParams();
        int m = i1;
        int k = n;
        if (a(((AppBarLayout.LayoutParams)localObject).getScrollFlags(), 32))
        {
          m = i1 - topMargin;
          k = n + bottomMargin;
        }
        n = -paramInt;
        if ((m <= n) && (k >= n)) {
          return j;
        }
        j += 1;
      }
      return -1;
    }
    
    @Nullable
    private View a(CoordinatorLayout paramCoordinatorLayout)
    {
      int k = paramCoordinatorLayout.getChildCount();
      int j = 0;
      while (j < k)
      {
        View localView = paramCoordinatorLayout.getChildAt(j);
        if ((localView instanceof NestedScrollingChild)) {
          return localView;
        }
        j += 1;
      }
      return null;
    }
    
    private void a(int paramInt1, T paramT, View paramView, int paramInt2)
    {
      if (paramInt2 == 1)
      {
        paramInt2 = a();
        if (((paramInt1 < 0) && (paramInt2 == 0)) || ((paramInt1 > 0) && (paramInt2 == -paramT.getDownNestedScrollRange()))) {
          ViewCompat.stopNestedScroll(paramView, 1);
        }
      }
    }
    
    private void a(CoordinatorLayout paramCoordinatorLayout, T paramT, int paramInt, float paramFloat)
    {
      int j = Math.abs(a() - paramInt);
      paramFloat = Math.abs(paramFloat);
      if (paramFloat > 0.0F) {
        j = Math.round(j / paramFloat * 1000.0F) * 3;
      } else {
        j = (int)((j / paramT.getHeight() + 1.0F) * 150.0F);
      }
      a(paramCoordinatorLayout, paramT, paramInt, j);
    }
    
    private void a(final CoordinatorLayout paramCoordinatorLayout, final T paramT, int paramInt1, int paramInt2)
    {
      int j = a();
      if (j == paramInt1)
      {
        if ((d != null) && (d.isRunning())) {
          d.cancel();
        }
        return;
      }
      if (d == null)
      {
        d = new ValueAnimator();
        d.setInterpolator(android.support.design.animation.AnimationUtils.DECELERATE_INTERPOLATOR);
        d.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            a(paramCoordinatorLayout, paramT, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          }
        });
      }
      else
      {
        d.cancel();
      }
      d.setDuration(Math.min(paramInt2, 600));
      d.setIntValues(new int[] { j, paramInt1 });
      d.start();
    }
    
    private void a(CoordinatorLayout paramCoordinatorLayout, T paramT, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      View localView = c(paramT, paramInt1);
      if (localView != null)
      {
        int j = ((AppBarLayout.LayoutParams)localView.getLayoutParams()).getScrollFlags();
        if ((j & 0x1) != 0)
        {
          int k = ViewCompat.getMinimumHeight(localView);
          if ((paramInt2 > 0) && ((j & 0xC) != 0))
          {
            if (-paramInt1 < localView.getBottom() - k - paramT.getTopInset()) {}
          }
          else {
            while (((j & 0x2) != 0) && (-paramInt1 >= localView.getBottom() - k - paramT.getTopInset()))
            {
              bool1 = true;
              break;
            }
          }
        }
        boolean bool1 = false;
        boolean bool2 = bool1;
        if (paramT.isLiftOnScroll())
        {
          localView = a(paramCoordinatorLayout);
          bool2 = bool1;
          if (localView != null) {
            if (localView.getScrollY() > 0) {
              bool2 = true;
            } else {
              bool2 = false;
            }
          }
        }
        bool1 = paramT.a(bool2);
        if ((Build.VERSION.SDK_INT >= 11) && ((paramBoolean) || ((bool1) && (c(paramCoordinatorLayout, paramT))))) {
          paramT.jumpDrawablesToCurrentState();
        }
      }
    }
    
    private static boolean a(int paramInt1, int paramInt2)
    {
      return (paramInt1 & paramInt2) == paramInt2;
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, T paramT, View paramView)
    {
      return (paramT.b()) && (paramCoordinatorLayout.getHeight() - paramView.getHeight() <= paramT.getHeight());
    }
    
    private int b(T paramT, int paramInt)
    {
      int m = Math.abs(paramInt);
      int n = paramT.getChildCount();
      int k = 0;
      int j = 0;
      while (j < n)
      {
        View localView = paramT.getChildAt(j);
        AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
        Interpolator localInterpolator = localLayoutParams.getScrollInterpolator();
        if ((m >= localView.getTop()) && (m <= localView.getBottom()))
        {
          if (localInterpolator == null) {
            break;
          }
          n = localLayoutParams.getScrollFlags();
          j = k;
          if ((n & 0x1) != 0)
          {
            k = 0 + (localView.getHeight() + topMargin + bottomMargin);
            j = k;
            if ((n & 0x2) != 0) {
              j = k - ViewCompat.getMinimumHeight(localView);
            }
          }
          k = j;
          if (ViewCompat.getFitsSystemWindows(localView)) {
            k = j - paramT.getTopInset();
          }
          if (k <= 0) {
            break;
          }
          j = localView.getTop();
          float f1 = k;
          j = Math.round(f1 * localInterpolator.getInterpolation((m - j) / f1));
          return Integer.signum(paramInt) * (localView.getTop() + j);
        }
        j += 1;
      }
      return paramInt;
    }
    
    private void b(CoordinatorLayout paramCoordinatorLayout, T paramT)
    {
      int i1 = a();
      int m = a(paramT, i1);
      if (m >= 0)
      {
        View localView = paramT.getChildAt(m);
        AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
        int i2 = localLayoutParams.getScrollFlags();
        if ((i2 & 0x11) == 17)
        {
          int n = -localView.getTop();
          int j = -localView.getBottom();
          int k = j;
          if (m == paramT.getChildCount() - 1) {
            k = j + paramT.getTopInset();
          }
          if (a(i2, 2))
          {
            j = k + ViewCompat.getMinimumHeight(localView);
            m = n;
          }
          else
          {
            m = n;
            j = k;
            if (a(i2, 5))
            {
              j = ViewCompat.getMinimumHeight(localView) + k;
              if (i1 < j)
              {
                m = j;
                j = k;
              }
              else
              {
                m = n;
              }
            }
          }
          n = m;
          k = j;
          if (a(i2, 32))
          {
            n = m + topMargin;
            k = j - bottomMargin;
          }
          j = n;
          if (i1 < (k + n) / 2) {
            j = k;
          }
          a(paramCoordinatorLayout, paramT, MathUtils.clamp(j, -paramT.getTotalScrollRange(), 0), 0.0F);
        }
      }
    }
    
    private static View c(AppBarLayout paramAppBarLayout, int paramInt)
    {
      int j = Math.abs(paramInt);
      int k = paramAppBarLayout.getChildCount();
      paramInt = 0;
      while (paramInt < k)
      {
        View localView = paramAppBarLayout.getChildAt(paramInt);
        if ((j >= localView.getTop()) && (j <= localView.getBottom())) {
          return localView;
        }
        paramInt += 1;
      }
      return null;
    }
    
    private boolean c(CoordinatorLayout paramCoordinatorLayout, T paramT)
    {
      paramCoordinatorLayout = paramCoordinatorLayout.getDependents(paramT);
      int k = paramCoordinatorLayout.size();
      boolean bool = false;
      int j = 0;
      while (j < k)
      {
        paramT = ((CoordinatorLayout.LayoutParams)((View)paramCoordinatorLayout.get(j)).getLayoutParams()).getBehavior();
        if ((paramT instanceof AppBarLayout.ScrollingViewBehavior))
        {
          if (((AppBarLayout.ScrollingViewBehavior)paramT).getOverlayTop() != 0) {
            bool = true;
          }
          return bool;
        }
        j += 1;
      }
      return false;
    }
    
    int a()
    {
      return getTopAndBottomOffset() + b;
    }
    
    int a(CoordinatorLayout paramCoordinatorLayout, T paramT, int paramInt1, int paramInt2, int paramInt3)
    {
      int j = a();
      if ((paramInt2 != 0) && (j >= paramInt2) && (j <= paramInt3))
      {
        paramInt2 = MathUtils.clamp(paramInt1, paramInt2, paramInt3);
        if (j != paramInt2)
        {
          if (paramT.a()) {
            paramInt1 = b(paramT, paramInt2);
          } else {
            paramInt1 = paramInt2;
          }
          boolean bool = setTopAndBottomOffset(paramInt1);
          b = (paramInt2 - paramInt1);
          if ((!bool) && (paramT.a())) {
            paramCoordinatorLayout.dispatchDependentViewsChanged(paramT);
          }
          paramT.a(getTopAndBottomOffset());
          if (paramInt2 < j) {
            paramInt1 = -1;
          } else {
            paramInt1 = 1;
          }
          a(paramCoordinatorLayout, paramT, paramInt2, paramInt1, false);
          return j - paramInt2;
        }
      }
      else
      {
        b = 0;
      }
      return 0;
    }
    
    void a(CoordinatorLayout paramCoordinatorLayout, T paramT)
    {
      b(paramCoordinatorLayout, paramT);
    }
    
    boolean a(T paramT)
    {
      if (i != null) {
        return i.canDrag(paramT);
      }
      if (h != null)
      {
        paramT = (View)h.get();
        return (paramT != null) && (paramT.isShown()) && (!paramT.canScrollVertically(-1));
      }
      return true;
    }
    
    int b(T paramT)
    {
      return -paramT.getDownNestedScrollRange();
    }
    
    int c(T paramT)
    {
      return paramT.getTotalScrollRange();
    }
    
    public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, T paramT, int paramInt)
    {
      boolean bool = super.onLayoutChild(paramCoordinatorLayout, paramT, paramInt);
      int j = paramT.getPendingAction();
      if ((e >= 0) && ((j & 0x8) == 0))
      {
        View localView = paramT.getChildAt(e);
        paramInt = -localView.getBottom();
        if (f) {
          paramInt += ViewCompat.getMinimumHeight(localView) + paramT.getTopInset();
        } else {
          paramInt += Math.round(localView.getHeight() * g);
        }
        a(paramCoordinatorLayout, paramT, paramInt);
      }
      else if (j != 0)
      {
        if ((j & 0x4) != 0) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
        if ((j & 0x2) != 0)
        {
          j = -paramT.getUpNestedPreScrollRange();
          if (paramInt != 0) {
            a(paramCoordinatorLayout, paramT, j, 0.0F);
          } else {
            a(paramCoordinatorLayout, paramT, j);
          }
        }
        else if ((j & 0x1) != 0)
        {
          if (paramInt != 0) {
            a(paramCoordinatorLayout, paramT, 0, 0.0F);
          } else {
            a(paramCoordinatorLayout, paramT, 0);
          }
        }
      }
      paramT.c();
      e = -1;
      setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -paramT.getTotalScrollRange(), 0));
      a(paramCoordinatorLayout, paramT, getTopAndBottomOffset(), 0, true);
      paramT.a(getTopAndBottomOffset());
      return bool;
    }
    
    public boolean onMeasureChild(CoordinatorLayout paramCoordinatorLayout, T paramT, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (getLayoutParamsheight == -2)
      {
        paramCoordinatorLayout.onMeasureChild(paramT, paramInt1, paramInt2, View.MeasureSpec.makeMeasureSpec(0, 0), paramInt4);
        return true;
      }
      return super.onMeasureChild(paramCoordinatorLayout, paramT, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void onNestedPreScroll(CoordinatorLayout paramCoordinatorLayout, T paramT, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
    {
      if (paramInt2 != 0)
      {
        int j;
        if (paramInt2 < 0)
        {
          j = -paramT.getTotalScrollRange();
          int k = paramT.getDownNestedPreScrollRange();
          paramInt1 = j;
          j = k + j;
        }
        else
        {
          paramInt1 = -paramT.getUpNestedPreScrollRange();
          j = 0;
        }
        if (paramInt1 != j)
        {
          paramArrayOfInt[1] = b(paramCoordinatorLayout, paramT, paramInt2, paramInt1, j);
          a(paramInt2, paramT, paramView, paramInt3);
        }
      }
    }
    
    public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, T paramT, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      if (paramInt4 < 0)
      {
        b(paramCoordinatorLayout, paramT, paramInt4, -paramT.getDownNestedScrollRange(), 0);
        a(paramInt4, paramT, paramView, paramInt5);
      }
      if (paramT.isLiftOnScroll())
      {
        boolean bool;
        if (paramView.getScrollY() > 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramT.a(bool);
      }
    }
    
    public void onRestoreInstanceState(CoordinatorLayout paramCoordinatorLayout, T paramT, Parcelable paramParcelable)
    {
      if ((paramParcelable instanceof SavedState))
      {
        paramParcelable = (SavedState)paramParcelable;
        super.onRestoreInstanceState(paramCoordinatorLayout, paramT, paramParcelable.getSuperState());
        e = a;
        g = b;
        f = c;
        return;
      }
      super.onRestoreInstanceState(paramCoordinatorLayout, paramT, paramParcelable);
      e = -1;
    }
    
    public Parcelable onSaveInstanceState(CoordinatorLayout paramCoordinatorLayout, T paramT)
    {
      Object localObject = super.onSaveInstanceState(paramCoordinatorLayout, paramT);
      int k = getTopAndBottomOffset();
      int m = paramT.getChildCount();
      boolean bool = false;
      int j = 0;
      while (j < m)
      {
        paramCoordinatorLayout = paramT.getChildAt(j);
        int n = paramCoordinatorLayout.getBottom() + k;
        if ((paramCoordinatorLayout.getTop() + k <= 0) && (n >= 0))
        {
          localObject = new SavedState((Parcelable)localObject);
          a = j;
          if (n == ViewCompat.getMinimumHeight(paramCoordinatorLayout) + paramT.getTopInset()) {
            bool = true;
          }
          c = bool;
          b = (n / paramCoordinatorLayout.getHeight());
          return localObject;
        }
        j += 1;
      }
      return localObject;
    }
    
    public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, T paramT, View paramView1, View paramView2, int paramInt1, int paramInt2)
    {
      boolean bool;
      if (((paramInt1 & 0x2) != 0) && ((paramT.isLiftOnScroll()) || (a(paramCoordinatorLayout, paramT, paramView1)))) {
        bool = true;
      } else {
        bool = false;
      }
      if ((bool) && (d != null)) {
        d.cancel();
      }
      h = null;
      c = paramInt2;
      return bool;
    }
    
    public void onStopNestedScroll(CoordinatorLayout paramCoordinatorLayout, T paramT, View paramView, int paramInt)
    {
      if ((c == 0) || (paramInt == 1)) {
        b(paramCoordinatorLayout, paramT);
      }
      h = new WeakReference(paramView);
    }
    
    public void setDragCallback(@Nullable BaseDragCallback paramBaseDragCallback)
    {
      i = paramBaseDragCallback;
    }
    
    public static abstract class BaseDragCallback<T extends AppBarLayout>
    {
      public BaseDragCallback() {}
      
      public abstract boolean canDrag(@NonNull T paramT);
    }
    
    protected static class SavedState
      extends AbsSavedState
    {
      public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
      {
        public AppBarLayout.BaseBehavior.SavedState a(Parcel paramAnonymousParcel)
        {
          return new AppBarLayout.BaseBehavior.SavedState(paramAnonymousParcel, null);
        }
        
        public AppBarLayout.BaseBehavior.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
        {
          return new AppBarLayout.BaseBehavior.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
        }
        
        public AppBarLayout.BaseBehavior.SavedState[] a(int paramAnonymousInt)
        {
          return new AppBarLayout.BaseBehavior.SavedState[paramAnonymousInt];
        }
      };
      int a;
      float b;
      boolean c;
      
      public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        super(paramClassLoader);
        a = paramParcel.readInt();
        b = paramParcel.readFloat();
        boolean bool;
        if (paramParcel.readByte() != 0) {
          bool = true;
        } else {
          bool = false;
        }
        c = bool;
      }
      
      public SavedState(Parcelable paramParcelable)
      {
        super();
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        super.writeToParcel(paramParcel, paramInt);
        paramParcel.writeInt(a);
        paramParcel.writeFloat(b);
        paramParcel.writeByte((byte)c);
      }
    }
  }
  
  public static abstract interface BaseOnOffsetChangedListener<T extends AppBarLayout>
  {
    public abstract void onOffsetChanged(T paramT, int paramInt);
  }
  
  public static class Behavior
    extends AppBarLayout.BaseBehavior<AppBarLayout>
  {
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public static abstract class DragCallback
      extends AppBarLayout.BaseBehavior.BaseDragCallback<AppBarLayout>
    {
      public DragCallback() {}
    }
  }
  
  public static class LayoutParams
    extends LinearLayout.LayoutParams
  {
    public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
    public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
    public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
    public static final int SCROLL_FLAG_SCROLL = 1;
    public static final int SCROLL_FLAG_SNAP = 16;
    public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
    int a = 1;
    Interpolator b;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(int paramInt1, int paramInt2, float paramFloat)
    {
      super(paramInt2, paramFloat);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout_Layout);
      a = paramAttributeSet.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
      if (paramAttributeSet.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
        b = android.view.animation.AnimationUtils.loadInterpolator(paramContext, paramAttributeSet.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
      }
      paramAttributeSet.recycle();
    }
    
    @RequiresApi(19)
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      a = a;
      b = b;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    @RequiresApi(19)
    public LayoutParams(LinearLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    boolean a()
    {
      return ((a & 0x1) == 1) && ((a & 0xA) != 0);
    }
    
    public int getScrollFlags()
    {
      return a;
    }
    
    public Interpolator getScrollInterpolator()
    {
      return b;
    }
    
    public void setScrollFlags(int paramInt)
    {
      a = paramInt;
    }
    
    public void setScrollInterpolator(Interpolator paramInterpolator)
    {
      b = paramInterpolator;
    }
    
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
    public static @interface ScrollFlags {}
  }
  
  public static abstract interface OnOffsetChangedListener
    extends AppBarLayout.BaseOnOffsetChangedListener<AppBarLayout>
  {
    public abstract void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt);
  }
  
  public static class ScrollingViewBehavior
    extends e
  {
    public ScrollingViewBehavior() {}
    
    public ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ScrollingViewBehavior_Layout);
      setOverlayTop(paramContext.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
      paramContext.recycle();
    }
    
    private static int a(AppBarLayout paramAppBarLayout)
    {
      paramAppBarLayout = ((CoordinatorLayout.LayoutParams)paramAppBarLayout.getLayoutParams()).getBehavior();
      if ((paramAppBarLayout instanceof AppBarLayout.BaseBehavior)) {
        return ((AppBarLayout.BaseBehavior)paramAppBarLayout).a();
      }
      return 0;
    }
    
    private void a(View paramView1, View paramView2)
    {
      Object localObject = ((CoordinatorLayout.LayoutParams)paramView2.getLayoutParams()).getBehavior();
      if ((localObject instanceof AppBarLayout.BaseBehavior))
      {
        localObject = (AppBarLayout.BaseBehavior)localObject;
        ViewCompat.offsetTopAndBottom(paramView1, paramView2.getBottom() - paramView1.getTop() + AppBarLayout.BaseBehavior.a((AppBarLayout.BaseBehavior)localObject) + a() - c(paramView2));
      }
    }
    
    private void b(View paramView1, View paramView2)
    {
      if ((paramView2 instanceof AppBarLayout))
      {
        paramView2 = (AppBarLayout)paramView2;
        if (paramView2.isLiftOnScroll())
        {
          boolean bool;
          if (paramView1.getScrollY() > 0) {
            bool = true;
          } else {
            bool = false;
          }
          paramView2.a(bool);
        }
      }
    }
    
    float a(View paramView)
    {
      if ((paramView instanceof AppBarLayout))
      {
        paramView = (AppBarLayout)paramView;
        int j = paramView.getTotalScrollRange();
        int k = paramView.getDownNestedPreScrollRange();
        int i = a(paramView);
        if ((k != 0) && (j + i <= k)) {
          return 0.0F;
        }
        j -= k;
        if (j != 0) {
          return i / j + 1.0F;
        }
      }
      return 0.0F;
    }
    
    AppBarLayout a(List<View> paramList)
    {
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        View localView = (View)paramList.get(i);
        if ((localView instanceof AppBarLayout)) {
          return (AppBarLayout)localView;
        }
        i += 1;
      }
      return null;
    }
    
    int b(View paramView)
    {
      if ((paramView instanceof AppBarLayout)) {
        return ((AppBarLayout)paramView).getTotalScrollRange();
      }
      return super.b(paramView);
    }
    
    public boolean layoutDependsOn(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      return paramView2 instanceof AppBarLayout;
    }
    
    public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      a(paramView1, paramView2);
      b(paramView1, paramView2);
      return false;
    }
    
    public boolean onRequestChildRectangleOnScreen(CoordinatorLayout paramCoordinatorLayout, View paramView, Rect paramRect, boolean paramBoolean)
    {
      AppBarLayout localAppBarLayout = a(paramCoordinatorLayout.getDependencies(paramView));
      if (localAppBarLayout != null)
      {
        paramRect.offset(paramView.getLeft(), paramView.getTop());
        paramView = a;
        paramView.set(0, 0, paramCoordinatorLayout.getWidth(), paramCoordinatorLayout.getHeight());
        if (!paramView.contains(paramRect))
        {
          localAppBarLayout.setExpanded(false, paramBoolean ^ true);
          return true;
        }
      }
      return false;
    }
  }
}
