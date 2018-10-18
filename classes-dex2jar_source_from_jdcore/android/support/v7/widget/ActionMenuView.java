package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuBuilder.ItemInvoker;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends LinearLayoutCompat
  implements MenuBuilder.ItemInvoker, MenuView
{
  MenuBuilder.Callback a;
  OnMenuItemClickListener b;
  private MenuBuilder c;
  private Context d;
  private int e;
  private boolean f;
  private b g;
  private MenuPresenter.Callback h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f1 = getResourcesgetDisplayMetricsdensity;
    k = ((int)(56.0F * f1));
    l = ((int)(f1 * 4.0F));
    d = paramContext;
    e = 0;
  }
  
  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int n = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView)) {
      localActionMenuItemView = (ActionMenuItemView)paramView;
    } else {
      localActionMenuItemView = null;
    }
    boolean bool = true;
    if ((localActionMenuItemView != null) && (localActionMenuItemView.hasText())) {
      paramInt3 = 1;
    } else {
      paramInt3 = 0;
    }
    paramInt4 = 2;
    if ((paramInt2 > 0) && ((paramInt3 == 0) || (paramInt2 >= 2)))
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt2 * paramInt1, Integer.MIN_VALUE), n);
      int i1 = paramView.getMeasuredWidth();
      int m = i1 / paramInt1;
      paramInt2 = m;
      if (i1 % paramInt1 != 0) {
        paramInt2 = m + 1;
      }
      if ((paramInt3 != 0) && (paramInt2 < 2)) {
        paramInt2 = paramInt4;
      }
    }
    else
    {
      paramInt2 = 0;
    }
    if ((isOverflowButton) || (paramInt3 == 0)) {
      bool = false;
    }
    expandable = bool;
    cellsUsed = paramInt2;
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, 1073741824), n);
    return paramInt2;
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i14 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt2);
    int m = getPaddingLeft();
    int n = getPaddingRight();
    int i8 = getPaddingTop() + getPaddingBottom();
    int i4 = getChildMeasureSpec(paramInt2, i8, -2);
    int i5 = paramInt1 - (m + n);
    paramInt1 = i5 / k;
    paramInt2 = k;
    if (paramInt1 == 0)
    {
      setMeasuredDimension(i5, 0);
      return;
    }
    int i15 = k + i5 % paramInt2 / paramInt1;
    int i10 = getChildCount();
    int i3 = 0;
    int i2 = 0;
    m = 0;
    int i7 = 0;
    int i6 = 0;
    n = 0;
    long l1 = 0L;
    paramInt2 = i1;
    Object localObject;
    LayoutParams localLayoutParams;
    while (i3 < i10)
    {
      localObject = getChildAt(i3);
      if (((View)localObject).getVisibility() != 8)
      {
        boolean bool = localObject instanceof ActionMenuItemView;
        i7 += 1;
        if (bool) {
          ((View)localObject).setPadding(l, 0, l, 0);
        }
        localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
        a = false;
        extraPixels = 0;
        cellsUsed = 0;
        expandable = false;
        leftMargin = 0;
        rightMargin = 0;
        if ((bool) && (((ActionMenuItemView)localObject).hasText())) {
          bool = true;
        } else {
          bool = false;
        }
        preventEdgeOffset = bool;
        if (isOverflowButton) {
          i1 = 1;
        } else {
          i1 = paramInt1;
        }
        i9 = a((View)localObject, i15, i1, i4, i8);
        i6 = Math.max(i6, i9);
        i1 = n;
        if (expandable) {
          i1 = n + 1;
        }
        if (isOverflowButton) {
          m = 1;
        }
        paramInt1 -= i9;
        i2 = Math.max(i2, ((View)localObject).getMeasuredHeight());
        if (i9 == 1) {
          l1 |= 1 << i3;
        }
        n = i1;
      }
      i3 += 1;
    }
    if ((m != 0) && (i7 == 2)) {
      i8 = 1;
    } else {
      i8 = 0;
    }
    int i11 = 0;
    int i9 = paramInt1;
    i1 = i10;
    i3 = i4;
    paramInt1 = i11;
    long l3;
    long l2;
    if ((n > 0) && (i9 > 0))
    {
      i11 = 0;
      int i12 = 0;
      i10 = Integer.MAX_VALUE;
      for (l3 = 0L; i11 < i1; l3 = l2)
      {
        localObject = (LayoutParams)getChildAt(i11).getLayoutParams();
        int i13;
        if (!expandable)
        {
          i4 = i12;
          i13 = i10;
          l2 = l3;
        }
        else if (cellsUsed < i10)
        {
          i13 = cellsUsed;
          l2 = 1L << i11;
          i4 = 1;
        }
        else
        {
          i4 = i12;
          i13 = i10;
          l2 = l3;
          if (cellsUsed == i10)
          {
            l2 = l3 | 1L << i11;
            i4 = i12 + 1;
            i13 = i10;
          }
        }
        i11 += 1;
        i12 = i4;
        i10 = i13;
      }
      l1 |= l3;
      if (i12 > i9) {}
    }
    else
    {
      for (;;)
      {
        paramInt1 = 0;
        while (paramInt1 < i1)
        {
          localObject = getChildAt(paramInt1);
          localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
          long l4 = 1 << paramInt1;
          if ((l3 & l4) == 0L)
          {
            i4 = i9;
            l2 = l1;
            if (cellsUsed == i10 + 1)
            {
              l2 = l1 | l4;
              i4 = i9;
            }
          }
          else
          {
            if ((i8 != 0) && (preventEdgeOffset) && (i9 == 1)) {
              ((View)localObject).setPadding(l + i15, 0, l, 0);
            }
            cellsUsed += 1;
            a = true;
            i4 = i9 - 1;
            l2 = l1;
          }
          paramInt1 += 1;
          i9 = i4;
          l1 = l2;
        }
        paramInt1 = 1;
        break;
      }
    }
    if ((m == 0) && (i7 == 1)) {
      m = 1;
    } else {
      m = 0;
    }
    if ((i9 > 0) && (l1 != 0L) && ((i9 < i7 - 1) || (m != 0) || (i6 > 1)))
    {
      float f2 = Long.bitCount(l1);
      if (m == 0)
      {
        float f1;
        if ((l1 & 1L) != 0L)
        {
          f1 = f2;
          if (!getChildAt0getLayoutParamspreventEdgeOffset) {
            f1 = f2 - 0.5F;
          }
        }
        else
        {
          f1 = f2;
        }
        m = i1 - 1;
        f2 = f1;
        if ((l1 & 1 << m) != 0L)
        {
          f2 = f1;
          if (!getChildAtgetLayoutParamspreventEdgeOffset) {
            f2 = f1 - 0.5F;
          }
        }
      }
      if (f2 > 0.0F) {
        m = (int)(i9 * i15 / f2);
      } else {
        m = 0;
      }
      i6 = i1;
      n = 0;
      while (n < i6)
      {
        if ((l1 & 1 << n) == 0L)
        {
          i4 = paramInt1;
        }
        else
        {
          localObject = getChildAt(n);
          localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
          if ((localObject instanceof ActionMenuItemView))
          {
            extraPixels = m;
            a = true;
            if ((n == 0) && (!preventEdgeOffset)) {
              leftMargin = (-m / 2);
            }
          }
          for (;;)
          {
            i4 = 1;
            break label1125;
            if (!isOverflowButton) {
              break;
            }
            extraPixels = m;
            a = true;
            rightMargin = (-m / 2);
          }
          if (n != 0) {
            leftMargin = (m / 2);
          }
          i4 = paramInt1;
          if (n != i6 - 1)
          {
            rightMargin = (m / 2);
            i4 = paramInt1;
          }
        }
        label1125:
        n += 1;
        paramInt1 = i4;
      }
    }
    m = 0;
    if (paramInt1 != 0)
    {
      paramInt1 = m;
      while (paramInt1 < i1)
      {
        localObject = getChildAt(paramInt1);
        localLayoutParams = (LayoutParams)((View)localObject).getLayoutParams();
        if (a) {
          ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(cellsUsed * i15 + extraPixels, 1073741824), i3);
        }
        paramInt1 += 1;
      }
    }
    if (i14 != 1073741824) {
      paramInt2 = i2;
    }
    setMeasuredDimension(i5, paramInt2);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof LayoutParams));
  }
  
  public void dismissPopupMenus()
  {
    if (g != null) {
      g.d();
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  protected LayoutParams generateDefaultLayoutParams()
  {
    LayoutParams localLayoutParams = new LayoutParams(-2, -2);
    gravity = 16;
    return localLayoutParams;
  }
  
  public LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof LayoutParams)) {
        paramLayoutParams = new LayoutParams((LayoutParams)paramLayoutParams);
      } else {
        paramLayoutParams = new LayoutParams(paramLayoutParams);
      }
      if (gravity <= 0) {
        gravity = 16;
      }
      return paramLayoutParams;
    }
    return generateDefaultLayoutParams();
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public LayoutParams generateOverflowButtonLayoutParams()
  {
    LayoutParams localLayoutParams = generateDefaultLayoutParams();
    isOverflowButton = true;
    return localLayoutParams;
  }
  
  public Menu getMenu()
  {
    if (c == null)
    {
      Object localObject = getContext();
      c = new MenuBuilder((Context)localObject);
      c.setCallback(new b());
      g = new b((Context)localObject);
      g.a(true);
      b localB = g;
      if (h != null) {
        localObject = h;
      } else {
        localObject = new a();
      }
      localB.setCallback((MenuPresenter.Callback)localObject);
      c.addMenuPresenter(g, d);
      g.a(this);
    }
    return c;
  }
  
  @Nullable
  public Drawable getOverflowIcon()
  {
    getMenu();
    return g.a();
  }
  
  public int getPopupTheme()
  {
    return e;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public int getWindowAnimations()
  {
    return 0;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected boolean hasSupportDividerBeforeChildAt(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof ActionMenuChildView)) {
        bool1 = false | ((ActionMenuChildView)localView1).needsDividerAfter();
      }
    }
    bool2 = bool1;
    if (paramInt > 0)
    {
      bool2 = bool1;
      if ((localView2 instanceof ActionMenuChildView)) {
        bool2 = bool1 | ((ActionMenuChildView)localView2).needsDividerBefore();
      }
    }
    return bool2;
  }
  
  public boolean hideOverflowMenu()
  {
    return (g != null) && (g.c());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void initialize(MenuBuilder paramMenuBuilder)
  {
    c = paramMenuBuilder;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean invokeItem(MenuItemImpl paramMenuItemImpl)
  {
    return c.performItemAction(paramMenuItemImpl, 0);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowMenuShowPending()
  {
    return (g != null) && (g.g());
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (g != null) && (g.f());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowReserved()
  {
    return f;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (g != null)
    {
      g.updateMenuView(false);
      if (g.f())
      {
        g.c();
        g.b();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    dismissPopupMenus();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!i)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i2 = getChildCount();
    int i1 = (paramInt4 - paramInt2) / 2;
    int i3 = getDividerWidth();
    int i4 = paramInt3 - paramInt1;
    paramInt1 = getPaddingRight();
    paramInt2 = getPaddingLeft();
    paramBoolean = ViewUtils.isLayoutRtl(this);
    paramInt1 = i4 - paramInt1 - paramInt2;
    paramInt2 = 0;
    paramInt4 = 0;
    paramInt3 = 0;
    View localView;
    LayoutParams localLayoutParams;
    int n;
    while (paramInt2 < i2)
    {
      localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (isOverflowButton)
        {
          m = localView.getMeasuredWidth();
          paramInt4 = m;
          if (hasSupportDividerBeforeChildAt(paramInt2)) {
            paramInt4 = m + i3;
          }
          int i5 = localView.getMeasuredHeight();
          if (paramBoolean)
          {
            n = getPaddingLeft() + leftMargin;
            m = n + paramInt4;
          }
          else
          {
            m = getWidth() - getPaddingRight() - rightMargin;
            n = m - paramInt4;
          }
          int i6 = i1 - i5 / 2;
          localView.layout(n, i6, m, i5 + i6);
          paramInt1 -= paramInt4;
          paramInt4 = 1;
        }
        else
        {
          paramInt1 -= localView.getMeasuredWidth() + leftMargin + rightMargin;
          hasSupportDividerBeforeChildAt(paramInt2);
          paramInt3 += 1;
        }
      }
      paramInt2 += 1;
    }
    if ((i2 == 1) && (paramInt4 == 0))
    {
      localView = getChildAt(0);
      paramInt1 = localView.getMeasuredWidth();
      paramInt2 = localView.getMeasuredHeight();
      paramInt3 = i4 / 2 - paramInt1 / 2;
      paramInt4 = i1 - paramInt2 / 2;
      localView.layout(paramInt3, paramInt4, paramInt1 + paramInt3, paramInt2 + paramInt4);
      return;
    }
    paramInt2 = paramInt3 - (paramInt4 ^ 0x1);
    if (paramInt2 > 0) {
      paramInt1 /= paramInt2;
    } else {
      paramInt1 = 0;
    }
    paramInt4 = 0;
    paramInt3 = 0;
    int m = Math.max(0, paramInt1);
    if (paramBoolean)
    {
      paramInt2 = getWidth() - getPaddingRight();
      paramInt1 = paramInt3;
      while (paramInt1 < i2)
      {
        localView = getChildAt(paramInt1);
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        paramInt3 = paramInt2;
        if (localView.getVisibility() != 8) {
          if (isOverflowButton)
          {
            paramInt3 = paramInt2;
          }
          else
          {
            paramInt2 -= rightMargin;
            paramInt3 = localView.getMeasuredWidth();
            paramInt4 = localView.getMeasuredHeight();
            n = i1 - paramInt4 / 2;
            localView.layout(paramInt2 - paramInt3, n, paramInt2, paramInt4 + n);
            paramInt3 = paramInt2 - (paramInt3 + leftMargin + m);
          }
        }
        paramInt1 += 1;
        paramInt2 = paramInt3;
      }
    }
    paramInt2 = getPaddingLeft();
    paramInt1 = paramInt4;
    while (paramInt1 < i2)
    {
      localView = getChildAt(paramInt1);
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      paramInt3 = paramInt2;
      if (localView.getVisibility() != 8) {
        if (isOverflowButton)
        {
          paramInt3 = paramInt2;
        }
        else
        {
          paramInt2 += leftMargin;
          paramInt3 = localView.getMeasuredWidth();
          paramInt4 = localView.getMeasuredHeight();
          n = i1 - paramInt4 / 2;
          localView.layout(paramInt2, n, paramInt2 + paramInt3, paramInt4 + n);
          paramInt3 = paramInt2 + (paramInt3 + rightMargin + m);
        }
      }
      paramInt1 += 1;
      paramInt2 = paramInt3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = i;
    boolean bool1;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    i = bool1;
    if (bool2 != i) {
      j = 0;
    }
    int m = View.MeasureSpec.getSize(paramInt1);
    if ((i) && (c != null) && (m != j))
    {
      j = m;
      c.onItemsChanged(true);
    }
    int n = getChildCount();
    if ((i) && (n > 0))
    {
      c(paramInt1, paramInt2);
      return;
    }
    m = 0;
    while (m < n)
    {
      LayoutParams localLayoutParams = (LayoutParams)getChildAt(m).getLayoutParams();
      rightMargin = 0;
      leftMargin = 0;
      m += 1;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public MenuBuilder peekMenu()
  {
    return c;
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    g.b(paramBoolean);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1)
  {
    h = paramCallback;
    a = paramCallback1;
  }
  
  public void setOnMenuItemClickListener(OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    b = paramOnMenuItemClickListener;
  }
  
  public void setOverflowIcon(@Nullable Drawable paramDrawable)
  {
    getMenu();
    g.a(paramDrawable);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setOverflowReserved(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setPopupTheme(@StyleRes int paramInt)
  {
    if (e != paramInt)
    {
      e = paramInt;
      if (paramInt == 0)
      {
        d = getContext();
        return;
      }
      d = new ContextThemeWrapper(getContext(), paramInt);
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public void setPresenter(b paramB)
  {
    g = paramB;
    g.a(this);
  }
  
  public boolean showOverflowMenu()
  {
    return (g != null) && (g.b());
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static abstract interface ActionMenuChildView
  {
    public abstract boolean needsDividerAfter();
    
    public abstract boolean needsDividerBefore();
  }
  
  public static class LayoutParams
    extends LinearLayoutCompat.LayoutParams
  {
    boolean a;
    @ViewDebug.ExportedProperty
    public int cellsUsed;
    @ViewDebug.ExportedProperty
    public boolean expandable;
    @ViewDebug.ExportedProperty
    public int extraPixels;
    @ViewDebug.ExportedProperty
    public boolean isOverflowButton;
    @ViewDebug.ExportedProperty
    public boolean preventEdgeOffset;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
      isOverflowButton = false;
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      isOverflowButton = isOverflowButton;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface OnMenuItemClickListener
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
  
  private static class a
    implements MenuPresenter.Callback
  {
    a() {}
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
    
    public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
    {
      return false;
    }
  }
  
  private class b
    implements MenuBuilder.Callback
  {
    b() {}
    
    public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
    {
      return (b != null) && (b.onMenuItemClick(paramMenuItem));
    }
    
    public void onMenuModeChange(MenuBuilder paramMenuBuilder)
    {
      if (a != null) {
        a.onMenuModeChange(paramMenuBuilder);
      }
    }
  }
}
