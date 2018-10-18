package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.DimenRes;
import android.support.annotation.Dimension;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.R.attr;
import android.support.design.R.color;
import android.support.design.R.dimen;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.BottomNavigationMenu;
import android.support.design.internal.BottomNavigationMenuView;
import android.support.design.internal.BottomNavigationPresenter;
import android.support.design.internal.ThemeEnforcement;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class BottomNavigationView
  extends FrameLayout
{
  private final MenuBuilder a;
  private final BottomNavigationMenuView b;
  private final BottomNavigationPresenter c = new BottomNavigationPresenter();
  private MenuInflater d;
  private OnNavigationItemSelectedListener e;
  private OnNavigationItemReselectedListener f;
  
  public BottomNavigationView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.bottomNavigationStyle);
  }
  
  public BottomNavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new BottomNavigationMenu(paramContext);
    b = new BottomNavigationMenuView(paramContext);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    gravity = 17;
    b.setLayoutParams(localLayoutParams);
    c.setBottomNavigationMenuView(b);
    c.setId(1);
    b.setPresenter(c);
    a.addMenuPresenter(c);
    c.initForMenu(getContext(), a);
    paramAttributeSet = ThemeEnforcement.obtainTintedStyledAttributes(paramContext, paramAttributeSet, R.styleable.BottomNavigationView, paramInt, R.style.Widget_Design_BottomNavigationView, new int[] { R.styleable.BottomNavigationView_itemTextAppearanceInactive, R.styleable.BottomNavigationView_itemTextAppearanceActive });
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_itemIconTint)) {
      b.setIconTintList(paramAttributeSet.getColorStateList(R.styleable.BottomNavigationView_itemIconTint));
    } else {
      b.setIconTintList(b.createDefaultColorStateList(16842808));
    }
    setItemIconSize(paramAttributeSet.getDimensionPixelSize(R.styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_icon_size)));
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_itemTextAppearanceInactive)) {
      setItemTextAppearanceInactive(paramAttributeSet.getResourceId(R.styleable.BottomNavigationView_itemTextAppearanceInactive, 0));
    }
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_itemTextAppearanceActive)) {
      setItemTextAppearanceActive(paramAttributeSet.getResourceId(R.styleable.BottomNavigationView_itemTextAppearanceActive, 0));
    }
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_itemTextColor)) {
      setItemTextColor(paramAttributeSet.getColorStateList(R.styleable.BottomNavigationView_itemTextColor));
    }
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_elevation)) {
      ViewCompat.setElevation(this, paramAttributeSet.getDimensionPixelSize(R.styleable.BottomNavigationView_elevation, 0));
    }
    setLabelVisibilityMode(paramAttributeSet.getInteger(R.styleable.BottomNavigationView_labelVisibilityMode, -1));
    setItemHorizontalTranslationEnabled(paramAttributeSet.getBoolean(R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
    paramInt = paramAttributeSet.getResourceId(R.styleable.BottomNavigationView_itemBackground, 0);
    b.setItemBackgroundRes(paramInt);
    if (paramAttributeSet.hasValue(R.styleable.BottomNavigationView_menu)) {
      inflateMenu(paramAttributeSet.getResourceId(R.styleable.BottomNavigationView_menu, 0));
    }
    paramAttributeSet.recycle();
    addView(b, localLayoutParams);
    if (Build.VERSION.SDK_INT < 21) {
      a(paramContext);
    }
    a.setCallback(new MenuBuilder.Callback()
    {
      public boolean onMenuItemSelected(MenuBuilder paramAnonymousMenuBuilder, MenuItem paramAnonymousMenuItem)
      {
        if ((BottomNavigationView.a(BottomNavigationView.this) != null) && (paramAnonymousMenuItem.getItemId() == getSelectedItemId()))
        {
          BottomNavigationView.a(BottomNavigationView.this).onNavigationItemReselected(paramAnonymousMenuItem);
          return true;
        }
        return (BottomNavigationView.b(BottomNavigationView.this) != null) && (!BottomNavigationView.b(BottomNavigationView.this).onNavigationItemSelected(paramAnonymousMenuItem));
      }
      
      public void onMenuModeChange(MenuBuilder paramAnonymousMenuBuilder) {}
    });
  }
  
  private void a(Context paramContext)
  {
    View localView = new View(paramContext);
    localView.setBackgroundColor(ContextCompat.getColor(paramContext, R.color.design_bottom_navigation_shadow_color));
    localView.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.design_bottom_navigation_shadow_height)));
    addView(localView);
  }
  
  private MenuInflater getMenuInflater()
  {
    if (d == null) {
      d = new SupportMenuInflater(getContext());
    }
    return d;
  }
  
  @Nullable
  public Drawable getItemBackground()
  {
    return b.getItemBackground();
  }
  
  @Deprecated
  @DrawableRes
  public int getItemBackgroundResource()
  {
    return b.getItemBackgroundRes();
  }
  
  @Dimension
  public int getItemIconSize()
  {
    return b.getItemIconSize();
  }
  
  @Nullable
  public ColorStateList getItemIconTintList()
  {
    return b.getIconTintList();
  }
  
  @StyleRes
  public int getItemTextAppearanceActive()
  {
    return b.getItemTextAppearanceActive();
  }
  
  @StyleRes
  public int getItemTextAppearanceInactive()
  {
    return b.getItemTextAppearanceInactive();
  }
  
  @Nullable
  public ColorStateList getItemTextColor()
  {
    return b.getItemTextColor();
  }
  
  public int getLabelVisibilityMode()
  {
    return b.getLabelVisibilityMode();
  }
  
  public int getMaxItemCount()
  {
    return 5;
  }
  
  @NonNull
  public Menu getMenu()
  {
    return a;
  }
  
  @IdRes
  public int getSelectedItemId()
  {
    return b.getSelectedItemId();
  }
  
  public void inflateMenu(int paramInt)
  {
    c.setUpdateSuspended(true);
    getMenuInflater().inflate(paramInt, a);
    c.setUpdateSuspended(false);
    c.updateMenuView(true);
  }
  
  public boolean isItemHorizontalTranslationEnabled()
  {
    return b.isItemHorizontalTranslationEnabled();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof a))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    a.restorePresenterStates(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    a localA = new a(super.onSaveInstanceState());
    a = new Bundle();
    a.savePresenterStates(a);
    return localA;
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable)
  {
    b.setItemBackground(paramDrawable);
  }
  
  public void setItemBackgroundResource(@DrawableRes int paramInt)
  {
    b.setItemBackgroundRes(paramInt);
  }
  
  public void setItemHorizontalTranslationEnabled(boolean paramBoolean)
  {
    if (b.isItemHorizontalTranslationEnabled() != paramBoolean)
    {
      b.setItemHorizontalTranslationEnabled(paramBoolean);
      c.updateMenuView(false);
    }
  }
  
  public void setItemIconSize(@Dimension int paramInt)
  {
    b.setItemIconSize(paramInt);
  }
  
  public void setItemIconSizeRes(@DimenRes int paramInt)
  {
    setItemIconSize(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setItemIconTintList(@Nullable ColorStateList paramColorStateList)
  {
    b.setIconTintList(paramColorStateList);
  }
  
  public void setItemTextAppearanceActive(@StyleRes int paramInt)
  {
    b.setItemTextAppearanceActive(paramInt);
  }
  
  public void setItemTextAppearanceInactive(@StyleRes int paramInt)
  {
    b.setItemTextAppearanceInactive(paramInt);
  }
  
  public void setItemTextColor(@Nullable ColorStateList paramColorStateList)
  {
    b.setItemTextColor(paramColorStateList);
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    if (b.getLabelVisibilityMode() != paramInt)
    {
      b.setLabelVisibilityMode(paramInt);
      c.updateMenuView(false);
    }
  }
  
  public void setOnNavigationItemReselectedListener(@Nullable OnNavigationItemReselectedListener paramOnNavigationItemReselectedListener)
  {
    f = paramOnNavigationItemReselectedListener;
  }
  
  public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener paramOnNavigationItemSelectedListener)
  {
    e = paramOnNavigationItemSelectedListener;
  }
  
  public void setSelectedItemId(@IdRes int paramInt)
  {
    MenuItem localMenuItem = a.findItem(paramInt);
    if ((localMenuItem != null) && (!a.performItemAction(localMenuItem, c, 0))) {
      localMenuItem.setChecked(true);
    }
  }
  
  public static abstract interface OnNavigationItemReselectedListener
  {
    public abstract void onNavigationItemReselected(@NonNull MenuItem paramMenuItem);
  }
  
  public static abstract interface OnNavigationItemSelectedListener
  {
    public abstract boolean onNavigationItemSelected(@NonNull MenuItem paramMenuItem);
  }
  
  static class a
    extends AbsSavedState
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public BottomNavigationView.a a(Parcel paramAnonymousParcel)
      {
        return new BottomNavigationView.a(paramAnonymousParcel, null);
      }
      
      public BottomNavigationView.a a(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new BottomNavigationView.a(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public BottomNavigationView.a[] a(int paramAnonymousInt)
      {
        return new BottomNavigationView.a[paramAnonymousInt];
      }
    };
    Bundle a;
    
    public a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      a(paramParcel, paramClassLoader);
    }
    
    public a(Parcelable paramParcelable)
    {
      super();
    }
    
    private void a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      a = paramParcel.readBundle(paramClassLoader);
    }
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(a);
    }
  }
}
