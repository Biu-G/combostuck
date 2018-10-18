package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.drawable;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.string;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.menu.ActionMenuItem;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ToolbarWidgetWrapper
  implements DecorToolbar
{
  Toolbar a;
  CharSequence b;
  Window.Callback c;
  boolean d;
  private int e;
  private View f;
  private Spinner g;
  private View h;
  private Drawable i;
  private Drawable j;
  private Drawable k;
  private boolean l;
  private CharSequence m;
  private CharSequence n;
  private b o;
  private int p = 0;
  private int q = 0;
  private Drawable r;
  
  public ToolbarWidgetWrapper(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
  }
  
  public ToolbarWidgetWrapper(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramToolbar;
    b = paramToolbar.getTitle();
    m = paramToolbar.getSubtitle();
    boolean bool;
    if (b != null) {
      bool = true;
    } else {
      bool = false;
    }
    l = bool;
    k = paramToolbar.getNavigationIcon();
    paramToolbar = TintTypedArray.obtainStyledAttributes(paramToolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
    r = paramToolbar.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
    if (paramBoolean)
    {
      Object localObject = paramToolbar.getText(R.styleable.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        setTitle((CharSequence)localObject);
      }
      localObject = paramToolbar.getText(R.styleable.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        setSubtitle((CharSequence)localObject);
      }
      localObject = paramToolbar.getDrawable(R.styleable.ActionBar_logo);
      if (localObject != null) {
        setLogo((Drawable)localObject);
      }
      localObject = paramToolbar.getDrawable(R.styleable.ActionBar_icon);
      if (localObject != null) {
        setIcon((Drawable)localObject);
      }
      if ((k == null) && (r != null)) {
        setNavigationIcon(r);
      }
      setDisplayOptions(paramToolbar.getInt(R.styleable.ActionBar_displayOptions, 0));
      paramInt2 = paramToolbar.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
      if (paramInt2 != 0)
      {
        setCustomView(LayoutInflater.from(a.getContext()).inflate(paramInt2, a, false));
        setDisplayOptions(e | 0x10);
      }
      paramInt2 = paramToolbar.getLayoutDimension(R.styleable.ActionBar_height, 0);
      if (paramInt2 > 0)
      {
        localObject = a.getLayoutParams();
        height = paramInt2;
        a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      paramInt2 = paramToolbar.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
      int i1 = paramToolbar.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
      if ((paramInt2 >= 0) || (i1 >= 0)) {
        a.setContentInsetsRelative(Math.max(paramInt2, 0), Math.max(i1, 0));
      }
      paramInt2 = paramToolbar.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
      if (paramInt2 != 0) {
        a.setTitleTextAppearance(a.getContext(), paramInt2);
      }
      paramInt2 = paramToolbar.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
      if (paramInt2 != 0) {
        a.setSubtitleTextAppearance(a.getContext(), paramInt2);
      }
      paramInt2 = paramToolbar.getResourceId(R.styleable.ActionBar_popupTheme, 0);
      if (paramInt2 != 0) {
        a.setPopupTheme(paramInt2);
      }
    }
    else
    {
      e = a();
    }
    paramToolbar.recycle();
    setDefaultNavigationContentDescription(paramInt1);
    n = a.getNavigationContentDescription();
    a.setNavigationOnClickListener(new View.OnClickListener()
    {
      final ActionMenuItem a = new ActionMenuItem(a.getContext(), 0, 16908332, 0, 0, b);
      
      public void onClick(View paramAnonymousView)
      {
        if ((c != null) && (d)) {
          c.onMenuItemSelected(0, a);
        }
      }
    });
  }
  
  private int a()
  {
    if (a.getNavigationIcon() != null)
    {
      r = a.getNavigationIcon();
      return 15;
    }
    return 11;
  }
  
  private void a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    if ((e & 0x8) != 0) {
      a.setTitle(paramCharSequence);
    }
  }
  
  private void b()
  {
    Drawable localDrawable;
    if ((e & 0x2) != 0)
    {
      if ((e & 0x1) != 0)
      {
        if (j != null) {
          localDrawable = j;
        } else {
          localDrawable = i;
        }
      }
      else {
        localDrawable = i;
      }
    }
    else {
      localDrawable = null;
    }
    a.setLogo(localDrawable);
  }
  
  private void c()
  {
    if (g == null)
    {
      g = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
      Toolbar.LayoutParams localLayoutParams = new Toolbar.LayoutParams(-2, -2, 8388627);
      g.setLayoutParams(localLayoutParams);
    }
  }
  
  private void d()
  {
    if ((e & 0x4) != 0)
    {
      Toolbar localToolbar = a;
      Drawable localDrawable;
      if (k != null) {
        localDrawable = k;
      } else {
        localDrawable = r;
      }
      localToolbar.setNavigationIcon(localDrawable);
      return;
    }
    a.setNavigationIcon(null);
  }
  
  private void e()
  {
    if ((e & 0x4) != 0)
    {
      if (TextUtils.isEmpty(n))
      {
        a.setNavigationContentDescription(q);
        return;
      }
      a.setNavigationContentDescription(n);
    }
  }
  
  public void animateToVisibility(int paramInt)
  {
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = setupAnimatorToVisibility(paramInt, 200L);
    if (localViewPropertyAnimatorCompat != null) {
      localViewPropertyAnimatorCompat.start();
    }
  }
  
  public boolean canShowOverflowMenu()
  {
    return a.canShowOverflowMenu();
  }
  
  public void collapseActionView()
  {
    a.collapseActionView();
  }
  
  public void dismissPopupMenus()
  {
    a.dismissPopupMenus();
  }
  
  public Context getContext()
  {
    return a.getContext();
  }
  
  public View getCustomView()
  {
    return h;
  }
  
  public int getDisplayOptions()
  {
    return e;
  }
  
  public int getDropdownItemCount()
  {
    if (g != null) {
      return g.getCount();
    }
    return 0;
  }
  
  public int getDropdownSelectedPosition()
  {
    if (g != null) {
      return g.getSelectedItemPosition();
    }
    return 0;
  }
  
  public int getHeight()
  {
    return a.getHeight();
  }
  
  public Menu getMenu()
  {
    return a.getMenu();
  }
  
  public int getNavigationMode()
  {
    return p;
  }
  
  public CharSequence getSubtitle()
  {
    return a.getSubtitle();
  }
  
  public CharSequence getTitle()
  {
    return a.getTitle();
  }
  
  public ViewGroup getViewGroup()
  {
    return a;
  }
  
  public int getVisibility()
  {
    return a.getVisibility();
  }
  
  public boolean hasEmbeddedTabs()
  {
    return f != null;
  }
  
  public boolean hasExpandedActionView()
  {
    return a.hasExpandedActionView();
  }
  
  public boolean hasIcon()
  {
    return i != null;
  }
  
  public boolean hasLogo()
  {
    return j != null;
  }
  
  public boolean hideOverflowMenu()
  {
    return a.hideOverflowMenu();
  }
  
  public void initIndeterminateProgress()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void initProgress()
  {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public boolean isOverflowMenuShowPending()
  {
    return a.isOverflowMenuShowPending();
  }
  
  public boolean isOverflowMenuShowing()
  {
    return a.isOverflowMenuShowing();
  }
  
  public boolean isTitleTruncated()
  {
    return a.isTitleTruncated();
  }
  
  public void restoreHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    a.restoreHierarchyState(paramSparseArray);
  }
  
  public void saveHierarchyState(SparseArray<Parcelable> paramSparseArray)
  {
    a.saveHierarchyState(paramSparseArray);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    ViewCompat.setBackground(a, paramDrawable);
  }
  
  public void setCollapsible(boolean paramBoolean)
  {
    a.setCollapsible(paramBoolean);
  }
  
  public void setCustomView(View paramView)
  {
    if ((h != null) && ((e & 0x10) != 0)) {
      a.removeView(h);
    }
    h = paramView;
    if ((paramView != null) && ((e & 0x10) != 0)) {
      a.addView(h);
    }
  }
  
  public void setDefaultNavigationContentDescription(int paramInt)
  {
    if (paramInt == q) {
      return;
    }
    q = paramInt;
    if (TextUtils.isEmpty(a.getNavigationContentDescription())) {
      setNavigationContentDescription(q);
    }
  }
  
  public void setDefaultNavigationIcon(Drawable paramDrawable)
  {
    if (r != paramDrawable)
    {
      r = paramDrawable;
      d();
    }
  }
  
  public void setDisplayOptions(int paramInt)
  {
    int i1 = e ^ paramInt;
    e = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) != 0) {
          e();
        }
        d();
      }
      if ((i1 & 0x3) != 0) {
        b();
      }
      if ((i1 & 0x8) != 0) {
        if ((paramInt & 0x8) != 0)
        {
          a.setTitle(b);
          a.setSubtitle(m);
        }
        else
        {
          a.setTitle(null);
          a.setSubtitle(null);
        }
      }
      if (((i1 & 0x10) != 0) && (h != null))
      {
        if ((paramInt & 0x10) != 0)
        {
          a.addView(h);
          return;
        }
        a.removeView(h);
      }
    }
  }
  
  public void setDropdownParams(SpinnerAdapter paramSpinnerAdapter, AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    c();
    g.setAdapter(paramSpinnerAdapter);
    g.setOnItemSelectedListener(paramOnItemSelectedListener);
  }
  
  public void setDropdownSelectedPosition(int paramInt)
  {
    if (g != null)
    {
      g.setSelection(paramInt);
      return;
    }
    throw new IllegalStateException("Can't set dropdown selected position without an adapter");
  }
  
  public void setEmbeddedTabView(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if ((f != null) && (f.getParent() == a)) {
      a.removeView(f);
    }
    f = paramScrollingTabContainerView;
    if ((paramScrollingTabContainerView != null) && (p == 2))
    {
      a.addView(f, 0);
      Toolbar.LayoutParams localLayoutParams = (Toolbar.LayoutParams)f.getLayoutParams();
      width = -2;
      height = -2;
      gravity = 8388691;
      paramScrollingTabContainerView.setAllowCollapse(true);
    }
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean) {}
  
  public void setIcon(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setIcon(localDrawable);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    i = paramDrawable;
    b();
  }
  
  public void setLogo(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setLogo(localDrawable);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    j = paramDrawable;
    b();
  }
  
  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback)
  {
    if (o == null)
    {
      o = new b(a.getContext());
      o.setId(R.id.action_menu_presenter);
    }
    o.setCallback(paramCallback);
    a.setMenu((MenuBuilder)paramMenu, o);
  }
  
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1)
  {
    a.setMenuCallbacks(paramCallback, paramCallback1);
  }
  
  public void setMenuPrepared()
  {
    d = true;
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    String str;
    if (paramInt == 0) {
      str = null;
    } else {
      str = getContext().getString(paramInt);
    }
    setNavigationContentDescription(str);
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    n = paramCharSequence;
    e();
  }
  
  public void setNavigationIcon(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setNavigationIcon(localDrawable);
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    k = paramDrawable;
    d();
  }
  
  public void setNavigationMode(int paramInt)
  {
    int i1 = p;
    if (paramInt != i1)
    {
      switch (i1)
      {
      default: 
        break;
      case 2: 
        if ((f != null) && (f.getParent() == a)) {
          a.removeView(f);
        }
        break;
      case 1: 
        if ((g != null) && (g.getParent() == a)) {
          a.removeView(g);
        }
        break;
      }
      p = paramInt;
      Object localObject;
      switch (paramInt)
      {
      default: 
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Invalid navigation mode ");
        ((StringBuilder)localObject).append(paramInt);
        throw new IllegalArgumentException(((StringBuilder)localObject).toString());
      case 2: 
        if (f != null)
        {
          a.addView(f, 0);
          localObject = (Toolbar.LayoutParams)f.getLayoutParams();
          width = -2;
          height = -2;
          gravity = 8388691;
          return;
        }
        break;
      case 1: 
        c();
        a.addView(g, 0);
      }
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    m = paramCharSequence;
    if ((e & 0x8) != 0) {
      a.setSubtitle(paramCharSequence);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    l = true;
    a(paramCharSequence);
  }
  
  public void setVisibility(int paramInt)
  {
    a.setVisibility(paramInt);
  }
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    c = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!l) {
      a(paramCharSequence);
    }
  }
  
  public ViewPropertyAnimatorCompat setupAnimatorToVisibility(final int paramInt, long paramLong)
  {
    ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = ViewCompat.animate(a);
    float f1;
    if (paramInt == 0) {
      f1 = 1.0F;
    } else {
      f1 = 0.0F;
    }
    localViewPropertyAnimatorCompat.alpha(f1).setDuration(paramLong).setListener(new ViewPropertyAnimatorListenerAdapter()
    {
      private boolean c = false;
      
      public void onAnimationCancel(View paramAnonymousView)
      {
        c = true;
      }
      
      public void onAnimationEnd(View paramAnonymousView)
      {
        if (!c) {
          a.setVisibility(paramInt);
        }
      }
      
      public void onAnimationStart(View paramAnonymousView)
      {
        a.setVisibility(0);
      }
    });
  }
  
  public boolean showOverflowMenu()
  {
    return a.showOverflowMenu();
  }
}
