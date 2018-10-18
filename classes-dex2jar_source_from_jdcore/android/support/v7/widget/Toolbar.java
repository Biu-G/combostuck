package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.CollapsibleActionView;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.text.Layout;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class Toolbar
  extends ViewGroup
{
  private int A;
  private int B;
  private boolean C;
  private boolean D;
  private final ArrayList<View> E = new ArrayList();
  private final ArrayList<View> F = new ArrayList();
  private final int[] G = new int[2];
  private final ActionMenuView.OnMenuItemClickListener H = new ActionMenuView.OnMenuItemClickListener()
  {
    public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
    {
      if (e != null) {
        return e.onMenuItemClick(paramAnonymousMenuItem);
      }
      return false;
    }
  };
  private ToolbarWidgetWrapper I;
  private b J;
  private a K;
  private MenuPresenter.Callback L;
  private MenuBuilder.Callback M;
  private boolean N;
  private final Runnable O = new Runnable()
  {
    public void run()
    {
      showOverflowMenu();
    }
  };
  private ActionMenuView a;
  ImageButton b;
  View c;
  int d;
  OnMenuItemClickListener e;
  private TextView f;
  private TextView g;
  private ImageButton h;
  private ImageView i;
  private Drawable j;
  private CharSequence k;
  private Context l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private z u;
  private int v;
  private int w;
  private int x = 8388627;
  private CharSequence y;
  private CharSequence z;
  
  public Toolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Toolbar(Context paramContext, @Nullable AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.toolbarStyle);
  }
  
  public Toolbar(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = TintTypedArray.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.Toolbar, paramInt, 0);
    n = paramContext.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
    o = paramContext.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
    x = paramContext.getInteger(R.styleable.Toolbar_android_gravity, x);
    d = paramContext.getInteger(R.styleable.Toolbar_buttonGravity, 48);
    int i1 = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
    paramInt = i1;
    if (paramContext.hasValue(R.styleable.Toolbar_titleMargins)) {
      paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, i1);
    }
    t = paramInt;
    s = paramInt;
    r = paramInt;
    q = paramInt;
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0) {
      q = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0) {
      r = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0) {
      s = paramInt;
    }
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0) {
      t = paramInt;
    }
    p = paramContext.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
    paramInt = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
    i1 = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
    int i2 = paramContext.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
    int i3 = paramContext.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
    j();
    u.b(i2, i3);
    if ((paramInt != Integer.MIN_VALUE) || (i1 != Integer.MIN_VALUE)) {
      u.a(paramInt, i1);
    }
    v = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
    w = paramContext.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
    j = paramContext.getDrawable(R.styleable.Toolbar_collapseIcon);
    k = paramContext.getText(R.styleable.Toolbar_collapseContentDescription);
    paramAttributeSet = paramContext.getText(R.styleable.Toolbar_title);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setTitle(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(R.styleable.Toolbar_subtitle);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setSubtitle(paramAttributeSet);
    }
    l = getContext();
    setPopupTheme(paramContext.getResourceId(R.styleable.Toolbar_popupTheme, 0));
    paramAttributeSet = paramContext.getDrawable(R.styleable.Toolbar_navigationIcon);
    if (paramAttributeSet != null) {
      setNavigationIcon(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(R.styleable.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setNavigationContentDescription(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getDrawable(R.styleable.Toolbar_logo);
    if (paramAttributeSet != null) {
      setLogo(paramAttributeSet);
    }
    paramAttributeSet = paramContext.getText(R.styleable.Toolbar_logoDescription);
    if (!TextUtils.isEmpty(paramAttributeSet)) {
      setLogoDescription(paramAttributeSet);
    }
    if (paramContext.hasValue(R.styleable.Toolbar_titleTextColor)) {
      setTitleTextColor(paramContext.getColor(R.styleable.Toolbar_titleTextColor, -1));
    }
    if (paramContext.hasValue(R.styleable.Toolbar_subtitleTextColor)) {
      setSubtitleTextColor(paramContext.getColor(R.styleable.Toolbar_subtitleTextColor, -1));
    }
    paramContext.recycle();
  }
  
  private int a(int paramInt)
  {
    paramInt &= 0x70;
    if ((paramInt != 16) && (paramInt != 48) && (paramInt != 80)) {
      return x & 0x70;
    }
    return paramInt;
  }
  
  private int a(View paramView, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i2 = paramView.getMeasuredHeight();
    if (paramInt > 0) {
      paramInt = (i2 - paramInt) / 2;
    } else {
      paramInt = 0;
    }
    int i1 = a(gravity);
    if (i1 != 48)
    {
      if (i1 != 80)
      {
        int i3 = getPaddingTop();
        paramInt = getPaddingBottom();
        int i4 = getHeight();
        i1 = (i4 - i3 - paramInt - i2) / 2;
        if (i1 < topMargin)
        {
          paramInt = topMargin;
        }
        else
        {
          i2 = i4 - paramInt - i2 - i1 - i3;
          paramInt = i1;
          if (i2 < bottomMargin) {
            paramInt = Math.max(0, i1 - (bottomMargin - i2));
          }
        }
        return i3 + paramInt;
      }
      return getHeight() - getPaddingBottom() - i2 - bottomMargin - paramInt;
    }
    return getPaddingTop() - paramInt;
  }
  
  private int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    int i2 = rightMargin - paramArrayOfInt[1];
    int i3 = Math.max(0, i1) + Math.max(0, i2);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramArrayOfInt[1] = Math.max(0, -i2);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + i3 + paramInt2, width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + paramInt4, height));
    return paramView.getMeasuredWidth() + i3;
  }
  
  private int a(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = leftMargin - paramArrayOfInt[0];
    paramInt1 += Math.max(0, i1);
    paramArrayOfInt[0] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 + (i1 + rightMargin);
  }
  
  private int a(List<View> paramList, int[] paramArrayOfInt)
  {
    int i4 = paramArrayOfInt[0];
    int i3 = paramArrayOfInt[1];
    int i5 = paramList.size();
    int i1 = 0;
    int i2 = 0;
    while (i1 < i5)
    {
      paramArrayOfInt = (View)paramList.get(i1);
      LayoutParams localLayoutParams = (LayoutParams)paramArrayOfInt.getLayoutParams();
      i4 = leftMargin - i4;
      i3 = rightMargin - i3;
      int i6 = Math.max(0, i4);
      int i7 = Math.max(0, i3);
      i4 = Math.max(0, -i4);
      i3 = Math.max(0, -i3);
      i2 += i6 + paramArrayOfInt.getMeasuredWidth() + i7;
      i1 += 1;
    }
    return i2;
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i1 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin + paramInt2, width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin + paramInt4, height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824)
    {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0)
      {
        paramInt1 = paramInt5;
        if (paramInt3 != 0) {
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5);
        }
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      }
    }
    paramView.measure(i1, paramInt1);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    Object localObject = paramView.getLayoutParams();
    if (localObject == null) {
      localObject = generateDefaultLayoutParams();
    } else if (!checkLayoutParams((ViewGroup.LayoutParams)localObject)) {
      localObject = generateLayoutParams((ViewGroup.LayoutParams)localObject);
    } else {
      localObject = (LayoutParams)localObject;
    }
    a = 1;
    if ((paramBoolean) && (c != null))
    {
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      F.add(paramView);
      return;
    }
    addView(paramView, (ViewGroup.LayoutParams)localObject);
  }
  
  private void a(List<View> paramList, int paramInt)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = 0;
    if (i1 == 1) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    int i4 = getChildCount();
    int i3 = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    paramList.clear();
    paramInt = i2;
    View localView;
    LayoutParams localLayoutParams;
    if (i1 != 0)
    {
      paramInt = i4 - 1;
      while (paramInt >= 0)
      {
        localView = getChildAt(paramInt);
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if ((a == 0) && (a(localView)) && (b(gravity) == i3)) {
          paramList.add(localView);
        }
        paramInt -= 1;
      }
    }
    while (paramInt < i4)
    {
      localView = getChildAt(paramInt);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if ((a == 0) && (a(localView)) && (b(gravity) == i3)) {
        paramList.add(localView);
      }
      paramInt += 1;
    }
  }
  
  private boolean a(View paramView)
  {
    return (paramView != null) && (paramView.getParent() == this) && (paramView.getVisibility() != 8);
  }
  
  private int b(int paramInt)
  {
    int i1 = ViewCompat.getLayoutDirection(this);
    int i2 = GravityCompat.getAbsoluteGravity(paramInt, i1) & 0x7;
    if (i2 != 1)
    {
      paramInt = 3;
      if ((i2 != 3) && (i2 != 5))
      {
        if (i1 == 1) {
          paramInt = 5;
        }
        return paramInt;
      }
    }
    return i2;
  }
  
  private int b(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return MarginLayoutParamsCompat.getMarginStart(paramView) + MarginLayoutParamsCompat.getMarginEnd(paramView);
  }
  
  private int b(View paramView, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i1 = rightMargin - paramArrayOfInt[1];
    paramInt1 -= Math.max(0, i1);
    paramArrayOfInt[1] = Math.max(0, -i1);
    paramInt2 = a(paramView, paramInt2);
    i1 = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i1, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - (i1 + leftMargin);
  }
  
  private int c(View paramView)
  {
    paramView = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    return topMargin + bottomMargin;
  }
  
  private void d()
  {
    if (i == null) {
      i = new AppCompatImageView(getContext());
    }
  }
  
  private boolean d(View paramView)
  {
    return (paramView.getParent() == this) || (F.contains(paramView));
  }
  
  private void e()
  {
    f();
    if (a.peekMenu() == null)
    {
      MenuBuilder localMenuBuilder = (MenuBuilder)a.getMenu();
      if (K == null) {
        K = new a();
      }
      a.setExpandedActionViewsExclusive(true);
      localMenuBuilder.addMenuPresenter(K, l);
    }
  }
  
  private void f()
  {
    if (a == null)
    {
      a = new ActionMenuView(getContext());
      a.setPopupTheme(m);
      a.setOnMenuItemClickListener(H);
      a.setMenuCallbacks(L, M);
      LayoutParams localLayoutParams = generateDefaultLayoutParams();
      gravity = (0x800005 | d & 0x70);
      a.setLayoutParams(localLayoutParams);
      a(a, false);
    }
  }
  
  private void g()
  {
    if (h == null)
    {
      h = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
      LayoutParams localLayoutParams = generateDefaultLayoutParams();
      gravity = (0x800003 | d & 0x70);
      h.setLayoutParams(localLayoutParams);
    }
  }
  
  private MenuInflater getMenuInflater()
  {
    return new SupportMenuInflater(getContext());
  }
  
  private void h()
  {
    removeCallbacks(O);
    post(O);
  }
  
  private boolean i()
  {
    if (!N) {
      return false;
    }
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((a(localView)) && (localView.getMeasuredWidth() > 0) && (localView.getMeasuredHeight() > 0)) {
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  private void j()
  {
    if (u == null) {
      u = new z();
    }
  }
  
  void a()
  {
    if (b == null)
    {
      b = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
      b.setImageDrawable(j);
      b.setContentDescription(k);
      LayoutParams localLayoutParams = generateDefaultLayoutParams();
      gravity = (0x800003 | d & 0x70);
      a = 2;
      b.setLayoutParams(localLayoutParams);
      b.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          collapseActionView();
        }
      });
    }
  }
  
  void b()
  {
    int i1 = getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = getChildAt(i1);
      if ((getLayoutParamsa != 2) && (localView != a))
      {
        removeViewAt(i1);
        F.add(localView);
      }
      i1 -= 1;
    }
  }
  
  void c()
  {
    int i1 = F.size() - 1;
    while (i1 >= 0)
    {
      addView((View)F.get(i1));
      i1 -= 1;
    }
    F.clear();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean canShowOverflowMenu()
  {
    return (getVisibility() == 0) && (a != null) && (a.isOverflowReserved());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (super.checkLayoutParams(paramLayoutParams)) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public void collapseActionView()
  {
    MenuItemImpl localMenuItemImpl;
    if (K == null) {
      localMenuItemImpl = null;
    } else {
      localMenuItemImpl = K.b;
    }
    if (localMenuItemImpl != null) {
      localMenuItemImpl.collapseActionView();
    }
  }
  
  public void dismissPopupMenus()
  {
    if (a != null) {
      a.dismissPopupMenus();
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
    if ((paramLayoutParams instanceof ActionBar.LayoutParams)) {
      return new LayoutParams((ActionBar.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getContentInsetEnd()
  {
    if (u != null) {
      return u.d();
    }
    return 0;
  }
  
  public int getContentInsetEndWithActions()
  {
    if (w != Integer.MIN_VALUE) {
      return w;
    }
    return getContentInsetEnd();
  }
  
  public int getContentInsetLeft()
  {
    if (u != null) {
      return u.a();
    }
    return 0;
  }
  
  public int getContentInsetRight()
  {
    if (u != null) {
      return u.b();
    }
    return 0;
  }
  
  public int getContentInsetStart()
  {
    if (u != null) {
      return u.c();
    }
    return 0;
  }
  
  public int getContentInsetStartWithNavigation()
  {
    if (v != Integer.MIN_VALUE) {
      return v;
    }
    return getContentInsetStart();
  }
  
  public int getCurrentContentInsetEnd()
  {
    if (a != null)
    {
      MenuBuilder localMenuBuilder = a.peekMenu();
      if ((localMenuBuilder != null) && (localMenuBuilder.hasVisibleItems()))
      {
        i1 = 1;
        break label33;
      }
    }
    int i1 = 0;
    label33:
    if (i1 != 0) {
      return Math.max(getContentInsetEnd(), Math.max(w, 0));
    }
    return getContentInsetEnd();
  }
  
  public int getCurrentContentInsetLeft()
  {
    if (ViewCompat.getLayoutDirection(this) == 1) {
      return getCurrentContentInsetEnd();
    }
    return getCurrentContentInsetStart();
  }
  
  public int getCurrentContentInsetRight()
  {
    if (ViewCompat.getLayoutDirection(this) == 1) {
      return getCurrentContentInsetStart();
    }
    return getCurrentContentInsetEnd();
  }
  
  public int getCurrentContentInsetStart()
  {
    if (getNavigationIcon() != null) {
      return Math.max(getContentInsetStart(), Math.max(v, 0));
    }
    return getContentInsetStart();
  }
  
  public Drawable getLogo()
  {
    if (i != null) {
      return i.getDrawable();
    }
    return null;
  }
  
  public CharSequence getLogoDescription()
  {
    if (i != null) {
      return i.getContentDescription();
    }
    return null;
  }
  
  public Menu getMenu()
  {
    e();
    return a.getMenu();
  }
  
  @Nullable
  public CharSequence getNavigationContentDescription()
  {
    if (h != null) {
      return h.getContentDescription();
    }
    return null;
  }
  
  @Nullable
  public Drawable getNavigationIcon()
  {
    if (h != null) {
      return h.getDrawable();
    }
    return null;
  }
  
  b getOuterActionMenuPresenter()
  {
    return J;
  }
  
  @Nullable
  public Drawable getOverflowIcon()
  {
    e();
    return a.getOverflowIcon();
  }
  
  Context getPopupContext()
  {
    return l;
  }
  
  public int getPopupTheme()
  {
    return m;
  }
  
  public CharSequence getSubtitle()
  {
    return z;
  }
  
  public CharSequence getTitle()
  {
    return y;
  }
  
  public int getTitleMarginBottom()
  {
    return t;
  }
  
  public int getTitleMarginEnd()
  {
    return r;
  }
  
  public int getTitleMarginStart()
  {
    return q;
  }
  
  public int getTitleMarginTop()
  {
    return s;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public DecorToolbar getWrapper()
  {
    if (I == null) {
      I = new ToolbarWidgetWrapper(this, true);
    }
    return I;
  }
  
  public boolean hasExpandedActionView()
  {
    return (K != null) && (K.b != null);
  }
  
  public boolean hideOverflowMenu()
  {
    return (a != null) && (a.hideOverflowMenu());
  }
  
  public void inflateMenu(@MenuRes int paramInt)
  {
    getMenuInflater().inflate(paramInt, getMenu());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowMenuShowPending()
  {
    return (a != null) && (a.isOverflowMenuShowPending());
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (a != null) && (a.isOverflowMenuShowing());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isTitleTruncated()
  {
    if (f == null) {
      return false;
    }
    Layout localLayout = f.getLayout();
    if (localLayout == null) {
      return false;
    }
    int i2 = localLayout.getLineCount();
    int i1 = 0;
    while (i1 < i2)
    {
      if (localLayout.getEllipsisCount(i1) > 0) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(O);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 == 9) {
      D = false;
    }
    if (!D)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i1 == 9) && (!bool)) {
        D = true;
      }
    }
    if ((i1 == 10) || (i1 == 3)) {
      D = false;
    }
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (ViewCompat.getLayoutDirection(this) == 1) {
      i3 = 1;
    } else {
      i3 = 0;
    }
    int i5 = getWidth();
    int i8 = getHeight();
    int i1 = getPaddingLeft();
    int i6 = getPaddingRight();
    int i7 = getPaddingTop();
    int i9 = getPaddingBottom();
    int i4 = i5 - i6;
    int[] arrayOfInt = G;
    arrayOfInt[1] = 0;
    arrayOfInt[0] = 0;
    paramInt1 = ViewCompat.getMinimumHeight(this);
    if (paramInt1 >= 0) {
      paramInt4 = Math.min(paramInt1, paramInt4 - paramInt2);
    } else {
      paramInt4 = 0;
    }
    if (a(h))
    {
      if (i3 != 0)
      {
        paramInt3 = b(h, i4, arrayOfInt, paramInt4);
        i2 = i1;
        break label167;
      }
      i2 = a(h, i1, arrayOfInt, paramInt4);
    }
    else
    {
      i2 = i1;
    }
    paramInt3 = i4;
    label167:
    paramInt1 = paramInt3;
    paramInt2 = i2;
    if (a(b)) {
      if (i3 != 0)
      {
        paramInt1 = b(b, paramInt3, arrayOfInt, paramInt4);
        paramInt2 = i2;
      }
      else
      {
        paramInt2 = a(b, i2, arrayOfInt, paramInt4);
        paramInt1 = paramInt3;
      }
    }
    paramInt3 = paramInt1;
    int i2 = paramInt2;
    if (a(a)) {
      if (i3 != 0)
      {
        i2 = a(a, paramInt2, arrayOfInt, paramInt4);
        paramInt3 = paramInt1;
      }
      else
      {
        paramInt3 = b(a, paramInt1, arrayOfInt, paramInt4);
        i2 = paramInt2;
      }
    }
    paramInt2 = getCurrentContentInsetLeft();
    paramInt1 = getCurrentContentInsetRight();
    arrayOfInt[0] = Math.max(0, paramInt2 - i2);
    arrayOfInt[1] = Math.max(0, paramInt1 - (i4 - paramInt3));
    paramInt2 = Math.max(i2, paramInt2);
    paramInt3 = Math.min(paramInt3, i4 - paramInt1);
    paramInt1 = paramInt2;
    i2 = paramInt3;
    if (a(c)) {
      if (i3 != 0)
      {
        i2 = b(c, paramInt3, arrayOfInt, paramInt4);
        paramInt1 = paramInt2;
      }
      else
      {
        paramInt1 = a(c, paramInt2, arrayOfInt, paramInt4);
        i2 = paramInt3;
      }
    }
    paramInt3 = paramInt1;
    paramInt2 = i2;
    if (a(i)) {
      if (i3 != 0)
      {
        paramInt2 = b(i, i2, arrayOfInt, paramInt4);
        paramInt3 = paramInt1;
      }
      else
      {
        paramInt3 = a(i, paramInt1, arrayOfInt, paramInt4);
        paramInt2 = i2;
      }
    }
    paramBoolean = a(f);
    boolean bool = a(g);
    Object localObject1;
    if (paramBoolean)
    {
      localObject1 = (LayoutParams)f.getLayoutParams();
      paramInt1 = topMargin + f.getMeasuredHeight() + bottomMargin + 0;
    }
    else
    {
      paramInt1 = 0;
    }
    if (bool)
    {
      localObject1 = (LayoutParams)g.getLayoutParams();
      paramInt1 += topMargin + g.getMeasuredHeight() + bottomMargin;
    }
    if ((!paramBoolean) && (!bool)) {}
    for (paramInt1 = paramInt3;; paramInt1 = paramInt3)
    {
      paramInt3 = paramInt2;
      break label1321;
      if (paramBoolean) {
        localObject1 = f;
      } else {
        localObject1 = g;
      }
      if (bool) {
        localObject2 = g;
      } else {
        localObject2 = f;
      }
      localObject1 = (LayoutParams)((View)localObject1).getLayoutParams();
      Object localObject2 = (LayoutParams)((View)localObject2).getLayoutParams();
      if (((paramBoolean) && (f.getMeasuredWidth() > 0)) || ((bool) && (g.getMeasuredWidth() > 0))) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      i4 = x & 0x70;
      if (i4 != 48)
      {
        if (i4 != 80)
        {
          i4 = (i8 - i7 - i9 - paramInt1) / 2;
          if (i4 < topMargin + s)
          {
            paramInt1 = topMargin + s;
          }
          else
          {
            i8 = i8 - i9 - paramInt1 - i4 - i7;
            paramInt1 = i4;
            if (i8 < bottomMargin + t) {
              paramInt1 = Math.max(0, i4 - (bottomMargin + t - i8));
            }
          }
          paramInt1 = i7 + paramInt1;
        }
        else
        {
          paramInt1 = i8 - i9 - bottomMargin - t - paramInt1;
        }
      }
      else {
        paramInt1 = getPaddingTop() + topMargin + s;
      }
      if (i3 == 0) {
        break;
      }
      if (i2 != 0) {
        i3 = q;
      } else {
        i3 = 0;
      }
      i3 -= arrayOfInt[1];
      paramInt2 -= Math.max(0, i3);
      arrayOfInt[1] = Math.max(0, -i3);
      if (paramBoolean)
      {
        localObject1 = (LayoutParams)f.getLayoutParams();
        i4 = paramInt2 - f.getMeasuredWidth();
        i3 = f.getMeasuredHeight() + paramInt1;
        f.layout(i4, paramInt1, paramInt2, i3);
        paramInt1 = i4 - r;
        i4 = i3 + bottomMargin;
      }
      else
      {
        i3 = paramInt2;
        i4 = paramInt1;
        paramInt1 = i3;
      }
      if (bool)
      {
        localObject1 = (LayoutParams)g.getLayoutParams();
        i3 = i4 + topMargin;
        i4 = g.getMeasuredWidth();
        i7 = g.getMeasuredHeight();
        g.layout(paramInt2 - i4, i3, paramInt2, i7 + i3);
        i3 = paramInt2 - r;
        i4 = bottomMargin;
      }
      else
      {
        i3 = paramInt2;
      }
      if (i2 != 0) {
        paramInt2 = Math.min(paramInt1, i3);
      }
    }
    if (i2 != 0) {
      i3 = q;
    } else {
      i3 = 0;
    }
    i3 -= arrayOfInt[0];
    paramInt3 += Math.max(0, i3);
    arrayOfInt[0] = Math.max(0, -i3);
    if (paramBoolean)
    {
      localObject1 = (LayoutParams)f.getLayoutParams();
      i3 = f.getMeasuredWidth() + paramInt3;
      i4 = f.getMeasuredHeight() + paramInt1;
      f.layout(paramInt3, paramInt1, i3, i4);
      i3 += r;
      paramInt1 = i4 + bottomMargin;
    }
    else
    {
      i3 = paramInt3;
    }
    if (bool)
    {
      localObject1 = (LayoutParams)g.getLayoutParams();
      paramInt1 += topMargin;
      i4 = g.getMeasuredWidth() + paramInt3;
      i7 = g.getMeasuredHeight();
      g.layout(paramInt3, paramInt1, i4, i7 + paramInt1);
      i4 += r;
      paramInt1 = bottomMargin;
    }
    else
    {
      i4 = paramInt3;
    }
    paramInt1 = paramInt3;
    paramInt3 = paramInt2;
    if (i2 != 0)
    {
      paramInt1 = Math.max(i3, i4);
      paramInt3 = paramInt2;
    }
    label1321:
    i2 = i1;
    i1 = 0;
    a(E, 3);
    int i3 = E.size();
    paramInt2 = 0;
    while (paramInt2 < i3)
    {
      paramInt1 = a((View)E.get(paramInt2), paramInt1, arrayOfInt, paramInt4);
      paramInt2 += 1;
    }
    a(E, 5);
    i3 = E.size();
    paramInt2 = 0;
    while (paramInt2 < i3)
    {
      paramInt3 = b((View)E.get(paramInt2), paramInt3, arrayOfInt, paramInt4);
      paramInt2 += 1;
    }
    a(E, 1);
    i3 = a(E, arrayOfInt);
    paramInt2 = i2 + (i5 - i2 - i6) / 2 - i3 / 2;
    i2 = i3 + paramInt2;
    if (paramInt2 >= paramInt1) {
      if (i2 > paramInt3) {
        paramInt1 = paramInt2 - (i2 - paramInt3);
      } else {
        paramInt1 = paramInt2;
      }
    }
    paramInt3 = E.size();
    paramInt2 = i1;
    while (paramInt2 < paramInt3)
    {
      paramInt1 = a((View)E.get(paramInt2), paramInt1, arrayOfInt, paramInt4);
      paramInt2 += 1;
    }
    E.clear();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = G;
    if (ViewUtils.isLayoutRtl(this))
    {
      i6 = 1;
      i5 = 0;
    }
    else
    {
      i6 = 0;
      i5 = 1;
    }
    if (a(h))
    {
      a(h, paramInt1, 0, paramInt2, 0, p);
      i1 = h.getMeasuredWidth() + b(h);
      i4 = Math.max(0, h.getMeasuredHeight() + c(h));
      i3 = View.combineMeasuredStates(0, h.getMeasuredState());
    }
    else
    {
      i1 = 0;
      i4 = 0;
      i3 = 0;
    }
    int i7 = i1;
    int i2 = i4;
    int i1 = i3;
    if (a(b))
    {
      a(b, paramInt1, 0, paramInt2, 0, p);
      i7 = b.getMeasuredWidth() + b(b);
      i2 = Math.max(i4, b.getMeasuredHeight() + c(b));
      i1 = View.combineMeasuredStates(i3, b.getMeasuredState());
    }
    int i3 = getCurrentContentInsetStart();
    int i4 = Math.max(i3, i7) + 0;
    arrayOfInt[i6] = Math.max(0, i3 - i7);
    if (a(a))
    {
      a(a, paramInt1, i4, paramInt2, 0, p);
      i3 = a.getMeasuredWidth() + b(a);
      i2 = Math.max(i2, a.getMeasuredHeight() + c(a));
      i1 = View.combineMeasuredStates(i1, a.getMeasuredState());
    }
    else
    {
      i3 = 0;
    }
    i7 = getCurrentContentInsetEnd();
    int i6 = i4 + Math.max(i7, i3);
    arrayOfInt[i5] = Math.max(0, i7 - i3);
    int i5 = i6;
    i4 = i2;
    i3 = i1;
    if (a(c))
    {
      i5 = i6 + a(c, paramInt1, i6, paramInt2, 0, arrayOfInt);
      i4 = Math.max(i2, c.getMeasuredHeight() + c(c));
      i3 = View.combineMeasuredStates(i1, c.getMeasuredState());
    }
    i2 = i5;
    i6 = i4;
    i1 = i3;
    if (a(i))
    {
      i2 = i5 + a(i, paramInt1, i5, paramInt2, 0, arrayOfInt);
      i6 = Math.max(i4, i.getMeasuredHeight() + c(i));
      i1 = View.combineMeasuredStates(i3, i.getMeasuredState());
    }
    int i8 = getChildCount();
    i5 = i6;
    i3 = 0;
    i4 = i2;
    i2 = i3;
    while (i2 < i8)
    {
      View localView = getChildAt(i2);
      i7 = i4;
      i6 = i1;
      i3 = i5;
      if (getLayoutParamsa == 0) {
        if (!a(localView))
        {
          i7 = i4;
          i6 = i1;
          i3 = i5;
        }
        else
        {
          i7 = i4 + a(localView, paramInt1, i4, paramInt2, 0, arrayOfInt);
          i3 = Math.max(i5, localView.getMeasuredHeight() + c(localView));
          i6 = View.combineMeasuredStates(i1, localView.getMeasuredState());
        }
      }
      i2 += 1;
      i4 = i7;
      i1 = i6;
      i5 = i3;
    }
    i6 = s + t;
    i7 = q + r;
    if (a(f))
    {
      a(f, paramInt1, i4 + i7, paramInt2, i6, arrayOfInt);
      i2 = f.getMeasuredWidth();
      i8 = b(f);
      i3 = f.getMeasuredHeight();
      int i9 = c(f);
      i1 = View.combineMeasuredStates(i1, f.getMeasuredState());
      i3 += i9;
      i2 += i8;
    }
    else
    {
      i2 = 0;
      i3 = 0;
    }
    if (a(g))
    {
      i2 = Math.max(i2, a(g, paramInt1, i4 + i7, paramInt2, i3 + i6, arrayOfInt));
      i3 += g.getMeasuredHeight() + c(g);
      i1 = View.combineMeasuredStates(i1, g.getMeasuredState());
    }
    i3 = Math.max(i5, i3);
    i7 = getPaddingLeft();
    i8 = getPaddingRight();
    i5 = getPaddingTop();
    i6 = getPaddingBottom();
    i2 = View.resolveSizeAndState(Math.max(i4 + i2 + (i7 + i8), getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i1);
    paramInt1 = View.resolveSizeAndState(Math.max(i3 + (i5 + i6), getSuggestedMinimumHeight()), paramInt2, i1 << 16);
    if (i()) {
      paramInt1 = 0;
    }
    setMeasuredDimension(i2, paramInt1);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (a != null) {
      paramParcelable = a.peekMenu();
    } else {
      paramParcelable = null;
    }
    if ((a != 0) && (K != null) && (paramParcelable != null))
    {
      paramParcelable = paramParcelable.findItem(a);
      if (paramParcelable != null) {
        paramParcelable.expandActionView();
      }
    }
    if (b) {
      h();
    }
  }
  
  public void onRtlPropertiesChanged(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 17) {
      super.onRtlPropertiesChanged(paramInt);
    }
    j();
    z localZ = u;
    boolean bool = true;
    if (paramInt != 1) {
      bool = false;
    }
    localZ.a(bool);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if ((K != null) && (K.b != null)) {
      a = K.b.getItemId();
    }
    b = isOverflowMenuShowing();
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionMasked();
    if (i1 == 0) {
      C = false;
    }
    if (!C)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i1 == 0) && (!bool)) {
        C = true;
      }
    }
    if ((i1 == 1) || (i1 == 3)) {
      C = false;
    }
    return true;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setCollapsible(boolean paramBoolean)
  {
    N = paramBoolean;
    requestLayout();
  }
  
  public void setContentInsetEndWithActions(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = Integer.MIN_VALUE;
    }
    if (i1 != w)
    {
      w = i1;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetStartWithNavigation(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = Integer.MIN_VALUE;
    }
    if (i1 != v)
    {
      v = i1;
      if (getNavigationIcon() != null) {
        requestLayout();
      }
    }
  }
  
  public void setContentInsetsAbsolute(int paramInt1, int paramInt2)
  {
    j();
    u.b(paramInt1, paramInt2);
  }
  
  public void setContentInsetsRelative(int paramInt1, int paramInt2)
  {
    j();
    u.a(paramInt1, paramInt2);
  }
  
  public void setLogo(@DrawableRes int paramInt)
  {
    setLogo(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      d();
      if (!d(i)) {
        a(i, true);
      }
    }
    else if ((i != null) && (d(i)))
    {
      removeView(i);
      F.remove(i);
    }
    if (i != null) {
      i.setImageDrawable(paramDrawable);
    }
  }
  
  public void setLogoDescription(@StringRes int paramInt)
  {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      d();
    }
    if (i != null) {
      i.setContentDescription(paramCharSequence);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenu(MenuBuilder paramMenuBuilder, b paramB)
  {
    if ((paramMenuBuilder == null) && (a == null)) {
      return;
    }
    f();
    MenuBuilder localMenuBuilder = a.peekMenu();
    if (localMenuBuilder == paramMenuBuilder) {
      return;
    }
    if (localMenuBuilder != null)
    {
      localMenuBuilder.removeMenuPresenter(J);
      localMenuBuilder.removeMenuPresenter(K);
    }
    if (K == null) {
      K = new a();
    }
    paramB.b(true);
    if (paramMenuBuilder != null)
    {
      paramMenuBuilder.addMenuPresenter(paramB, l);
      paramMenuBuilder.addMenuPresenter(K, l);
    }
    else
    {
      paramB.initForMenu(l, null);
      K.initForMenu(l, null);
      paramB.updateMenuView(true);
      K.updateMenuView(true);
    }
    a.setPopupTheme(m);
    a.setPresenter(paramB);
    J = paramB;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1)
  {
    L = paramCallback;
    M = paramCallback1;
    if (a != null) {
      a.setMenuCallbacks(paramCallback, paramCallback1);
    }
  }
  
  public void setNavigationContentDescription(@StringRes int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setNavigationContentDescription(localCharSequence);
  }
  
  public void setNavigationContentDescription(@Nullable CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      g();
    }
    if (h != null) {
      h.setContentDescription(paramCharSequence);
    }
  }
  
  public void setNavigationIcon(@DrawableRes int paramInt)
  {
    setNavigationIcon(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setNavigationIcon(@Nullable Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      g();
      if (!d(h)) {
        a(h, true);
      }
    }
    else if ((h != null) && (d(h)))
    {
      removeView(h);
      F.remove(h);
    }
    if (h != null) {
      h.setImageDrawable(paramDrawable);
    }
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener)
  {
    g();
    h.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    e = paramOnMenuItemClickListener;
  }
  
  public void setOverflowIcon(@Nullable Drawable paramDrawable)
  {
    e();
    a.setOverflowIcon(paramDrawable);
  }
  
  public void setPopupTheme(@StyleRes int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      if (paramInt == 0)
      {
        l = getContext();
        return;
      }
      l = new ContextThemeWrapper(getContext(), paramInt);
    }
  }
  
  public void setSubtitle(@StringRes int paramInt)
  {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (g == null)
      {
        Context localContext = getContext();
        g = new AppCompatTextView(localContext);
        g.setSingleLine();
        g.setEllipsize(TextUtils.TruncateAt.END);
        if (o != 0) {
          g.setTextAppearance(localContext, o);
        }
        if (B != 0) {
          g.setTextColor(B);
        }
      }
      if (!d(g)) {
        a(g, true);
      }
    }
    else if ((g != null) && (d(g)))
    {
      removeView(g);
      F.remove(g);
    }
    if (g != null) {
      g.setText(paramCharSequence);
    }
    z = paramCharSequence;
  }
  
  public void setSubtitleTextAppearance(Context paramContext, @StyleRes int paramInt)
  {
    o = paramInt;
    if (g != null) {
      g.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setSubtitleTextColor(@ColorInt int paramInt)
  {
    B = paramInt;
    if (g != null) {
      g.setTextColor(paramInt);
    }
  }
  
  public void setTitle(@StringRes int paramInt)
  {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (f == null)
      {
        Context localContext = getContext();
        f = new AppCompatTextView(localContext);
        f.setSingleLine();
        f.setEllipsize(TextUtils.TruncateAt.END);
        if (n != 0) {
          f.setTextAppearance(localContext, n);
        }
        if (A != 0) {
          f.setTextColor(A);
        }
      }
      if (!d(f)) {
        a(f, true);
      }
    }
    else if ((f != null) && (d(f)))
    {
      removeView(f);
      F.remove(f);
    }
    if (f != null) {
      f.setText(paramCharSequence);
    }
    y = paramCharSequence;
  }
  
  public void setTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    q = paramInt1;
    s = paramInt2;
    r = paramInt3;
    t = paramInt4;
    requestLayout();
  }
  
  public void setTitleMarginBottom(int paramInt)
  {
    t = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginEnd(int paramInt)
  {
    r = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginStart(int paramInt)
  {
    q = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginTop(int paramInt)
  {
    s = paramInt;
    requestLayout();
  }
  
  public void setTitleTextAppearance(Context paramContext, @StyleRes int paramInt)
  {
    n = paramInt;
    if (f != null) {
      f.setTextAppearance(paramContext, paramInt);
    }
  }
  
  public void setTitleTextColor(@ColorInt int paramInt)
  {
    A = paramInt;
    if (f != null) {
      f.setTextColor(paramInt);
    }
  }
  
  public boolean showOverflowMenu()
  {
    return (a != null) && (a.showOverflowMenu());
  }
  
  public static class LayoutParams
    extends ActionBar.LayoutParams
  {
    int a = 0;
    
    public LayoutParams(int paramInt)
    {
      this(-2, -1, paramInt);
    }
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      gravity = 8388627;
    }
    
    public LayoutParams(int paramInt1, int paramInt2, int paramInt3)
    {
      super(paramInt2);
      gravity = paramInt3;
    }
    
    public LayoutParams(@NonNull Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ActionBar.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      a = a;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
      a(paramMarginLayoutParams);
    }
    
    void a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      leftMargin = leftMargin;
      topMargin = topMargin;
      rightMargin = rightMargin;
      bottomMargin = bottomMargin;
    }
  }
  
  public static abstract interface OnMenuItemClickListener
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public Toolbar.SavedState a(Parcel paramAnonymousParcel)
      {
        return new Toolbar.SavedState(paramAnonymousParcel, null);
      }
      
      public Toolbar.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new Toolbar.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public Toolbar.SavedState[] a(int paramAnonymousInt)
      {
        return new Toolbar.SavedState[paramAnonymousInt];
      }
    };
    int a;
    boolean b;
    
    public SavedState(Parcel paramParcel)
    {
      this(paramParcel, null);
    }
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readInt() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      b = bool;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.e1expr(TypeTransformer.java:496)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:713)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
    }
  }
  
  private class a
    implements MenuPresenter
  {
    MenuBuilder a;
    MenuItemImpl b;
    
    a() {}
    
    public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
    {
      if ((c instanceof CollapsibleActionView)) {
        ((CollapsibleActionView)c).onActionViewCollapsed();
      }
      removeView(c);
      removeView(b);
      c = null;
      c();
      b = null;
      requestLayout();
      paramMenuItemImpl.setActionViewExpanded(false);
      return true;
    }
    
    public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
    {
      a();
      paramMenuBuilder = b.getParent();
      if (paramMenuBuilder != Toolbar.this)
      {
        if ((paramMenuBuilder instanceof ViewGroup)) {
          ((ViewGroup)paramMenuBuilder).removeView(b);
        }
        addView(b);
      }
      c = paramMenuItemImpl.getActionView();
      b = paramMenuItemImpl;
      paramMenuBuilder = c.getParent();
      if (paramMenuBuilder != Toolbar.this)
      {
        if ((paramMenuBuilder instanceof ViewGroup)) {
          ((ViewGroup)paramMenuBuilder).removeView(c);
        }
        paramMenuBuilder = generateDefaultLayoutParams();
        gravity = (0x800003 | d & 0x70);
        a = 2;
        c.setLayoutParams(paramMenuBuilder);
        addView(c);
      }
      b();
      requestLayout();
      paramMenuItemImpl.setActionViewExpanded(true);
      if ((c instanceof CollapsibleActionView)) {
        ((CollapsibleActionView)c).onActionViewExpanded();
      }
      return true;
    }
    
    public boolean flagActionItems()
    {
      return false;
    }
    
    public int getId()
    {
      return 0;
    }
    
    public MenuView getMenuView(ViewGroup paramViewGroup)
    {
      return null;
    }
    
    public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
    {
      if ((a != null) && (b != null)) {
        a.collapseItemActionView(b);
      }
      a = paramMenuBuilder;
    }
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
    
    public void onRestoreInstanceState(Parcelable paramParcelable) {}
    
    public Parcelable onSaveInstanceState()
    {
      return null;
    }
    
    public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
    {
      return false;
    }
    
    public void setCallback(MenuPresenter.Callback paramCallback) {}
    
    public void updateMenuView(boolean paramBoolean)
    {
      if (b != null)
      {
        MenuBuilder localMenuBuilder = a;
        int k = 0;
        int j = k;
        if (localMenuBuilder != null)
        {
          int m = a.size();
          int i = 0;
          for (;;)
          {
            j = k;
            if (i >= m) {
              break;
            }
            if (a.getItem(i) == b)
            {
              j = 1;
              break;
            }
            i += 1;
          }
        }
        if (j == 0) {
          collapseItemActionView(a, b);
        }
      }
    }
  }
}
