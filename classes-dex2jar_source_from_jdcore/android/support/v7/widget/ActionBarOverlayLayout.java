package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.Window.Callback;
import android.widget.OverScroller;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActionBarOverlayLayout
  extends ViewGroup
  implements NestedScrollingParent, DecorContentParent
{
  static final int[] e = { R.attr.actionBarSize, 16842841 };
  private final Runnable A = new Runnable()
  {
    public void run()
    {
      b();
      c = a.animate().translationY(-a.getHeight()).setListener(d);
    }
  };
  private final NestedScrollingParentHelper B;
  ActionBarContainer a;
  boolean b;
  ViewPropertyAnimator c;
  final AnimatorListenerAdapter d = new AnimatorListenerAdapter()
  {
    public void onAnimationCancel(Animator paramAnonymousAnimator)
    {
      c = null;
      b = false;
    }
    
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      c = null;
      b = false;
    }
  };
  private int f;
  private int g = 0;
  private ContentFrameLayout h;
  private DecorToolbar i;
  private Drawable j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private int o;
  private int p;
  private final Rect q = new Rect();
  private final Rect r = new Rect();
  private final Rect s = new Rect();
  private final Rect t = new Rect();
  private final Rect u = new Rect();
  private final Rect v = new Rect();
  private final Rect w = new Rect();
  private ActionBarVisibilityCallback x;
  private OverScroller y;
  private final Runnable z = new Runnable()
  {
    public void run()
    {
      b();
      c = a.animate().translationY(0.0F).setListener(d);
    }
  };
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    B = new NestedScrollingParentHelper(this);
  }
  
  private DecorToolbar a(View paramView)
  {
    if ((paramView instanceof DecorToolbar)) {
      return (DecorToolbar)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).getWrapper();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Can't make a decor toolbar out of ");
    localStringBuilder.append(paramView.getClass().getSimpleName());
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  private void a(Context paramContext)
  {
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(e);
    boolean bool2 = false;
    f = localTypedArray.getDimensionPixelSize(0, 0);
    j = localTypedArray.getDrawable(1);
    if (j == null) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    setWillNotDraw(bool1);
    localTypedArray.recycle();
    boolean bool1 = bool2;
    if (getApplicationInfotargetSdkVersion < 19) {
      bool1 = true;
    }
    k = bool1;
    y = new OverScroller(paramContext);
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    y.fling(0, 0, 0, (int)paramFloat2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
    return y.getFinalY() > a.getHeight();
  }
  
  private boolean a(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    paramView = (LayoutParams)paramView.getLayoutParams();
    boolean bool;
    if ((paramBoolean1) && (leftMargin != left))
    {
      leftMargin = left;
      bool = true;
    }
    else
    {
      bool = false;
    }
    paramBoolean1 = bool;
    if (paramBoolean2)
    {
      paramBoolean1 = bool;
      if (topMargin != top)
      {
        topMargin = top;
        paramBoolean1 = true;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      paramBoolean2 = paramBoolean1;
      if (rightMargin != right)
      {
        rightMargin = right;
        paramBoolean2 = true;
      }
    }
    paramBoolean1 = paramBoolean2;
    if (paramBoolean3)
    {
      paramBoolean1 = paramBoolean2;
      if (bottomMargin != bottom)
      {
        bottomMargin = bottom;
        paramBoolean1 = true;
      }
    }
    return paramBoolean1;
  }
  
  private void c()
  {
    b();
    postDelayed(z, 600L);
  }
  
  private void d()
  {
    b();
    postDelayed(A, 600L);
  }
  
  private void e()
  {
    b();
    z.run();
  }
  
  private void f()
  {
    b();
    A.run();
  }
  
  void a()
  {
    if (h == null)
    {
      h = ((ContentFrameLayout)findViewById(R.id.action_bar_activity_content));
      a = ((ActionBarContainer)findViewById(R.id.action_bar_container));
      i = a(findViewById(R.id.action_bar));
    }
  }
  
  void b()
  {
    removeCallbacks(z);
    removeCallbacks(A);
    if (c != null) {
      c.cancel();
    }
  }
  
  public boolean canShowOverflowMenu()
  {
    a();
    return i.canShowOverflowMenu();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void dismissPopups()
  {
    a();
    i.dismissPopupMenus();
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((j != null) && (!k))
    {
      int i1;
      if (a.getVisibility() == 0) {
        i1 = (int)(a.getBottom() + a.getTranslationY() + 0.5F);
      } else {
        i1 = 0;
      }
      j.setBounds(0, i1, getWidth(), j.getIntrinsicHeight() + i1);
      j.draw(paramCanvas);
    }
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    a();
    ViewCompat.getWindowSystemUiVisibility(this);
    boolean bool = a(a, paramRect, true, true, false, true);
    t.set(paramRect);
    ViewUtils.computeFitSystemWindows(this, t, q);
    if (!u.equals(t))
    {
      u.set(t);
      bool = true;
    }
    if (!r.equals(q))
    {
      r.set(q);
      bool = true;
    }
    if (bool) {
      requestLayout();
    }
    return true;
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getActionBarHideOffset()
  {
    if (a != null) {
      return -(int)a.getTranslationY();
    }
    return 0;
  }
  
  public int getNestedScrollAxes()
  {
    return B.getNestedScrollAxes();
  }
  
  public CharSequence getTitle()
  {
    a();
    return i.getTitle();
  }
  
  public boolean hasIcon()
  {
    a();
    return i.hasIcon();
  }
  
  public boolean hasLogo()
  {
    a();
    return i.hasLogo();
  }
  
  public boolean hideOverflowMenu()
  {
    a();
    return i.hideOverflowMenu();
  }
  
  public void initFeature(int paramInt)
  {
    a();
    if (paramInt != 2)
    {
      if (paramInt != 5)
      {
        if (paramInt != 109) {
          return;
        }
        setOverlayMode(true);
        return;
      }
      i.initIndeterminateProgress();
      return;
    }
    i.initProgress();
  }
  
  public boolean isHideOnContentScrollEnabled()
  {
    return n;
  }
  
  public boolean isInOverlayMode()
  {
    return l;
  }
  
  public boolean isOverflowMenuShowPending()
  {
    a();
    return i.isOverflowMenuShowPending();
  }
  
  public boolean isOverflowMenuShowing()
  {
    a();
    return i.isOverflowMenuShowing();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a(getContext());
    ViewCompat.requestApplyInsets(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        int i1 = localView.getMeasuredWidth();
        int i2 = localView.getMeasuredHeight();
        int i3 = leftMargin + paramInt3;
        int i4 = topMargin + paramInt4;
        localView.layout(i3, i4, i1 + i3, i2 + i4);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    a();
    measureChildWithMargins(a, paramInt1, 0, paramInt2, 0);
    Object localObject = (LayoutParams)a.getLayoutParams();
    int i6 = Math.max(0, a.getMeasuredWidth() + leftMargin + rightMargin);
    int i5 = Math.max(0, a.getMeasuredHeight() + topMargin + bottomMargin);
    int i4 = View.combineMeasuredStates(0, a.getMeasuredState());
    if ((ViewCompat.getWindowSystemUiVisibility(this) & 0x100) != 0) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (i2 != 0)
    {
      i3 = f;
      i1 = i3;
      if (m)
      {
        i1 = i3;
        if (a.getTabContainer() != null) {
          i1 = i3 + f;
        }
      }
    }
    else if (a.getVisibility() != 8)
    {
      i1 = a.getMeasuredHeight();
    }
    else
    {
      i1 = 0;
    }
    s.set(q);
    v.set(t);
    if ((!l) && (i2 == 0))
    {
      localObject = s;
      top += i1;
      localObject = s;
      bottom += 0;
    }
    else
    {
      localObject = v;
      top += i1;
      localObject = v;
      bottom += 0;
    }
    a(h, s, true, true, true, true);
    if (!w.equals(v))
    {
      w.set(v);
      h.dispatchFitSystemWindows(v);
    }
    measureChildWithMargins(h, paramInt1, 0, paramInt2, 0);
    localObject = (LayoutParams)h.getLayoutParams();
    int i1 = Math.max(i6, h.getMeasuredWidth() + leftMargin + rightMargin);
    int i2 = Math.max(i5, h.getMeasuredHeight() + topMargin + bottomMargin);
    int i3 = View.combineMeasuredStates(i4, h.getMeasuredState());
    i4 = getPaddingLeft();
    i5 = getPaddingRight();
    i2 = Math.max(i2 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
    setMeasuredDimension(View.resolveSizeAndState(Math.max(i1 + (i4 + i5), getSuggestedMinimumWidth()), paramInt1, i3), View.resolveSizeAndState(i2, paramInt2, i3 << 16));
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((n) && (paramBoolean))
    {
      if (a(paramFloat1, paramFloat2)) {
        f();
      } else {
        e();
      }
      b = true;
      return true;
    }
    return false;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    o += paramInt2;
    setActionBarHideOffset(o);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    B.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    o = getActionBarHideOffset();
    b();
    if (x != null) {
      x.onContentScrollStarted();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) != 0) && (a.getVisibility() == 0)) {
      return n;
    }
    return false;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((n) && (!b)) {
      if (o <= a.getHeight()) {
        c();
      } else {
        d();
      }
    }
    if (x != null) {
      x.onContentScrollStopped();
    }
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    a();
    int i3 = p;
    p = paramInt;
    int i2 = 0;
    int i1;
    if ((paramInt & 0x4) == 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if ((paramInt & 0x100) != 0) {
      i2 = 1;
    }
    if (x != null)
    {
      x.enableContentAnimations(i2 ^ 0x1);
      if ((i1 == 0) && (i2 != 0)) {
        x.hideForSystem();
      } else {
        x.showForSystem();
      }
    }
    if ((((i3 ^ paramInt) & 0x100) != 0) && (x != null)) {
      ViewCompat.requestApplyInsets(this);
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    g = paramInt;
    if (x != null) {
      x.onWindowVisibilityChanged(paramInt);
    }
  }
  
  public void restoreToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    a();
    i.restoreHierarchyState(paramSparseArray);
  }
  
  public void saveToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    a();
    i.saveHierarchyState(paramSparseArray);
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    b();
    paramInt = Math.max(0, Math.min(paramInt, a.getHeight()));
    a.setTranslationY(-paramInt);
  }
  
  public void setActionBarVisibilityCallback(ActionBarVisibilityCallback paramActionBarVisibilityCallback)
  {
    x = paramActionBarVisibilityCallback;
    if (getWindowToken() != null)
    {
      x.onWindowVisibilityChanged(g);
      if (p != 0)
      {
        onWindowSystemUiVisibilityChanged(p);
        ViewCompat.requestApplyInsets(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != n)
    {
      n = paramBoolean;
      if (!paramBoolean)
      {
        b();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    a();
    i.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    a();
    i.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    a();
    i.setLogo(paramInt);
  }
  
  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback)
  {
    a();
    i.setMenu(paramMenu, paramCallback);
  }
  
  public void setMenuPrepared()
  {
    a();
    i.setMenuPrepared();
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    l = paramBoolean;
    if ((paramBoolean) && (getContextgetApplicationInfotargetSdkVersion < 19)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    k = paramBoolean;
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    a();
    i.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    a();
    i.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public boolean showOverflowMenu()
  {
    a();
    return i.showOverflowMenu();
  }
  
  public static abstract interface ActionBarVisibilityCallback
  {
    public abstract void enableContentAnimations(boolean paramBoolean);
    
    public abstract void hideForSystem();
    
    public abstract void onContentScrollStarted();
    
    public abstract void onContentScrollStopped();
    
    public abstract void onWindowVisibilityChanged(int paramInt);
    
    public abstract void showForSystem();
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
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
}
