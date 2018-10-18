package android.support.design.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.annotation.BoolRes;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.Dimension;
import android.support.annotation.DrawableRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.design.R.attr;
import android.support.design.R.dimen;
import android.support.design.R.layout;
import android.support.design.R.style;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.internal.ViewUtils;
import android.support.design.resources.MaterialResources;
import android.support.design.ripple.RippleUtils;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.DecorView;
import android.support.v4.view.ViewPager.OnAdapterChangeListener;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.ActionBar.Tab;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.TooltipCompat;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
public class TabLayout
  extends HorizontalScrollView
{
  public static final int GRAVITY_CENTER = 1;
  public static final int GRAVITY_FILL = 0;
  public static final int INDICATOR_GRAVITY_BOTTOM = 0;
  public static final int INDICATOR_GRAVITY_CENTER = 1;
  public static final int INDICATOR_GRAVITY_STRETCH = 3;
  public static final int INDICATOR_GRAVITY_TOP = 2;
  public static final int MODE_FIXED = 1;
  public static final int MODE_SCROLLABLE = 0;
  private static final Pools.Pool<Tab> w = new Pools.SynchronizedPool(16);
  private final c A;
  private final int B;
  private final int C;
  private final int D;
  private int E;
  private BaseOnTabSelectedListener F;
  private final ArrayList<BaseOnTabSelectedListener> G = new ArrayList();
  private BaseOnTabSelectedListener H;
  private ValueAnimator I;
  private PagerAdapter J;
  private DataSetObserver K;
  private TabLayoutOnPageChangeListener L;
  private a M;
  private boolean N;
  private final Pools.Pool<d> O = new Pools.SimplePool(12);
  int a;
  int b;
  int c;
  int d;
  int e;
  ColorStateList f;
  ColorStateList g;
  ColorStateList h;
  @Nullable
  Drawable i;
  PorterDuff.Mode j;
  float k;
  float l;
  final int m;
  int n = Integer.MAX_VALUE;
  int o;
  int p;
  int q;
  int r;
  boolean s;
  boolean t;
  boolean u;
  ViewPager v;
  private final ArrayList<Tab> x = new ArrayList();
  private Tab y;
  private final RectF z = new RectF();
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.tabStyle);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setHorizontalScrollBarEnabled(false);
    A = new c(paramContext);
    super.addView(A, 0, new FrameLayout.LayoutParams(-2, -1));
    TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, android.support.design.R.styleable.TabLayout, paramInt, R.style.Widget_Design_TabLayout, new int[] { android.support.design.R.styleable.TabLayout_tabTextAppearance });
    A.b(localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabIndicatorHeight, -1));
    A.a(localTypedArray.getColor(android.support.design.R.styleable.TabLayout_tabIndicatorColor, 0));
    setSelectedTabIndicator(MaterialResources.getDrawable(paramContext, localTypedArray, android.support.design.R.styleable.TabLayout_tabIndicator));
    setSelectedTabIndicatorGravity(localTypedArray.getInt(android.support.design.R.styleable.TabLayout_tabIndicatorGravity, 0));
    setTabIndicatorFullWidth(localTypedArray.getBoolean(android.support.design.R.styleable.TabLayout_tabIndicatorFullWidth, true));
    paramInt = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabPadding, 0);
    d = paramInt;
    c = paramInt;
    b = paramInt;
    a = paramInt;
    a = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabPaddingStart, a);
    b = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabPaddingTop, b);
    c = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabPaddingEnd, c);
    d = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabPaddingBottom, d);
    e = localTypedArray.getResourceId(android.support.design.R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
    paramAttributeSet = paramContext.obtainStyledAttributes(e, android.support.v7.appcompat.R.styleable.TextAppearance);
    try
    {
      k = paramAttributeSet.getDimensionPixelSize(android.support.v7.appcompat.R.styleable.TextAppearance_android_textSize, 0);
      f = MaterialResources.getColorStateList(paramContext, paramAttributeSet, android.support.v7.appcompat.R.styleable.TextAppearance_android_textColor);
      paramAttributeSet.recycle();
      if (localTypedArray.hasValue(android.support.design.R.styleable.TabLayout_tabTextColor)) {
        f = MaterialResources.getColorStateList(paramContext, localTypedArray, android.support.design.R.styleable.TabLayout_tabTextColor);
      }
      if (localTypedArray.hasValue(android.support.design.R.styleable.TabLayout_tabSelectedTextColor))
      {
        paramInt = localTypedArray.getColor(android.support.design.R.styleable.TabLayout_tabSelectedTextColor, 0);
        f = a(f.getDefaultColor(), paramInt);
      }
      g = MaterialResources.getColorStateList(paramContext, localTypedArray, android.support.design.R.styleable.TabLayout_tabIconTint);
      j = ViewUtils.parseTintMode(localTypedArray.getInt(android.support.design.R.styleable.TabLayout_tabIconTintMode, -1), null);
      h = MaterialResources.getColorStateList(paramContext, localTypedArray, android.support.design.R.styleable.TabLayout_tabRippleColor);
      p = localTypedArray.getInt(android.support.design.R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
      B = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabMinWidth, -1);
      C = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabMaxWidth, -1);
      m = localTypedArray.getResourceId(android.support.design.R.styleable.TabLayout_tabBackground, 0);
      E = localTypedArray.getDimensionPixelSize(android.support.design.R.styleable.TabLayout_tabContentStart, 0);
      r = localTypedArray.getInt(android.support.design.R.styleable.TabLayout_tabMode, 1);
      o = localTypedArray.getInt(android.support.design.R.styleable.TabLayout_tabGravity, 0);
      s = localTypedArray.getBoolean(android.support.design.R.styleable.TabLayout_tabInlineLabel, false);
      u = localTypedArray.getBoolean(android.support.design.R.styleable.TabLayout_tabUnboundedRipple, false);
      localTypedArray.recycle();
      paramContext = getResources();
      l = paramContext.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
      D = paramContext.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
      e();
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  private int a(int paramInt, float paramFloat)
  {
    int i2 = r;
    int i1 = 0;
    if (i2 == 0)
    {
      View localView2 = A.getChildAt(paramInt);
      paramInt += 1;
      View localView1;
      if (paramInt < A.getChildCount()) {
        localView1 = A.getChildAt(paramInt);
      } else {
        localView1 = null;
      }
      if (localView2 != null) {
        paramInt = localView2.getWidth();
      } else {
        paramInt = 0;
      }
      if (localView1 != null) {
        i1 = localView1.getWidth();
      }
      i2 = localView2.getLeft() + paramInt / 2 - getWidth() / 2;
      paramInt = (int)((paramInt + i1) * 0.5F * paramFloat);
      if (ViewCompat.getLayoutDirection(this) == 0) {
        return i2 + paramInt;
      }
      return i2 - paramInt;
    }
    return 0;
  }
  
  private static ColorStateList a(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private void a(@NonNull TabItem paramTabItem)
  {
    Tab localTab = newTab();
    if (text != null) {
      localTab.setText(text);
    }
    if (icon != null) {
      localTab.setIcon(icon);
    }
    if (customLayout != 0) {
      localTab.setCustomView(customLayout);
    }
    if (!TextUtils.isEmpty(paramTabItem.getContentDescription())) {
      localTab.setContentDescription(paramTabItem.getContentDescription());
    }
    addTab(localTab);
  }
  
  private void a(Tab paramTab, int paramInt)
  {
    paramTab.a(paramInt);
    x.add(paramInt, paramTab);
    int i1 = x.size();
    for (;;)
    {
      paramInt += 1;
      if (paramInt >= i1) {
        break;
      }
      ((Tab)x.get(paramInt)).a(paramInt);
    }
  }
  
  private void a(@Nullable ViewPager paramViewPager, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (v != null)
    {
      if (L != null) {
        v.removeOnPageChangeListener(L);
      }
      if (M != null) {
        v.removeOnAdapterChangeListener(M);
      }
    }
    if (H != null)
    {
      removeOnTabSelectedListener(H);
      H = null;
    }
    if (paramViewPager != null)
    {
      v = paramViewPager;
      if (L == null) {
        L = new TabLayoutOnPageChangeListener(this);
      }
      L.a();
      paramViewPager.addOnPageChangeListener(L);
      H = new ViewPagerOnTabSelectedListener(paramViewPager);
      addOnTabSelectedListener(H);
      PagerAdapter localPagerAdapter = paramViewPager.getAdapter();
      if (localPagerAdapter != null) {
        a(localPagerAdapter, paramBoolean1);
      }
      if (M == null) {
        M = new a();
      }
      M.a(paramBoolean1);
      paramViewPager.addOnAdapterChangeListener(M);
      setScrollPosition(paramViewPager.getCurrentItem(), 0.0F, true);
    }
    else
    {
      v = null;
      a(null, false);
    }
    N = paramBoolean2;
  }
  
  private void a(View paramView)
  {
    if ((paramView instanceof TabItem))
    {
      a((TabItem)paramView);
      return;
    }
    throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
  }
  
  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((r == 1) && (o == 0))
    {
      width = 0;
      weight = 1.0F;
      return;
    }
    width = -2;
    weight = 0.0F;
  }
  
  private d b(@NonNull Tab paramTab)
  {
    d localD1;
    if (O != null) {
      localD1 = (d)O.acquire();
    } else {
      localD1 = null;
    }
    d localD2 = localD1;
    if (localD1 == null) {
      localD2 = new d(getContext());
    }
    localD2.a(paramTab);
    localD2.setFocusable(true);
    localD2.setMinimumWidth(getTabMinWidth());
    if (TextUtils.isEmpty(Tab.a(paramTab)))
    {
      localD2.setContentDescription(Tab.b(paramTab));
      return localD2;
    }
    localD2.setContentDescription(Tab.a(paramTab));
    return localD2;
  }
  
  private void b()
  {
    int i2 = x.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((Tab)x.get(i1)).a();
      i1 += 1;
    }
  }
  
  private void b(int paramInt)
  {
    d localD = (d)A.getChildAt(paramInt);
    A.removeViewAt(paramInt);
    if (localD != null)
    {
      localD.a();
      O.release(localD);
    }
    requestLayout();
  }
  
  private LinearLayout.LayoutParams c()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    a(localLayoutParams);
    return localLayoutParams;
  }
  
  private void c(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((getWindowToken() != null) && (ViewCompat.isLaidOut(this)) && (!A.a()))
    {
      int i1 = getScrollX();
      int i2 = a(paramInt, 0.0F);
      if (i1 != i2)
      {
        d();
        I.setIntValues(new int[] { i1, i2 });
        I.start();
      }
      A.b(paramInt, p);
      return;
    }
    setScrollPosition(paramInt, 0.0F, true);
  }
  
  private void c(Tab paramTab)
  {
    d localD = view;
    A.addView(localD, paramTab.getPosition(), c());
  }
  
  private void d()
  {
    if (I == null)
    {
      I = new ValueAnimator();
      I.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      I.setDuration(p);
      I.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          scrollTo(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue(), 0);
        }
      });
    }
  }
  
  private void d(@NonNull Tab paramTab)
  {
    int i1 = G.size() - 1;
    while (i1 >= 0)
    {
      ((BaseOnTabSelectedListener)G.get(i1)).onTabSelected(paramTab);
      i1 -= 1;
    }
  }
  
  private void e()
  {
    int i1;
    if (r == 0) {
      i1 = Math.max(0, E - a);
    } else {
      i1 = 0;
    }
    ViewCompat.setPaddingRelative(A, i1, 0, 0, 0);
    switch (r)
    {
    default: 
      break;
    case 1: 
      A.setGravity(1);
      break;
    case 0: 
      A.setGravity(8388611);
    }
    a(true);
  }
  
  private void e(@NonNull Tab paramTab)
  {
    int i1 = G.size() - 1;
    while (i1 >= 0)
    {
      ((BaseOnTabSelectedListener)G.get(i1)).onTabUnselected(paramTab);
      i1 -= 1;
    }
  }
  
  private void f(@NonNull Tab paramTab)
  {
    int i1 = G.size() - 1;
    while (i1 >= 0)
    {
      ((BaseOnTabSelectedListener)G.get(i1)).onTabReselected(paramTab);
      i1 -= 1;
    }
  }
  
  @Dimension(unit=0)
  private int getDefaultHeight()
  {
    int i4 = x.size();
    int i3 = 0;
    int i1 = 0;
    int i2;
    for (;;)
    {
      i2 = i3;
      if (i1 >= i4) {
        break;
      }
      Tab localTab = (Tab)x.get(i1);
      if ((localTab != null) && (localTab.getIcon() != null) && (!TextUtils.isEmpty(localTab.getText())))
      {
        i2 = 1;
        break;
      }
      i1 += 1;
    }
    if ((i2 != 0) && (!s)) {
      return 72;
    }
    return 48;
  }
  
  private int getTabMinWidth()
  {
    if (B != -1) {
      return B;
    }
    if (r == 0) {
      return D;
    }
    return 0;
  }
  
  private int getTabScrollRange()
  {
    return Math.max(0, A.getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
  }
  
  private void setSelectedTabView(int paramInt)
  {
    int i2 = A.getChildCount();
    if (paramInt < i2)
    {
      int i1 = 0;
      while (i1 < i2)
      {
        View localView = A.getChildAt(i1);
        boolean bool2 = true;
        boolean bool1;
        if (i1 == paramInt) {
          bool1 = true;
        } else {
          bool1 = false;
        }
        localView.setSelected(bool1);
        if (i1 == paramInt) {
          bool1 = bool2;
        } else {
          bool1 = false;
        }
        localView.setActivated(bool1);
        i1 += 1;
      }
    }
  }
  
  @Dimension(unit=1)
  int a(@Dimension(unit=0) int paramInt)
  {
    return Math.round(getResourcesgetDisplayMetricsdensity * paramInt);
  }
  
  void a()
  {
    removeAllTabs();
    if (J != null)
    {
      int i2 = J.getCount();
      int i1 = 0;
      while (i1 < i2)
      {
        addTab(newTab().setText(J.getPageTitle(i1)), false);
        i1 += 1;
      }
      if ((v != null) && (i2 > 0))
      {
        i1 = v.getCurrentItem();
        if ((i1 != getSelectedTabPosition()) && (i1 < getTabCount())) {
          a(getTabAt(i1));
        }
      }
    }
  }
  
  void a(int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = Math.round(paramInt + paramFloat);
    if (i1 >= 0)
    {
      if (i1 >= A.getChildCount()) {
        return;
      }
      if (paramBoolean2) {
        A.a(paramInt, paramFloat);
      }
      if ((I != null) && (I.isRunning())) {
        I.cancel();
      }
      scrollTo(a(paramInt, paramFloat), 0);
      if (paramBoolean1) {
        setSelectedTabView(i1);
      }
      return;
    }
  }
  
  void a(Tab paramTab)
  {
    a(paramTab, true);
  }
  
  void a(Tab paramTab, boolean paramBoolean)
  {
    Tab localTab = y;
    if (localTab == paramTab)
    {
      if (localTab != null)
      {
        f(paramTab);
        c(paramTab.getPosition());
      }
    }
    else
    {
      int i1;
      if (paramTab != null) {
        i1 = paramTab.getPosition();
      } else {
        i1 = -1;
      }
      if (paramBoolean)
      {
        if (((localTab == null) || (localTab.getPosition() == -1)) && (i1 != -1)) {
          setScrollPosition(i1, 0.0F, true);
        } else {
          c(i1);
        }
        if (i1 != -1) {
          setSelectedTabView(i1);
        }
      }
      y = paramTab;
      if (localTab != null) {
        e(localTab);
      }
      if (paramTab != null) {
        d(paramTab);
      }
    }
  }
  
  void a(@Nullable PagerAdapter paramPagerAdapter, boolean paramBoolean)
  {
    if ((J != null) && (K != null)) {
      J.unregisterDataSetObserver(K);
    }
    J = paramPagerAdapter;
    if ((paramBoolean) && (paramPagerAdapter != null))
    {
      if (K == null) {
        K = new b();
      }
      paramPagerAdapter.registerDataSetObserver(K);
    }
    a();
  }
  
  void a(boolean paramBoolean)
  {
    int i1 = 0;
    while (i1 < A.getChildCount())
    {
      View localView = A.getChildAt(i1);
      localView.setMinimumWidth(getTabMinWidth());
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      if (paramBoolean) {
        localView.requestLayout();
      }
      i1 += 1;
    }
  }
  
  public void addOnTabSelectedListener(@NonNull BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    if (!G.contains(paramBaseOnTabSelectedListener)) {
      G.add(paramBaseOnTabSelectedListener);
    }
  }
  
  public void addTab(@NonNull Tab paramTab)
  {
    addTab(paramTab, x.isEmpty());
  }
  
  public void addTab(@NonNull Tab paramTab, int paramInt)
  {
    addTab(paramTab, paramInt, x.isEmpty());
  }
  
  public void addTab(@NonNull Tab paramTab, int paramInt, boolean paramBoolean)
  {
    if (parent == this)
    {
      a(paramTab, paramInt);
      c(paramTab);
      if (paramBoolean) {
        paramTab.select();
      }
      return;
    }
    throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
  }
  
  public void addTab(@NonNull Tab paramTab, boolean paramBoolean)
  {
    addTab(paramTab, x.size(), paramBoolean);
  }
  
  public void addView(View paramView)
  {
    a(paramView);
  }
  
  public void addView(View paramView, int paramInt)
  {
    a(paramView);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
  }
  
  public void clearOnTabSelectedListeners()
  {
    G.clear();
  }
  
  protected Tab createTabFromPool()
  {
    Tab localTab2 = (Tab)w.acquire();
    Tab localTab1 = localTab2;
    if (localTab2 == null) {
      localTab1 = new Tab();
    }
    return localTab1;
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return generateDefaultLayoutParams();
  }
  
  public int getSelectedTabPosition()
  {
    if (y != null) {
      return y.getPosition();
    }
    return -1;
  }
  
  @Nullable
  public Tab getTabAt(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getTabCount())) {
      return (Tab)x.get(paramInt);
    }
    return null;
  }
  
  public int getTabCount()
  {
    return x.size();
  }
  
  public int getTabGravity()
  {
    return o;
  }
  
  @Nullable
  public ColorStateList getTabIconTint()
  {
    return g;
  }
  
  public int getTabIndicatorGravity()
  {
    return q;
  }
  
  int getTabMaxWidth()
  {
    return n;
  }
  
  public int getTabMode()
  {
    return r;
  }
  
  @Nullable
  public ColorStateList getTabRippleColor()
  {
    return h;
  }
  
  @Nullable
  public Drawable getTabSelectedIndicator()
  {
    return i;
  }
  
  @Nullable
  public ColorStateList getTabTextColors()
  {
    return f;
  }
  
  public boolean hasUnboundedRipple()
  {
    return u;
  }
  
  public boolean isInlineLabel()
  {
    return s;
  }
  
  public boolean isTabIndicatorFullWidth()
  {
    return t;
  }
  
  @NonNull
  public Tab newTab()
  {
    Tab localTab = createTabFromPool();
    parent = this;
    view = b(localTab);
    return localTab;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (v == null)
    {
      ViewParent localViewParent = getParent();
      if ((localViewParent instanceof ViewPager)) {
        a((ViewPager)localViewParent, true, true);
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (N)
    {
      setupWithViewPager(null);
      N = false;
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    while (i1 < A.getChildCount())
    {
      View localView = A.getChildAt(i1);
      if ((localView instanceof d)) {
        d.a((d)localView, paramCanvas);
      }
      i1 += 1;
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = a(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
    int i2 = View.MeasureSpec.getMode(paramInt2);
    if (i2 != Integer.MIN_VALUE)
    {
      if (i2 == 0) {
        paramInt2 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
      }
    }
    else {
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i1, View.MeasureSpec.getSize(paramInt2)), 1073741824);
    }
    i1 = View.MeasureSpec.getSize(paramInt1);
    if (View.MeasureSpec.getMode(paramInt1) != 0)
    {
      if (C > 0) {
        i1 = C;
      } else {
        i1 -= a(56);
      }
      n = i1;
    }
    super.onMeasure(paramInt1, paramInt2);
    if (getChildCount() == 1)
    {
      paramInt1 = 0;
      View localView = getChildAt(0);
      switch (r)
      {
      default: 
        break;
      case 1: 
        if (localView.getMeasuredWidth() == getMeasuredWidth()) {
          break;
        }
      case 0: 
        do
        {
          paramInt1 = 1;
          break;
        } while (localView.getMeasuredWidth() < getMeasuredWidth());
      }
      if (paramInt1 != 0)
      {
        paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), getLayoutParamsheight);
        localView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
      }
    }
  }
  
  protected boolean releaseFromTabPool(Tab paramTab)
  {
    return w.release(paramTab);
  }
  
  public void removeAllTabs()
  {
    int i1 = A.getChildCount() - 1;
    while (i1 >= 0)
    {
      b(i1);
      i1 -= 1;
    }
    Iterator localIterator = x.iterator();
    while (localIterator.hasNext())
    {
      Tab localTab = (Tab)localIterator.next();
      localIterator.remove();
      localTab.b();
      releaseFromTabPool(localTab);
    }
    y = null;
  }
  
  public void removeOnTabSelectedListener(@NonNull BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    G.remove(paramBaseOnTabSelectedListener);
  }
  
  public void removeTab(Tab paramTab)
  {
    if (parent == this)
    {
      removeTabAt(paramTab.getPosition());
      return;
    }
    throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
  }
  
  public void removeTabAt(int paramInt)
  {
    int i1;
    if (y != null) {
      i1 = y.getPosition();
    } else {
      i1 = 0;
    }
    b(paramInt);
    Tab localTab = (Tab)x.remove(paramInt);
    if (localTab != null)
    {
      localTab.b();
      releaseFromTabPool(localTab);
    }
    int i3 = x.size();
    int i2 = paramInt;
    while (i2 < i3)
    {
      ((Tab)x.get(i2)).a(i2);
      i2 += 1;
    }
    if (i1 == paramInt)
    {
      if (x.isEmpty()) {
        localTab = null;
      } else {
        localTab = (Tab)x.get(Math.max(0, paramInt - 1));
      }
      a(localTab);
    }
  }
  
  public void setInlineLabel(boolean paramBoolean)
  {
    if (s != paramBoolean)
    {
      s = paramBoolean;
      int i1 = 0;
      while (i1 < A.getChildCount())
      {
        View localView = A.getChildAt(i1);
        if ((localView instanceof d)) {
          ((d)localView).c();
        }
        i1 += 1;
      }
      e();
    }
  }
  
  public void setInlineLabelResource(@BoolRes int paramInt)
  {
    setInlineLabel(getResources().getBoolean(paramInt));
  }
  
  @Deprecated
  public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener paramBaseOnTabSelectedListener)
  {
    if (F != null) {
      removeOnTabSelectedListener(F);
    }
    F = paramBaseOnTabSelectedListener;
    if (paramBaseOnTabSelectedListener != null) {
      addOnTabSelectedListener(paramBaseOnTabSelectedListener);
    }
  }
  
  void setScrollAnimatorListener(Animator.AnimatorListener paramAnimatorListener)
  {
    d();
    I.addListener(paramAnimatorListener);
  }
  
  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean)
  {
    a(paramInt, paramFloat, paramBoolean, true);
  }
  
  public void setSelectedTabIndicator(@DrawableRes int paramInt)
  {
    if (paramInt != 0)
    {
      setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), paramInt));
      return;
    }
    setSelectedTabIndicator(null);
  }
  
  public void setSelectedTabIndicator(@Nullable Drawable paramDrawable)
  {
    if (i != paramDrawable)
    {
      i = paramDrawable;
      ViewCompat.postInvalidateOnAnimation(A);
    }
  }
  
  public void setSelectedTabIndicatorColor(@ColorInt int paramInt)
  {
    A.a(paramInt);
  }
  
  public void setSelectedTabIndicatorGravity(int paramInt)
  {
    if (q != paramInt)
    {
      q = paramInt;
      ViewCompat.postInvalidateOnAnimation(A);
    }
  }
  
  @Deprecated
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    A.b(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (o != paramInt)
    {
      o = paramInt;
      e();
    }
  }
  
  public void setTabIconTint(@Nullable ColorStateList paramColorStateList)
  {
    if (g != paramColorStateList)
    {
      g = paramColorStateList;
      b();
    }
  }
  
  public void setTabIconTintResource(@ColorRes int paramInt)
  {
    setTabIconTint(AppCompatResources.getColorStateList(getContext(), paramInt));
  }
  
  public void setTabIndicatorFullWidth(boolean paramBoolean)
  {
    t = paramBoolean;
    ViewCompat.postInvalidateOnAnimation(A);
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != r)
    {
      r = paramInt;
      e();
    }
  }
  
  public void setTabRippleColor(@Nullable ColorStateList paramColorStateList)
  {
    if (h != paramColorStateList)
    {
      h = paramColorStateList;
      int i1 = 0;
      while (i1 < A.getChildCount())
      {
        paramColorStateList = A.getChildAt(i1);
        if ((paramColorStateList instanceof d)) {
          d.a((d)paramColorStateList, getContext());
        }
        i1 += 1;
      }
    }
  }
  
  public void setTabRippleColorResource(@ColorRes int paramInt)
  {
    setTabRippleColor(AppCompatResources.getColorStateList(getContext(), paramInt));
  }
  
  public void setTabTextColors(int paramInt1, int paramInt2)
  {
    setTabTextColors(a(paramInt1, paramInt2));
  }
  
  public void setTabTextColors(@Nullable ColorStateList paramColorStateList)
  {
    if (f != paramColorStateList)
    {
      f = paramColorStateList;
      b();
    }
  }
  
  @Deprecated
  public void setTabsFromPagerAdapter(@Nullable PagerAdapter paramPagerAdapter)
  {
    a(paramPagerAdapter, false);
  }
  
  public void setUnboundedRipple(boolean paramBoolean)
  {
    if (u != paramBoolean)
    {
      u = paramBoolean;
      int i1 = 0;
      while (i1 < A.getChildCount())
      {
        View localView = A.getChildAt(i1);
        if ((localView instanceof d)) {
          d.a((d)localView, getContext());
        }
        i1 += 1;
      }
    }
  }
  
  public void setUnboundedRippleResource(@BoolRes int paramInt)
  {
    setUnboundedRipple(getResources().getBoolean(paramInt));
  }
  
  public void setupWithViewPager(@Nullable ViewPager paramViewPager)
  {
    setupWithViewPager(paramViewPager, true);
  }
  
  public void setupWithViewPager(@Nullable ViewPager paramViewPager, boolean paramBoolean)
  {
    a(paramViewPager, paramBoolean, false);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return getTabScrollRange() > 0;
  }
  
  public static abstract interface BaseOnTabSelectedListener<T extends TabLayout.Tab>
  {
    public abstract void onTabReselected(T paramT);
    
    public abstract void onTabSelected(T paramT);
    
    public abstract void onTabUnselected(T paramT);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface Mode {}
  
  public static abstract interface OnTabSelectedListener
    extends TabLayout.BaseOnTabSelectedListener<TabLayout.Tab>
  {}
  
  public static class Tab
  {
    public static final int INVALID_POSITION = -1;
    private Object a;
    private Drawable b;
    private CharSequence c;
    private CharSequence d;
    private int e = -1;
    private View f;
    public TabLayout parent;
    public TabLayout.d view;
    
    public Tab() {}
    
    void a()
    {
      if (view != null) {
        view.b();
      }
    }
    
    void a(int paramInt)
    {
      e = paramInt;
    }
    
    void b()
    {
      parent = null;
      view = null;
      a = null;
      b = null;
      c = null;
      d = null;
      e = -1;
      f = null;
    }
    
    @Nullable
    public CharSequence getContentDescription()
    {
      if (view == null) {
        return null;
      }
      return view.getContentDescription();
    }
    
    @Nullable
    public View getCustomView()
    {
      return f;
    }
    
    @Nullable
    public Drawable getIcon()
    {
      return b;
    }
    
    public int getPosition()
    {
      return e;
    }
    
    @Nullable
    public Object getTag()
    {
      return a;
    }
    
    @Nullable
    public CharSequence getText()
    {
      return c;
    }
    
    public boolean isSelected()
    {
      if (parent != null) {
        return parent.getSelectedTabPosition() == e;
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    public void select()
    {
      if (parent != null)
      {
        parent.a(this);
        return;
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    @NonNull
    public Tab setContentDescription(@StringRes int paramInt)
    {
      if (parent != null) {
        return setContentDescription(parent.getResources().getText(paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    @NonNull
    public Tab setContentDescription(@Nullable CharSequence paramCharSequence)
    {
      d = paramCharSequence;
      a();
      return this;
    }
    
    @NonNull
    public Tab setCustomView(@LayoutRes int paramInt)
    {
      return setCustomView(LayoutInflater.from(view.getContext()).inflate(paramInt, view, false));
    }
    
    @NonNull
    public Tab setCustomView(@Nullable View paramView)
    {
      f = paramView;
      a();
      return this;
    }
    
    @NonNull
    public Tab setIcon(@DrawableRes int paramInt)
    {
      if (parent != null) {
        return setIcon(AppCompatResources.getDrawable(parent.getContext(), paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    @NonNull
    public Tab setIcon(@Nullable Drawable paramDrawable)
    {
      b = paramDrawable;
      a();
      return this;
    }
    
    @NonNull
    public Tab setTag(@Nullable Object paramObject)
    {
      a = paramObject;
      return this;
    }
    
    @NonNull
    public Tab setText(@StringRes int paramInt)
    {
      if (parent != null) {
        return setText(parent.getResources().getText(paramInt));
      }
      throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
    
    @NonNull
    public Tab setText(@Nullable CharSequence paramCharSequence)
    {
      if ((TextUtils.isEmpty(d)) && (!TextUtils.isEmpty(paramCharSequence))) {
        view.setContentDescription(paramCharSequence);
      }
      c = paramCharSequence;
      a();
      return this;
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface TabGravity {}
  
  @Retention(RetentionPolicy.SOURCE)
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static @interface TabIndicatorGravity {}
  
  public static class TabLayoutOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    private final WeakReference<TabLayout> a;
    private int b;
    private int c;
    
    public TabLayoutOnPageChangeListener(TabLayout paramTabLayout)
    {
      a = new WeakReference(paramTabLayout);
    }
    
    void a()
    {
      c = 0;
      b = 0;
    }
    
    public void onPageScrollStateChanged(int paramInt)
    {
      b = c;
      c = paramInt;
    }
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
      TabLayout localTabLayout = (TabLayout)a.get();
      if (localTabLayout != null)
      {
        paramInt2 = c;
        boolean bool2 = false;
        boolean bool1;
        if ((paramInt2 == 2) && (b != 1)) {
          bool1 = false;
        } else {
          bool1 = true;
        }
        if ((c != 2) || (b != 0)) {
          bool2 = true;
        }
        localTabLayout.a(paramInt1, paramFloat, bool1, bool2);
      }
    }
    
    public void onPageSelected(int paramInt)
    {
      TabLayout localTabLayout = (TabLayout)a.get();
      if ((localTabLayout != null) && (localTabLayout.getSelectedTabPosition() != paramInt) && (paramInt < localTabLayout.getTabCount()))
      {
        boolean bool;
        if ((c != 0) && ((c != 2) || (b != 0))) {
          bool = false;
        } else {
          bool = true;
        }
        localTabLayout.a(localTabLayout.getTabAt(paramInt), bool);
      }
    }
  }
  
  public static class ViewPagerOnTabSelectedListener
    implements TabLayout.OnTabSelectedListener
  {
    private final ViewPager a;
    
    public ViewPagerOnTabSelectedListener(ViewPager paramViewPager)
    {
      a = paramViewPager;
    }
    
    public void onTabReselected(TabLayout.Tab paramTab) {}
    
    public void onTabSelected(TabLayout.Tab paramTab)
    {
      a.setCurrentItem(paramTab.getPosition());
    }
    
    public void onTabUnselected(TabLayout.Tab paramTab) {}
  }
  
  private class a
    implements ViewPager.OnAdapterChangeListener
  {
    private boolean b;
    
    a() {}
    
    void a(boolean paramBoolean)
    {
      b = paramBoolean;
    }
    
    public void onAdapterChanged(@NonNull ViewPager paramViewPager, @Nullable PagerAdapter paramPagerAdapter1, @Nullable PagerAdapter paramPagerAdapter2)
    {
      if (v == paramViewPager) {
        a(paramPagerAdapter2, b);
      }
    }
  }
  
  private class b
    extends DataSetObserver
  {
    b() {}
    
    public void onChanged()
    {
      a();
    }
    
    public void onInvalidated()
    {
      a();
    }
  }
  
  private class c
    extends LinearLayout
  {
    int a = -1;
    float b;
    private int d;
    private final Paint e;
    private final GradientDrawable f;
    private int g = -1;
    private int h = -1;
    private int i = -1;
    private ValueAnimator j;
    
    c(Context paramContext)
    {
      super();
      setWillNotDraw(false);
      e = new Paint();
      f = new GradientDrawable();
    }
    
    private void a(TabLayout.d paramD, RectF paramRectF)
    {
      int m = TabLayout.d.a(paramD);
      int k = m;
      if (m < a(24)) {
        k = a(24);
      }
      m = (paramD.getLeft() + paramD.getRight()) / 2;
      k /= 2;
      paramRectF.set(m - k, 0.0F, m + k, 0.0F);
    }
    
    private void b()
    {
      View localView = getChildAt(a);
      int n;
      int i1;
      if ((localView != null) && (localView.getWidth() > 0))
      {
        n = localView.getLeft();
        i1 = localView.getRight();
        int m = n;
        int k = i1;
        if (!t)
        {
          m = n;
          k = i1;
          if ((localView instanceof TabLayout.d))
          {
            a((TabLayout.d)localView, TabLayout.a(TabLayout.this));
            m = (int)aleft;
            k = (int)aright;
          }
        }
        n = m;
        i1 = k;
        if (b > 0.0F)
        {
          n = m;
          i1 = k;
          if (a < getChildCount() - 1)
          {
            localView = getChildAt(a + 1);
            int i2 = localView.getLeft();
            int i3 = localView.getRight();
            i1 = i2;
            n = i3;
            if (!t)
            {
              i1 = i2;
              n = i3;
              if ((localView instanceof TabLayout.d))
              {
                a((TabLayout.d)localView, TabLayout.a(TabLayout.this));
                i1 = (int)aleft;
                n = (int)aright;
              }
            }
            m = (int)(b * i1 + (1.0F - b) * m);
            i1 = (int)(b * n + (1.0F - b) * k);
            n = m;
          }
        }
      }
      else
      {
        n = -1;
        i1 = -1;
      }
      a(n, i1);
    }
    
    void a(int paramInt)
    {
      if (e.getColor() != paramInt)
      {
        e.setColor(paramInt);
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    void a(int paramInt, float paramFloat)
    {
      if ((j != null) && (j.isRunning())) {
        j.cancel();
      }
      a = paramInt;
      b = paramFloat;
      b();
    }
    
    void a(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != h) || (paramInt2 != i))
      {
        h = paramInt1;
        i = paramInt2;
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    boolean a()
    {
      int m = getChildCount();
      int k = 0;
      while (k < m)
      {
        if (getChildAt(k).getWidth() <= 0) {
          return true;
        }
        k += 1;
      }
      return false;
    }
    
    void b(int paramInt)
    {
      if (d != paramInt)
      {
        d = paramInt;
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    void b(final int paramInt1, int paramInt2)
    {
      if ((j != null) && (j.isRunning())) {
        j.cancel();
      }
      Object localObject = getChildAt(paramInt1);
      if (localObject == null)
      {
        b();
        return;
      }
      final int n = ((View)localObject).getLeft();
      final int i1 = ((View)localObject).getRight();
      final int m = n;
      final int k = i1;
      if (!t)
      {
        m = n;
        k = i1;
        if ((localObject instanceof TabLayout.d))
        {
          a((TabLayout.d)localObject, TabLayout.a(TabLayout.this));
          m = (int)aleft;
          k = (int)aright;
        }
      }
      n = h;
      i1 = i;
      if ((n != m) || (i1 != k))
      {
        localObject = new ValueAnimator();
        j = ((ValueAnimator)localObject);
        ((ValueAnimator)localObject).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        ((ValueAnimator)localObject).setDuration(paramInt2);
        ((ValueAnimator)localObject).setFloatValues(new float[] { 0.0F, 1.0F });
        ((ValueAnimator)localObject).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
        {
          public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
          {
            float f = paramAnonymousValueAnimator.getAnimatedFraction();
            a(AnimationUtils.lerp(n, m, f), AnimationUtils.lerp(i1, k, f));
          }
        });
        ((ValueAnimator)localObject).addListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            a = paramInt1;
            b = 0.0F;
          }
        });
        ((ValueAnimator)localObject).start();
      }
    }
    
    public void draw(Canvas paramCanvas)
    {
      Object localObject = i;
      int i1 = 0;
      int m;
      if (localObject != null) {
        m = i.getIntrinsicHeight();
      } else {
        m = 0;
      }
      if (d >= 0) {
        m = d;
      }
      int k = m;
      int n = i1;
      switch (q)
      {
      default: 
        k = 0;
        n = i1;
        break;
      case 3: 
        k = getHeight();
        n = i1;
        break;
      case 1: 
        n = (getHeight() - m) / 2;
        k = (getHeight() + m) / 2;
        break;
      case 0: 
        n = getHeight() - m;
        k = getHeight();
      }
      if ((h >= 0) && (i > h))
      {
        if (i != null) {
          localObject = i;
        } else {
          localObject = f;
        }
        localObject = DrawableCompat.wrap((Drawable)localObject);
        ((Drawable)localObject).setBounds(h, n, i, k);
        if (e != null) {
          if (Build.VERSION.SDK_INT == 21) {
            ((Drawable)localObject).setColorFilter(e.getColor(), PorterDuff.Mode.SRC_IN);
          } else {
            DrawableCompat.setTint((Drawable)localObject, e.getColor());
          }
        }
        ((Drawable)localObject).draw(paramCanvas);
      }
      super.draw(paramCanvas);
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if ((j != null) && (j.isRunning()))
      {
        j.cancel();
        long l = j.getDuration();
        b(a, Math.round((1.0F - j.getAnimatedFraction()) * (float)l));
        return;
      }
      b();
    }
    
    protected void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
        return;
      }
      int k = r;
      int i2 = 1;
      if ((k == 1) && (o == 1))
      {
        int i3 = getChildCount();
        int i1 = 0;
        k = 0;
        Object localObject;
        int n;
        for (int m = 0; k < i3; m = n)
        {
          localObject = getChildAt(k);
          n = m;
          if (((View)localObject).getVisibility() == 0) {
            n = Math.max(m, ((View)localObject).getMeasuredWidth());
          }
          k += 1;
        }
        if (m <= 0) {
          return;
        }
        k = a(16);
        if (m * i3 <= getMeasuredWidth() - k * 2)
        {
          k = 0;
          n = i1;
          while (n < i3)
          {
            localObject = (LinearLayout.LayoutParams)getChildAt(n).getLayoutParams();
            if ((width != m) || (weight != 0.0F))
            {
              width = m;
              weight = 0.0F;
              k = 1;
            }
            n += 1;
          }
        }
        else
        {
          o = 0;
          a(false);
          k = i2;
        }
        if (k != 0) {
          super.onMeasure(paramInt1, paramInt2);
        }
      }
    }
    
    public void onRtlPropertiesChanged(int paramInt)
    {
      super.onRtlPropertiesChanged(paramInt);
      if ((Build.VERSION.SDK_INT < 23) && (g != paramInt))
      {
        requestLayout();
        g = paramInt;
      }
    }
  }
  
  class d
    extends LinearLayout
  {
    private TabLayout.Tab b;
    private TextView c;
    private ImageView d;
    private View e;
    private TextView f;
    private ImageView g;
    @Nullable
    private Drawable h;
    private int i = 2;
    
    public d(Context paramContext)
    {
      super();
      a(paramContext);
      ViewCompat.setPaddingRelative(this, a, b, c, d);
      setGravity(17);
      setOrientation(s ^ true);
      setClickable(true);
      ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
    }
    
    private float a(Layout paramLayout, int paramInt, float paramFloat)
    {
      return paramLayout.getLineWidth(paramInt) * (paramFloat / paramLayout.getPaint().getTextSize());
    }
    
    private void a(Context paramContext)
    {
      if (m != 0)
      {
        h = AppCompatResources.getDrawable(paramContext, m);
        if ((h != null) && (h.isStateful())) {
          h.setState(getDrawableState());
        }
      }
      else
      {
        h = null;
      }
      GradientDrawable localGradientDrawable = new GradientDrawable();
      ((GradientDrawable)localGradientDrawable).setColor(0);
      paramContext = localGradientDrawable;
      if (h != null)
      {
        paramContext = new GradientDrawable();
        paramContext.setCornerRadius(1.0E-5F);
        paramContext.setColor(-1);
        ColorStateList localColorStateList = RippleUtils.convertToRippleDrawableColor(h);
        if (Build.VERSION.SDK_INT >= 21)
        {
          if (u) {
            localGradientDrawable = null;
          }
          if (u) {
            paramContext = null;
          }
          paramContext = new RippleDrawable(localColorStateList, localGradientDrawable, paramContext);
        }
        else
        {
          paramContext = DrawableCompat.wrap(paramContext);
          DrawableCompat.setTintList(paramContext, localColorStateList);
          paramContext = new LayerDrawable(new Drawable[] { localGradientDrawable, paramContext });
        }
      }
      ViewCompat.setBackground(this, paramContext);
      invalidate();
    }
    
    private void a(Canvas paramCanvas)
    {
      if (h != null)
      {
        h.setBounds(getLeft(), getTop(), getRight(), getBottom());
        h.draw(paramCanvas);
      }
    }
    
    private void a(@Nullable TextView paramTextView, @Nullable ImageView paramImageView)
    {
      Drawable localDrawable;
      if ((b != null) && (b.getIcon() != null)) {
        localDrawable = DrawableCompat.wrap(b.getIcon()).mutate();
      } else {
        localDrawable = null;
      }
      CharSequence localCharSequence;
      if (b != null) {
        localCharSequence = b.getText();
      } else {
        localCharSequence = null;
      }
      if (paramImageView != null) {
        if (localDrawable != null)
        {
          paramImageView.setImageDrawable(localDrawable);
          paramImageView.setVisibility(0);
          setVisibility(0);
        }
        else
        {
          paramImageView.setVisibility(8);
          paramImageView.setImageDrawable(null);
        }
      }
      boolean bool = TextUtils.isEmpty(localCharSequence) ^ true;
      if (paramTextView != null) {
        if (bool)
        {
          paramTextView.setText(localCharSequence);
          paramTextView.setVisibility(0);
          setVisibility(0);
        }
        else
        {
          paramTextView.setVisibility(8);
          paramTextView.setText(null);
        }
      }
      if (paramImageView != null)
      {
        paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
        int j;
        if ((bool) && (paramImageView.getVisibility() == 0)) {
          j = a(8);
        } else {
          j = 0;
        }
        if (s)
        {
          if (j != MarginLayoutParamsCompat.getMarginEnd(paramTextView))
          {
            MarginLayoutParamsCompat.setMarginEnd(paramTextView, j);
            bottomMargin = 0;
            paramImageView.setLayoutParams(paramTextView);
            paramImageView.requestLayout();
          }
        }
        else if (j != bottomMargin)
        {
          bottomMargin = j;
          MarginLayoutParamsCompat.setMarginEnd(paramTextView, 0);
          paramImageView.setLayoutParams(paramTextView);
          paramImageView.requestLayout();
        }
      }
      if (b != null) {
        paramTextView = TabLayout.Tab.a(b);
      } else {
        paramTextView = null;
      }
      if (bool) {
        paramTextView = null;
      }
      TooltipCompat.setTooltipText(this, paramTextView);
    }
    
    private int d()
    {
      View[] arrayOfView = new View[3];
      Object localObject = c;
      int m = 0;
      arrayOfView[0] = localObject;
      arrayOfView[1] = d;
      arrayOfView[2] = e;
      int i4 = arrayOfView.length;
      int n = 0;
      int j = 0;
      int i1;
      for (int k = 0; m < i4; k = i1)
      {
        localObject = arrayOfView[m];
        int i3 = n;
        int i2 = j;
        i1 = k;
        if (localObject != null)
        {
          i3 = n;
          i2 = j;
          i1 = k;
          if (((View)localObject).getVisibility() == 0)
          {
            if (k != 0) {
              j = Math.min(j, ((View)localObject).getLeft());
            } else {
              j = ((View)localObject).getLeft();
            }
            if (k != 0) {
              k = Math.max(n, ((View)localObject).getRight());
            } else {
              k = ((View)localObject).getRight();
            }
            i1 = 1;
            i2 = j;
            i3 = k;
          }
        }
        m += 1;
        n = i3;
        j = i2;
      }
      return n - j;
    }
    
    void a()
    {
      a(null);
      setSelected(false);
    }
    
    void a(@Nullable TabLayout.Tab paramTab)
    {
      if (paramTab != b)
      {
        b = paramTab;
        b();
      }
    }
    
    final void b()
    {
      TabLayout.Tab localTab = b;
      Object localObject2 = null;
      if (localTab != null) {
        localObject1 = localTab.getCustomView();
      } else {
        localObject1 = null;
      }
      if (localObject1 != null)
      {
        ViewParent localViewParent = ((View)localObject1).getParent();
        if (localViewParent != this)
        {
          if (localViewParent != null) {
            ((ViewGroup)localViewParent).removeView((View)localObject1);
          }
          addView((View)localObject1);
        }
        e = ((View)localObject1);
        if (c != null) {
          c.setVisibility(8);
        }
        if (d != null)
        {
          d.setVisibility(8);
          d.setImageDrawable(null);
        }
        f = ((TextView)((View)localObject1).findViewById(16908308));
        if (f != null) {
          i = TextViewCompat.getMaxLines(f);
        }
        g = ((ImageView)((View)localObject1).findViewById(16908294));
      }
      else
      {
        if (e != null)
        {
          removeView(e);
          e = null;
        }
        f = null;
        g = null;
      }
      Object localObject1 = e;
      boolean bool2 = false;
      if (localObject1 == null)
      {
        if (d == null)
        {
          localObject1 = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, this, false);
          addView((View)localObject1, 0);
          d = ((ImageView)localObject1);
        }
        localObject1 = localObject2;
        if (localTab != null)
        {
          localObject1 = localObject2;
          if (localTab.getIcon() != null) {
            localObject1 = DrawableCompat.wrap(localTab.getIcon()).mutate();
          }
        }
        if (localObject1 != null)
        {
          DrawableCompat.setTintList((Drawable)localObject1, g);
          if (j != null) {
            DrawableCompat.setTintMode((Drawable)localObject1, j);
          }
        }
        if (c == null)
        {
          localObject1 = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, this, false);
          addView((View)localObject1);
          c = ((TextView)localObject1);
          i = TextViewCompat.getMaxLines(c);
        }
        TextViewCompat.setTextAppearance(c, e);
        if (f != null) {
          c.setTextColor(f);
        }
        a(c, d);
      }
      else if ((f != null) || (g != null))
      {
        a(f, g);
      }
      if ((localTab != null) && (!TextUtils.isEmpty(TabLayout.Tab.a(localTab)))) {
        setContentDescription(TabLayout.Tab.a(localTab));
      }
      boolean bool1 = bool2;
      if (localTab != null)
      {
        bool1 = bool2;
        if (localTab.isSelected()) {
          bool1 = true;
        }
      }
      setSelected(bool1);
    }
    
    final void c()
    {
      setOrientation(s ^ true);
      if ((f == null) && (g == null))
      {
        a(c, d);
        return;
      }
      a(f, g);
    }
    
    protected void drawableStateChanged()
    {
      super.drawableStateChanged();
      int[] arrayOfInt = getDrawableState();
      Drawable localDrawable = h;
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (localDrawable != null)
      {
        bool1 = bool2;
        if (h.isStateful()) {
          bool1 = false | h.setState(arrayOfInt);
        }
      }
      if (bool1)
      {
        invalidate();
        invalidate();
      }
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
    }
    
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
    }
    
    public void onMeasure(int paramInt1, int paramInt2)
    {
      int k = View.MeasureSpec.getSize(paramInt1);
      int m = View.MeasureSpec.getMode(paramInt1);
      int n = getTabMaxWidth();
      int j = paramInt1;
      if (n > 0) {
        if (m != 0)
        {
          j = paramInt1;
          if (k <= n) {}
        }
        else
        {
          j = View.MeasureSpec.makeMeasureSpec(TabLayout.this.n, Integer.MIN_VALUE);
        }
      }
      super.onMeasure(j, paramInt2);
      if (c != null)
      {
        float f2 = TabLayout.this.k;
        k = i;
        Object localObject = d;
        m = 1;
        float f1;
        if ((localObject != null) && (d.getVisibility() == 0))
        {
          paramInt1 = 1;
          f1 = f2;
        }
        else
        {
          f1 = f2;
          paramInt1 = k;
          if (c != null)
          {
            f1 = f2;
            paramInt1 = k;
            if (c.getLineCount() > 1)
            {
              f1 = l;
              paramInt1 = k;
            }
          }
        }
        f2 = c.getTextSize();
        n = c.getLineCount();
        k = TextViewCompat.getMaxLines(c);
        boolean bool = f1 < f2;
        if ((bool) || ((k >= 0) && (paramInt1 != k)))
        {
          k = m;
          if (r == 1)
          {
            k = m;
            if (bool)
            {
              k = m;
              if (n == 1)
              {
                localObject = c.getLayout();
                if (localObject != null)
                {
                  k = m;
                  if (a((Layout)localObject, 0, f1) <= getMeasuredWidth() - getPaddingLeft() - getPaddingRight()) {}
                }
                else
                {
                  k = 0;
                }
              }
            }
          }
          if (k != 0)
          {
            c.setTextSize(0, f1);
            c.setMaxLines(paramInt1);
            super.onMeasure(j, paramInt2);
          }
        }
      }
    }
    
    public boolean performClick()
    {
      boolean bool = super.performClick();
      if (b != null)
      {
        if (!bool) {
          playSoundEffect(0);
        }
        b.select();
        return true;
      }
      return bool;
    }
    
    public void setSelected(boolean paramBoolean)
    {
      int j;
      if (isSelected() != paramBoolean) {
        j = 1;
      } else {
        j = 0;
      }
      super.setSelected(paramBoolean);
      if ((j != 0) && (paramBoolean) && (Build.VERSION.SDK_INT < 16)) {
        sendAccessibilityEvent(4);
      }
      if (c != null) {
        c.setSelected(paramBoolean);
      }
      if (d != null) {
        d.setSelected(paramBoolean);
      }
      if (e != null) {
        e.setSelected(paramBoolean);
      }
    }
  }
}
