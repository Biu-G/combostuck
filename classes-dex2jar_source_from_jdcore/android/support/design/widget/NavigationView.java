package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.DimenRes;
import android.support.annotation.Dimension;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.NavigationMenu;
import android.support.design.internal.NavigationMenuPresenter;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.design.internal.ThemeEnforcement;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;

public class NavigationView
  extends ScrimInsetsFrameLayout
{
  private static final int[] d = { 16842912 };
  private static final int[] e = { -16842910 };
  OnNavigationItemSelectedListener c;
  private final NavigationMenu f;
  private final NavigationMenuPresenter g = new NavigationMenuPresenter();
  private final int h;
  private MenuInflater i;
  
  public NavigationView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, android.support.design.R.attr.navigationViewStyle);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    f = new NavigationMenu(paramContext);
    TintTypedArray localTintTypedArray = ThemeEnforcement.obtainTintedStyledAttributes(paramContext, paramAttributeSet, R.styleable.NavigationView, paramInt, R.style.Widget_Design_NavigationView, new int[0]);
    ViewCompat.setBackground(this, localTintTypedArray.getDrawable(R.styleable.NavigationView_android_background));
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_elevation)) {
      ViewCompat.setElevation(this, localTintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_elevation, 0));
    }
    ViewCompat.setFitsSystemWindows(this, localTintTypedArray.getBoolean(R.styleable.NavigationView_android_fitsSystemWindows, false));
    h = localTintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_android_maxWidth, 0);
    ColorStateList localColorStateList;
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_itemIconTint)) {
      localColorStateList = localTintTypedArray.getColorStateList(R.styleable.NavigationView_itemIconTint);
    } else {
      localColorStateList = a(16842808);
    }
    int j;
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_itemTextAppearance))
    {
      j = localTintTypedArray.getResourceId(R.styleable.NavigationView_itemTextAppearance, 0);
      paramInt = 1;
    }
    else
    {
      paramInt = 0;
      j = 0;
    }
    paramAttributeSet = null;
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_itemTextColor)) {
      paramAttributeSet = localTintTypedArray.getColorStateList(R.styleable.NavigationView_itemTextColor);
    }
    Object localObject = paramAttributeSet;
    if (paramInt == 0)
    {
      localObject = paramAttributeSet;
      if (paramAttributeSet == null) {
        localObject = a(16842806);
      }
    }
    paramAttributeSet = localTintTypedArray.getDrawable(R.styleable.NavigationView_itemBackground);
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_itemHorizontalPadding))
    {
      k = localTintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemHorizontalPadding, 0);
      g.setItemHorizontalPadding(k);
    }
    int k = localTintTypedArray.getDimensionPixelSize(R.styleable.NavigationView_itemIconPadding, 0);
    f.setCallback(new MenuBuilder.Callback()
    {
      public boolean onMenuItemSelected(MenuBuilder paramAnonymousMenuBuilder, MenuItem paramAnonymousMenuItem)
      {
        return (c != null) && (c.onNavigationItemSelected(paramAnonymousMenuItem));
      }
      
      public void onMenuModeChange(MenuBuilder paramAnonymousMenuBuilder) {}
    });
    g.setId(1);
    g.initForMenu(paramContext, f);
    g.setItemIconTintList(localColorStateList);
    if (paramInt != 0) {
      g.setItemTextAppearance(j);
    }
    g.setItemTextColor((ColorStateList)localObject);
    g.setItemBackground(paramAttributeSet);
    g.setItemIconPadding(k);
    f.addMenuPresenter(g);
    addView((View)g.getMenuView(this));
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_menu)) {
      inflateMenu(localTintTypedArray.getResourceId(R.styleable.NavigationView_menu, 0));
    }
    if (localTintTypedArray.hasValue(R.styleable.NavigationView_headerLayout)) {
      inflateHeaderView(localTintTypedArray.getResourceId(R.styleable.NavigationView_headerLayout, 0));
    }
    localTintTypedArray.recycle();
  }
  
  private ColorStateList a(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {
      return null;
    }
    ColorStateList localColorStateList = AppCompatResources.getColorStateList(getContext(), resourceId);
    if (!getContext().getTheme().resolveAttribute(android.support.v7.appcompat.R.attr.colorPrimary, (TypedValue)localObject, true)) {
      return null;
    }
    paramInt = data;
    int j = localColorStateList.getDefaultColor();
    localObject = e;
    int[] arrayOfInt1 = d;
    int[] arrayOfInt2 = EMPTY_STATE_SET;
    int k = localColorStateList.getColorForState(e, j);
    return new ColorStateList(new int[][] { localObject, arrayOfInt1, arrayOfInt2 }, new int[] { k, paramInt, j });
  }
  
  private MenuInflater getMenuInflater()
  {
    if (i == null) {
      i = new SupportMenuInflater(getContext());
    }
    return i;
  }
  
  public void addHeaderView(@NonNull View paramView)
  {
    g.addHeaderView(paramView);
  }
  
  @Nullable
  public MenuItem getCheckedItem()
  {
    return g.getCheckedItem();
  }
  
  public int getHeaderCount()
  {
    return g.getHeaderCount();
  }
  
  public View getHeaderView(int paramInt)
  {
    return g.getHeaderView(paramInt);
  }
  
  @Nullable
  public Drawable getItemBackground()
  {
    return g.getItemBackground();
  }
  
  @Dimension
  public int getItemHorizontalPadding()
  {
    return g.getItemHorizontalPadding();
  }
  
  @Dimension
  public int getItemIconPadding()
  {
    return g.getItemIconPadding();
  }
  
  @Nullable
  public ColorStateList getItemIconTintList()
  {
    return g.getItemTintList();
  }
  
  @Nullable
  public ColorStateList getItemTextColor()
  {
    return g.getItemTextColor();
  }
  
  public Menu getMenu()
  {
    return f;
  }
  
  public View inflateHeaderView(@LayoutRes int paramInt)
  {
    return g.inflateHeaderView(paramInt);
  }
  
  public void inflateMenu(int paramInt)
  {
    g.setUpdateSuspended(true);
    getMenuInflater().inflate(paramInt, f);
    g.setUpdateSuspended(false);
    g.updateMenuView(false);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  protected void onInsetsChanged(WindowInsetsCompat paramWindowInsetsCompat)
  {
    g.dispatchApplyWindowInsets(paramWindowInsetsCompat);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    if (j != Integer.MIN_VALUE)
    {
      if (j == 0) {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
      }
    }
    else {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), h), 1073741824);
    }
    super.onMeasure(paramInt1, paramInt2);
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
    f.restorePresenterStates(menuState);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    menuState = new Bundle();
    f.savePresenterStates(menuState);
    return localSavedState;
  }
  
  public void removeHeaderView(@NonNull View paramView)
  {
    g.removeHeaderView(paramView);
  }
  
  public void setCheckedItem(@IdRes int paramInt)
  {
    MenuItem localMenuItem = f.findItem(paramInt);
    if (localMenuItem != null) {
      g.setCheckedItem((MenuItemImpl)localMenuItem);
    }
  }
  
  public void setCheckedItem(@NonNull MenuItem paramMenuItem)
  {
    paramMenuItem = f.findItem(paramMenuItem.getItemId());
    if (paramMenuItem != null)
    {
      g.setCheckedItem((MenuItemImpl)paramMenuItem);
      return;
    }
    throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable)
  {
    g.setItemBackground(paramDrawable);
  }
  
  public void setItemBackgroundResource(@DrawableRes int paramInt)
  {
    setItemBackground(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setItemHorizontalPadding(@Dimension int paramInt)
  {
    g.setItemHorizontalPadding(paramInt);
  }
  
  public void setItemHorizontalPaddingResource(@DimenRes int paramInt)
  {
    g.setItemHorizontalPadding(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconPadding(@Dimension int paramInt)
  {
    g.setItemIconPadding(paramInt);
  }
  
  public void setItemIconPaddingResource(int paramInt)
  {
    g.setItemIconPadding(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconTintList(@Nullable ColorStateList paramColorStateList)
  {
    g.setItemIconTintList(paramColorStateList);
  }
  
  public void setItemTextAppearance(@StyleRes int paramInt)
  {
    g.setItemTextAppearance(paramInt);
  }
  
  public void setItemTextColor(@Nullable ColorStateList paramColorStateList)
  {
    g.setItemTextColor(paramColorStateList);
  }
  
  public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener paramOnNavigationItemSelectedListener)
  {
    c = paramOnNavigationItemSelectedListener;
  }
  
  public static abstract interface OnNavigationItemSelectedListener
  {
    public abstract boolean onNavigationItemSelected(@NonNull MenuItem paramMenuItem);
  }
  
  public static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public NavigationView.SavedState a(Parcel paramAnonymousParcel)
      {
        return new NavigationView.SavedState(paramAnonymousParcel, null);
      }
      
      public NavigationView.SavedState a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new NavigationView.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public NavigationView.SavedState[] a(int paramAnonymousInt)
      {
        return new NavigationView.SavedState[paramAnonymousInt];
      }
    };
    public Bundle menuState;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      menuState = paramParcel.readBundle(paramClassLoader);
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(menuState);
    }
  }
}
