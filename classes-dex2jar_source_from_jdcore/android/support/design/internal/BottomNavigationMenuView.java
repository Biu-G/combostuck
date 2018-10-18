package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.annotation.Dimension;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R.dimen;
import android.support.transition.AutoTransition;
import android.support.transition.TransitionManager;
import android.support.transition.TransitionSet;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v7.appcompat.R.attr;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationMenuView
  extends ViewGroup
  implements MenuView
{
  private static final int[] a = { 16842912 };
  private static final int[] b = { -16842910 };
  private final TransitionSet c;
  private final int d;
  private final int e;
  private final int f;
  private final int g;
  private final int h;
  private final View.OnClickListener i;
  private final Pools.Pool<BottomNavigationItemView> j = new Pools.SynchronizedPool(5);
  private boolean k;
  private int l;
  private BottomNavigationItemView[] m;
  private int n = 0;
  private int o = 0;
  private ColorStateList p;
  @Dimension
  private int q;
  private ColorStateList r;
  private final ColorStateList s;
  @StyleRes
  private int t;
  @StyleRes
  private int u;
  private Drawable v;
  private int w;
  private int[] x;
  private BottomNavigationPresenter y;
  private MenuBuilder z;
  
  public BottomNavigationMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = getResources();
    d = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
    e = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
    f = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
    g = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
    h = paramContext.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
    s = createDefaultColorStateList(16842808);
    c = new AutoTransition();
    c.setOrdering(0);
    c.setDuration(115L);
    c.setInterpolator(new FastOutSlowInInterpolator());
    c.addTransition(new TextScale());
    i = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = ((BottomNavigationItemView)paramAnonymousView).getItemData();
        if (!BottomNavigationMenuView.b(BottomNavigationMenuView.this).performItemAction(paramAnonymousView, BottomNavigationMenuView.a(BottomNavigationMenuView.this), 0)) {
          paramAnonymousView.setChecked(true);
        }
      }
    };
    x = new int[5];
  }
  
  private boolean a(int paramInt1, int paramInt2)
  {
    if (paramInt1 == -1)
    {
      if (paramInt2 <= 3) {}
    }
    else {
      while (paramInt1 == 0) {
        return true;
      }
    }
    return false;
  }
  
  private BottomNavigationItemView getNewItem()
  {
    BottomNavigationItemView localBottomNavigationItemView2 = (BottomNavigationItemView)j.acquire();
    BottomNavigationItemView localBottomNavigationItemView1 = localBottomNavigationItemView2;
    if (localBottomNavigationItemView2 == null) {
      localBottomNavigationItemView1 = new BottomNavigationItemView(getContext());
    }
    return localBottomNavigationItemView1;
  }
  
  void a(int paramInt)
  {
    int i2 = z.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItem localMenuItem = z.getItem(i1);
      if (paramInt == localMenuItem.getItemId())
      {
        n = paramInt;
        o = i1;
        localMenuItem.setChecked(true);
        return;
      }
      i1 += 1;
    }
  }
  
  public void buildMenuView()
  {
    removeAllViews();
    Object localObject1;
    if (m != null)
    {
      localObject1 = m;
      int i2 = localObject1.length;
      i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        if (localObject2 != null) {
          j.release(localObject2);
        }
        i1 += 1;
      }
    }
    if (z.size() == 0)
    {
      n = 0;
      o = 0;
      m = null;
      return;
    }
    m = new BottomNavigationItemView[z.size()];
    boolean bool = a(l, z.getVisibleItems().size());
    int i1 = 0;
    while (i1 < z.size())
    {
      y.setUpdateSuspended(true);
      z.getItem(i1).setCheckable(true);
      y.setUpdateSuspended(false);
      localObject1 = getNewItem();
      m[i1] = localObject1;
      ((BottomNavigationItemView)localObject1).setIconTintList(p);
      ((BottomNavigationItemView)localObject1).setIconSize(q);
      ((BottomNavigationItemView)localObject1).setTextColor(s);
      ((BottomNavigationItemView)localObject1).setTextAppearanceInactive(t);
      ((BottomNavigationItemView)localObject1).setTextAppearanceActive(u);
      ((BottomNavigationItemView)localObject1).setTextColor(r);
      if (v != null) {
        ((BottomNavigationItemView)localObject1).setItemBackground(v);
      } else {
        ((BottomNavigationItemView)localObject1).setItemBackground(w);
      }
      ((BottomNavigationItemView)localObject1).setShifting(bool);
      ((BottomNavigationItemView)localObject1).setLabelVisibilityMode(l);
      ((BottomNavigationItemView)localObject1).initialize((MenuItemImpl)z.getItem(i1), 0);
      ((BottomNavigationItemView)localObject1).setItemPosition(i1);
      ((BottomNavigationItemView)localObject1).setOnClickListener(i);
      addView((View)localObject1);
      i1 += 1;
    }
    o = Math.min(z.size() - 1, o);
    z.getItem(o).setChecked(true);
  }
  
  public ColorStateList createDefaultColorStateList(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {
      return null;
    }
    ColorStateList localColorStateList = AppCompatResources.getColorStateList(getContext(), resourceId);
    if (!getContext().getTheme().resolveAttribute(R.attr.colorPrimary, (TypedValue)localObject, true)) {
      return null;
    }
    paramInt = data;
    int i1 = localColorStateList.getDefaultColor();
    localObject = b;
    int[] arrayOfInt1 = a;
    int[] arrayOfInt2 = EMPTY_STATE_SET;
    int i2 = localColorStateList.getColorForState(b, i1);
    return new ColorStateList(new int[][] { localObject, arrayOfInt1, arrayOfInt2 }, new int[] { i2, paramInt, i1 });
  }
  
  @Nullable
  public ColorStateList getIconTintList()
  {
    return p;
  }
  
  @Nullable
  public Drawable getItemBackground()
  {
    if ((m != null) && (m.length > 0)) {
      return m[0].getBackground();
    }
    return v;
  }
  
  @Deprecated
  public int getItemBackgroundRes()
  {
    return w;
  }
  
  @Dimension
  public int getItemIconSize()
  {
    return q;
  }
  
  @StyleRes
  public int getItemTextAppearanceActive()
  {
    return u;
  }
  
  @StyleRes
  public int getItemTextAppearanceInactive()
  {
    return t;
  }
  
  public ColorStateList getItemTextColor()
  {
    return r;
  }
  
  public int getLabelVisibilityMode()
  {
    return l;
  }
  
  public int getSelectedItemId()
  {
    return n;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public void initialize(MenuBuilder paramMenuBuilder)
  {
    z = paramMenuBuilder;
  }
  
  public boolean isItemHorizontalTranslationEnabled()
  {
    return k;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i2 = paramInt4 - paramInt2;
    paramInt2 = 0;
    paramInt4 = 0;
    while (paramInt2 < i1)
    {
      View localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        if (ViewCompat.getLayoutDirection(this) == 1)
        {
          int i3 = paramInt3 - paramInt1 - paramInt4;
          localView.layout(i3 - localView.getMeasuredWidth(), 0, i3, i2);
        }
        else
        {
          localView.layout(paramInt4, 0, localView.getMeasuredWidth() + paramInt4, i2);
        }
        paramInt4 += localView.getMeasuredWidth();
      }
      paramInt2 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i1 = z.getVisibleItems().size();
    int i4 = getChildCount();
    int i5 = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
    Object localObject;
    int i2;
    if ((a(l, i1)) && (k))
    {
      localObject = getChildAt(o);
      paramInt2 = g;
      paramInt1 = paramInt2;
      if (((View)localObject).getVisibility() != 8)
      {
        ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(f, Integer.MIN_VALUE), i5);
        paramInt1 = Math.max(paramInt2, ((View)localObject).getMeasuredWidth());
      }
      if (((View)localObject).getVisibility() != 8) {
        paramInt2 = 1;
      } else {
        paramInt2 = 0;
      }
      paramInt2 = i1 - paramInt2;
      i2 = Math.min(i3 - e * paramInt2, Math.min(paramInt1, f));
      i1 = i3 - i2;
      if (paramInt2 == 0) {
        paramInt1 = 1;
      } else {
        paramInt1 = paramInt2;
      }
      i3 = Math.min(i1 / paramInt1, d);
      paramInt2 = i1 - paramInt2 * i3;
      paramInt1 = 0;
    }
    while (paramInt1 < i4)
    {
      if (getChildAt(paramInt1).getVisibility() != 8)
      {
        localObject = x;
        if (paramInt1 == o) {
          i1 = i2;
        } else {
          i1 = i3;
        }
        localObject[paramInt1] = i1;
        i1 = paramInt2;
        if (paramInt2 > 0)
        {
          localObject = x;
          localObject[paramInt1] += 1;
          i1 = paramInt2 - 1;
        }
      }
      else
      {
        x[paramInt1] = 0;
        i1 = paramInt2;
      }
      paramInt1 += 1;
      paramInt2 = i1;
      continue;
      if (i1 == 0) {
        paramInt1 = 1;
      } else {
        paramInt1 = i1;
      }
      i2 = Math.min(i3 / paramInt1, f);
      paramInt2 = i3 - i1 * i2;
      paramInt1 = 0;
      while (paramInt1 < i4)
      {
        if (getChildAt(paramInt1).getVisibility() != 8)
        {
          x[paramInt1] = i2;
          i1 = paramInt2;
          if (paramInt2 > 0)
          {
            localObject = x;
            localObject[paramInt1] += 1;
            i1 = paramInt2 - 1;
          }
        }
        else
        {
          x[paramInt1] = 0;
          i1 = paramInt2;
        }
        paramInt1 += 1;
        paramInt2 = i1;
      }
    }
    paramInt1 = 0;
    paramInt2 = 0;
    while (paramInt1 < i4)
    {
      localObject = getChildAt(paramInt1);
      if (((View)localObject).getVisibility() != 8)
      {
        ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(x[paramInt1], 1073741824), i5);
        getLayoutParamswidth = ((View)localObject).getMeasuredWidth();
        paramInt2 += ((View)localObject).getMeasuredWidth();
      }
      paramInt1 += 1;
    }
    setMeasuredDimension(View.resolveSizeAndState(paramInt2, View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824), 0), View.resolveSizeAndState(h, i5, 0));
  }
  
  public void setIconTintList(ColorStateList paramColorStateList)
  {
    p = paramColorStateList;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfBottomNavigationItemView[i1].setIconTintList(paramColorStateList);
        i1 += 1;
      }
    }
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable)
  {
    v = paramDrawable;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfBottomNavigationItemView[i1].setItemBackground(paramDrawable);
        i1 += 1;
      }
    }
  }
  
  public void setItemBackgroundRes(int paramInt)
  {
    w = paramInt;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfBottomNavigationItemView[i1].setItemBackground(paramInt);
        i1 += 1;
      }
    }
  }
  
  public void setItemHorizontalTranslationEnabled(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void setItemIconSize(@Dimension int paramInt)
  {
    q = paramInt;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfBottomNavigationItemView[i1].setIconSize(paramInt);
        i1 += 1;
      }
    }
  }
  
  public void setItemTextAppearanceActive(@StyleRes int paramInt)
  {
    u = paramInt;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[i1];
        localBottomNavigationItemView.setTextAppearanceActive(paramInt);
        if (r != null) {
          localBottomNavigationItemView.setTextColor(r);
        }
        i1 += 1;
      }
    }
  }
  
  public void setItemTextAppearanceInactive(@StyleRes int paramInt)
  {
    t = paramInt;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        BottomNavigationItemView localBottomNavigationItemView = arrayOfBottomNavigationItemView[i1];
        localBottomNavigationItemView.setTextAppearanceInactive(paramInt);
        if (r != null) {
          localBottomNavigationItemView.setTextColor(r);
        }
        i1 += 1;
      }
    }
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    r = paramColorStateList;
    if (m != null)
    {
      BottomNavigationItemView[] arrayOfBottomNavigationItemView = m;
      int i2 = arrayOfBottomNavigationItemView.length;
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfBottomNavigationItemView[i1].setTextColor(paramColorStateList);
        i1 += 1;
      }
    }
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    l = paramInt;
  }
  
  public void setPresenter(BottomNavigationPresenter paramBottomNavigationPresenter)
  {
    y = paramBottomNavigationPresenter;
  }
  
  public void updateMenuView()
  {
    if (z != null)
    {
      if (m == null) {
        return;
      }
      int i2 = z.size();
      if (i2 != m.length)
      {
        buildMenuView();
        return;
      }
      int i3 = n;
      int i1 = 0;
      while (i1 < i2)
      {
        MenuItem localMenuItem = z.getItem(i1);
        if (localMenuItem.isChecked())
        {
          n = localMenuItem.getItemId();
          o = i1;
        }
        i1 += 1;
      }
      if (i3 != n) {
        TransitionManager.beginDelayedTransition(this, c);
      }
      boolean bool = a(l, z.getVisibleItems().size());
      i1 = 0;
      while (i1 < i2)
      {
        y.setUpdateSuspended(true);
        m[i1].setLabelVisibilityMode(l);
        m[i1].setShifting(bool);
        m[i1].initialize((MenuItemImpl)z.getItem(i1), 0);
        y.setUpdateSuspended(false);
        i1 += 1;
      }
      return;
    }
  }
}
