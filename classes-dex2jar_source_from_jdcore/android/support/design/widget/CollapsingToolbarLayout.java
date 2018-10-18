package android.support.design.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.StyleRes;
import android.support.design.R.id;
import android.support.design.R.styleable;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.math.MathUtils;
import android.support.v4.util.ObjectsCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  final CollapsingTextHelper a = new CollapsingTextHelper(this);
  Drawable b;
  int c;
  WindowInsetsCompat d;
  private boolean e = true;
  private int f;
  private Toolbar g;
  private View h;
  private View i;
  private int j;
  private int k;
  private int l;
  private int m;
  private final Rect n = new Rect();
  private boolean o;
  private boolean p;
  private Drawable q;
  private int r;
  private boolean s;
  private ValueAnimator t;
  private long u;
  private int v = -1;
  private AppBarLayout.OnOffsetChangedListener w;
  
  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.CollapsingToolbarLayout, paramInt, android.support.design.R.style.Widget_Design_CollapsingToolbar, new int[0]);
    a.setExpandedTextGravity(paramContext.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    a.setCollapsedTextGravity(paramContext.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
    m = paramInt;
    l = paramInt;
    k = paramInt;
    j = paramInt;
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
      j = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
    }
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
      l = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
    }
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
      k = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
    }
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
      m = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
    }
    o = paramContext.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
    setTitle(paramContext.getText(R.styleable.CollapsingToolbarLayout_title));
    a.setExpandedTextAppearance(android.support.design.R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
    a.setCollapsedTextAppearance(android.support.v7.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
      a.setExpandedTextAppearance(paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
    }
    if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
      a.setCollapsedTextAppearance(paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
    }
    v = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
    u = paramContext.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
    setContentScrim(paramContext.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
    setStatusBarScrim(paramContext.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
    f = paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
    paramContext.recycle();
    setWillNotDraw(false);
    ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener()
    {
      public WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
      {
        return a(paramAnonymousWindowInsetsCompat);
      }
    });
  }
  
  static i a(View paramView)
  {
    i localI2 = (i)paramView.getTag(R.id.view_offset_helper);
    i localI1 = localI2;
    if (localI2 == null)
    {
      localI1 = new i(paramView);
      paramView.setTag(R.id.view_offset_helper, localI1);
    }
    return localI1;
  }
  
  private void a(int paramInt)
  {
    b();
    if (t == null)
    {
      t = new ValueAnimator();
      t.setDuration(u);
      ValueAnimator localValueAnimator = t;
      TimeInterpolator localTimeInterpolator;
      if (paramInt > r) {
        localTimeInterpolator = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
      } else {
        localTimeInterpolator = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
      }
      localValueAnimator.setInterpolator(localTimeInterpolator);
      t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          setScrimAlpha(((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
        }
      });
    }
    else if (t.isRunning())
    {
      t.cancel();
    }
    t.setIntValues(new int[] { r, paramInt });
    t.start();
  }
  
  private void b()
  {
    if (!e) {
      return;
    }
    Object localObject2 = null;
    g = null;
    h = null;
    if (f != -1)
    {
      g = ((Toolbar)findViewById(f));
      if (g != null) {
        h = d(g);
      }
    }
    if (g == null)
    {
      int i2 = getChildCount();
      int i1 = 0;
      Object localObject1;
      for (;;)
      {
        localObject1 = localObject2;
        if (i1 >= i2) {
          break;
        }
        localObject1 = getChildAt(i1);
        if ((localObject1 instanceof Toolbar))
        {
          localObject1 = (Toolbar)localObject1;
          break;
        }
        i1 += 1;
      }
      g = ((Toolbar)localObject1);
    }
    c();
    e = false;
  }
  
  private void c()
  {
    if ((!o) && (i != null))
    {
      ViewParent localViewParent = i.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(i);
      }
    }
    if ((o) && (g != null))
    {
      if (i == null) {
        i = new View(getContext());
      }
      if (i.getParent() == null) {
        g.addView(i, -1, -1);
      }
    }
  }
  
  private boolean c(View paramView)
  {
    View localView = h;
    boolean bool = false;
    if ((localView != null) && (h != this) ? paramView == h : paramView == g) {
      bool = true;
    }
    return bool;
  }
  
  private View d(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    View localView = paramView;
    for (paramView = localViewParent; (paramView != this) && (paramView != null); paramView = paramView.getParent()) {
      if ((paramView instanceof View)) {
        localView = (View)paramView;
      }
    }
    return localView;
  }
  
  private void d()
  {
    setContentDescription(getTitle());
  }
  
  private static int e(@NonNull View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      return paramView.getHeight() + topMargin + bottomMargin;
    }
    return paramView.getHeight();
  }
  
  WindowInsetsCompat a(WindowInsetsCompat paramWindowInsetsCompat)
  {
    WindowInsetsCompat localWindowInsetsCompat;
    if (ViewCompat.getFitsSystemWindows(this)) {
      localWindowInsetsCompat = paramWindowInsetsCompat;
    } else {
      localWindowInsetsCompat = null;
    }
    if (!ObjectsCompat.equals(d, localWindowInsetsCompat))
    {
      d = localWindowInsetsCompat;
      requestLayout();
    }
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
  
  final void a()
  {
    if ((q != null) || (b != null))
    {
      boolean bool;
      if (getHeight() + c < getScrimVisibleHeightTrigger()) {
        bool = true;
      } else {
        bool = false;
      }
      setScrimsShown(bool);
    }
  }
  
  final int b(View paramView)
  {
    i localI = a(paramView);
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    return getHeight() - localI.d() - paramView.getHeight() - bottomMargin;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    b();
    if ((g == null) && (q != null) && (r > 0))
    {
      q.mutate().setAlpha(r);
      q.draw(paramCanvas);
    }
    if ((o) && (p)) {
      a.draw(paramCanvas);
    }
    if ((b != null) && (r > 0))
    {
      int i1;
      if (d != null) {
        i1 = d.getSystemWindowInsetTop();
      } else {
        i1 = 0;
      }
      if (i1 > 0)
      {
        b.setBounds(0, -c, getWidth(), i1 - c);
        b.mutate().setAlpha(r);
        b.draw(paramCanvas);
      }
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    Drawable localDrawable = q;
    boolean bool = true;
    int i1;
    if ((localDrawable != null) && (r > 0) && (c(paramView)))
    {
      q.mutate().setAlpha(r);
      q.draw(paramCanvas);
      i1 = 1;
    }
    else
    {
      i1 = 0;
    }
    if (!super.drawChild(paramCanvas, paramView, paramLong))
    {
      if (i1 != 0) {
        return true;
      }
      bool = false;
    }
    return bool;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    Drawable localDrawable = b;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = false | localDrawable.setState(arrayOfInt);
      }
    }
    localDrawable = q;
    bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = bool1 | localDrawable.setState(arrayOfInt);
      }
    }
    bool1 = bool2;
    if (a != null) {
      bool1 = bool2 | a.setState(arrayOfInt);
    }
    if (bool1) {
      invalidate();
    }
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getCollapsedTitleGravity()
  {
    return a.getCollapsedTextGravity();
  }
  
  @NonNull
  public Typeface getCollapsedTitleTypeface()
  {
    return a.getCollapsedTypeface();
  }
  
  @Nullable
  public Drawable getContentScrim()
  {
    return q;
  }
  
  public int getExpandedTitleGravity()
  {
    return a.getExpandedTextGravity();
  }
  
  public int getExpandedTitleMarginBottom()
  {
    return m;
  }
  
  public int getExpandedTitleMarginEnd()
  {
    return l;
  }
  
  public int getExpandedTitleMarginStart()
  {
    return j;
  }
  
  public int getExpandedTitleMarginTop()
  {
    return k;
  }
  
  @NonNull
  public Typeface getExpandedTitleTypeface()
  {
    return a.getExpandedTypeface();
  }
  
  int getScrimAlpha()
  {
    return r;
  }
  
  public long getScrimAnimationDuration()
  {
    return u;
  }
  
  public int getScrimVisibleHeightTrigger()
  {
    if (v >= 0) {
      return v;
    }
    int i1;
    if (d != null) {
      i1 = d.getSystemWindowInsetTop();
    } else {
      i1 = 0;
    }
    int i2 = ViewCompat.getMinimumHeight(this);
    if (i2 > 0) {
      return Math.min(i2 * 2 + i1, getHeight());
    }
    return getHeight() / 3;
  }
  
  @Nullable
  public Drawable getStatusBarScrim()
  {
    return b;
  }
  
  @Nullable
  public CharSequence getTitle()
  {
    if (o) {
      return a.getText();
    }
    return null;
  }
  
  public boolean isTitleEnabled()
  {
    return o;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View)localViewParent));
      if (w == null) {
        w = new a();
      }
      ((AppBarLayout)localViewParent).addOnOffsetChangedListener(w);
      ViewCompat.requestApplyInsets(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((w != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).removeOnOffsetChangedListener(w);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Object localObject = d;
    int i4 = 0;
    int i2;
    int i3;
    int i1;
    if (localObject != null)
    {
      i2 = d.getSystemWindowInsetTop();
      i3 = getChildCount();
      i1 = 0;
      while (i1 < i3)
      {
        localObject = getChildAt(i1);
        if ((!ViewCompat.getFitsSystemWindows((View)localObject)) && (((View)localObject).getTop() < i2)) {
          ViewCompat.offsetTopAndBottom((View)localObject, i2);
        }
        i1 += 1;
      }
    }
    if ((o) && (i != null))
    {
      paramBoolean = ViewCompat.isAttachedToWindow(i);
      i1 = 1;
      if ((paramBoolean) && (i.getVisibility() == 0)) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      p = paramBoolean;
      if (p)
      {
        if (ViewCompat.getLayoutDirection(this) != 1) {
          i1 = 0;
        }
        if (h != null) {
          localObject = h;
        } else {
          localObject = g;
        }
        int i5 = b((View)localObject);
        DescendantOffsetUtils.getDescendantRect(this, i, n);
        localObject = a;
        int i6 = n.left;
        if (i1 != 0) {
          i2 = g.getTitleMarginEnd();
        } else {
          i2 = g.getTitleMarginStart();
        }
        int i7 = n.top;
        int i8 = g.getTitleMarginTop();
        int i9 = n.right;
        if (i1 != 0) {
          i3 = g.getTitleMarginStart();
        } else {
          i3 = g.getTitleMarginEnd();
        }
        ((CollapsingTextHelper)localObject).setCollapsedBounds(i6 + i2, i7 + i5 + i8, i9 + i3, n.bottom + i5 - g.getTitleMarginBottom());
        localObject = a;
        if (i1 != 0) {
          i2 = l;
        } else {
          i2 = j;
        }
        i3 = n.top;
        i5 = k;
        if (i1 != 0) {
          i1 = j;
        } else {
          i1 = l;
        }
        ((CollapsingTextHelper)localObject).setExpandedBounds(i2, i3 + i5, paramInt3 - paramInt1 - i1, paramInt4 - paramInt2 - m);
        a.recalculate();
      }
    }
    paramInt2 = getChildCount();
    paramInt1 = i4;
    while (paramInt1 < paramInt2)
    {
      a(getChildAt(paramInt1)).a();
      paramInt1 += 1;
    }
    if (g != null)
    {
      if ((o) && (TextUtils.isEmpty(a.getText()))) {
        setTitle(g.getTitle());
      }
      if ((h != null) && (h != this)) {
        setMinimumHeight(e(h));
      } else {
        setMinimumHeight(e(g));
      }
    }
    a();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    b();
    super.onMeasure(paramInt1, paramInt2);
    int i1 = View.MeasureSpec.getMode(paramInt2);
    if (d != null) {
      paramInt2 = d.getSystemWindowInsetTop();
    } else {
      paramInt2 = 0;
    }
    if ((i1 == 0) && (paramInt2 > 0)) {
      super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + paramInt2, 1073741824));
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (q != null) {
      q.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    a.setCollapsedTextGravity(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(@StyleRes int paramInt)
  {
    a.setCollapsedTextAppearance(paramInt);
  }
  
  public void setCollapsedTitleTextColor(@ColorInt int paramInt)
  {
    setCollapsedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setCollapsedTitleTextColor(@NonNull ColorStateList paramColorStateList)
  {
    a.setCollapsedTextColor(paramColorStateList);
  }
  
  public void setCollapsedTitleTypeface(@Nullable Typeface paramTypeface)
  {
    a.setCollapsedTypeface(paramTypeface);
  }
  
  public void setContentScrim(@Nullable Drawable paramDrawable)
  {
    if (q != paramDrawable)
    {
      Drawable localDrawable2 = q;
      Drawable localDrawable1 = null;
      if (localDrawable2 != null) {
        q.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable1 = paramDrawable.mutate();
      }
      q = localDrawable1;
      if (q != null)
      {
        q.setBounds(0, 0, getWidth(), getHeight());
        q.setCallback(this);
        q.setAlpha(r);
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public void setContentScrimColor(@ColorInt int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(@DrawableRes int paramInt)
  {
    setContentScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(@ColorInt int paramInt)
  {
    setExpandedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    a.setExpandedTextGravity(paramInt);
  }
  
  public void setExpandedTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j = paramInt1;
    k = paramInt2;
    l = paramInt3;
    m = paramInt4;
    requestLayout();
  }
  
  public void setExpandedTitleMarginBottom(int paramInt)
  {
    m = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginEnd(int paramInt)
  {
    l = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginStart(int paramInt)
  {
    j = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginTop(int paramInt)
  {
    k = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleTextAppearance(@StyleRes int paramInt)
  {
    a.setExpandedTextAppearance(paramInt);
  }
  
  public void setExpandedTitleTextColor(@NonNull ColorStateList paramColorStateList)
  {
    a.setExpandedTextColor(paramColorStateList);
  }
  
  public void setExpandedTitleTypeface(@Nullable Typeface paramTypeface)
  {
    a.setExpandedTypeface(paramTypeface);
  }
  
  void setScrimAlpha(int paramInt)
  {
    if (paramInt != r)
    {
      if ((q != null) && (g != null)) {
        ViewCompat.postInvalidateOnAnimation(g);
      }
      r = paramInt;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public void setScrimAnimationDuration(@IntRange(from=0L) long paramLong)
  {
    u = paramLong;
  }
  
  public void setScrimVisibleHeightTrigger(@IntRange(from=0L) int paramInt)
  {
    if (v != paramInt)
    {
      v = paramInt;
      a();
    }
  }
  
  public void setScrimsShown(boolean paramBoolean)
  {
    boolean bool;
    if ((ViewCompat.isLaidOut(this)) && (!isInEditMode())) {
      bool = true;
    } else {
      bool = false;
    }
    setScrimsShown(paramBoolean, bool);
  }
  
  public void setScrimsShown(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (s != paramBoolean1)
    {
      int i2 = 0;
      int i1 = 0;
      if (paramBoolean2)
      {
        if (paramBoolean1) {
          i1 = 255;
        }
        a(i1);
      }
      else
      {
        i1 = i2;
        if (paramBoolean1) {
          i1 = 255;
        }
        setScrimAlpha(i1);
      }
      s = paramBoolean1;
    }
  }
  
  public void setStatusBarScrim(@Nullable Drawable paramDrawable)
  {
    if (b != paramDrawable)
    {
      Drawable localDrawable2 = b;
      Drawable localDrawable1 = null;
      if (localDrawable2 != null) {
        b.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable1 = paramDrawable.mutate();
      }
      b = localDrawable1;
      if (b != null)
      {
        if (b.isStateful()) {
          b.setState(getDrawableState());
        }
        DrawableCompat.setLayoutDirection(b, ViewCompat.getLayoutDirection(this));
        paramDrawable = b;
        boolean bool;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        paramDrawable.setVisible(bool, false);
        b.setCallback(this);
        b.setAlpha(r);
      }
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public void setStatusBarScrimColor(@ColorInt int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(@DrawableRes int paramInt)
  {
    setStatusBarScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setTitle(@Nullable CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
    d();
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != o)
    {
      o = paramBoolean;
      d();
      c();
      requestLayout();
    }
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
    if ((b != null) && (b.isVisible() != bool)) {
      b.setVisible(bool, false);
    }
    if ((q != null) && (q.isVisible() != bool)) {
      q.setVisible(bool, false);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == q) || (paramDrawable == b);
  }
  
  public static class LayoutParams
    extends FrameLayout.LayoutParams
  {
    public static final int COLLAPSE_MODE_OFF = 0;
    public static final int COLLAPSE_MODE_PARALLAX = 2;
    public static final int COLLAPSE_MODE_PIN = 1;
    int a = 0;
    float b = 0.5F;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(int paramInt1, int paramInt2, int paramInt3)
    {
      super(paramInt2, paramInt3);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout_Layout);
      a = paramContext.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
      setParallaxMultiplier(paramContext.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5F));
      paramContext.recycle();
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
    public LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public int getCollapseMode()
    {
      return a;
    }
    
    public float getParallaxMultiplier()
    {
      return b;
    }
    
    public void setCollapseMode(int paramInt)
    {
      a = paramInt;
    }
    
    public void setParallaxMultiplier(float paramFloat)
    {
      b = paramFloat;
    }
  }
  
  private class a
    implements AppBarLayout.OnOffsetChangedListener
  {
    a() {}
    
    public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
    {
      c = paramInt;
      int i;
      if (d != null) {
        i = d.getSystemWindowInsetTop();
      } else {
        i = 0;
      }
      int k = getChildCount();
      int j = 0;
      while (j < k)
      {
        paramAppBarLayout = getChildAt(j);
        CollapsingToolbarLayout.LayoutParams localLayoutParams = (CollapsingToolbarLayout.LayoutParams)paramAppBarLayout.getLayoutParams();
        i localI = CollapsingToolbarLayout.a(paramAppBarLayout);
        switch (a)
        {
        default: 
          break;
        case 2: 
          localI.a(Math.round(-paramInt * b));
          break;
        case 1: 
          localI.a(MathUtils.clamp(-paramInt, 0, b(paramAppBarLayout)));
        }
        j += 1;
      }
      a();
      if ((b != null) && (i > 0)) {
        ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.this);
      }
      j = getHeight();
      k = ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this);
      a.setExpansionFraction(Math.abs(paramInt) / (j - k - i));
    }
  }
}
