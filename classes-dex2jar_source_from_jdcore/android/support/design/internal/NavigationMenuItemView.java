package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.RestrictTo;
import android.support.design.R.dimen;
import android.support.design.R.drawable;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView.ItemView;
import android.support.v7.widget.LinearLayoutCompat.LayoutParams;
import android.support.v7.widget.TooltipCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuItemView
  extends ForegroundLinearLayout
  implements MenuView.ItemView
{
  private static final int[] c = { 16842912 };
  boolean b;
  private final int d;
  private boolean e;
  private final CheckedTextView f;
  private FrameLayout g;
  private MenuItemImpl h;
  private ColorStateList i;
  private boolean j;
  private Drawable k;
  private final AccessibilityDelegateCompat l = new AccessibilityDelegateCompat()
  {
    public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
      paramAnonymousAccessibilityNodeInfoCompat.setCheckable(b);
    }
  };
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(R.layout.design_navigation_menu_item, this, true);
    d = paramContext.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size);
    f = ((CheckedTextView)findViewById(R.id.design_menu_item_text));
    f.setDuplicateParentStateEnabled(true);
    ViewCompat.setAccessibilityDelegate(f, l);
  }
  
  private boolean a()
  {
    return (h.getTitle() == null) && (h.getIcon() == null) && (h.getActionView() != null);
  }
  
  private void b()
  {
    LinearLayoutCompat.LayoutParams localLayoutParams;
    if (a())
    {
      f.setVisibility(8);
      if (g != null)
      {
        localLayoutParams = (LinearLayoutCompat.LayoutParams)g.getLayoutParams();
        width = -1;
        g.setLayoutParams(localLayoutParams);
      }
    }
    else
    {
      f.setVisibility(0);
      if (g != null)
      {
        localLayoutParams = (LinearLayoutCompat.LayoutParams)g.getLayoutParams();
        width = -2;
        g.setLayoutParams(localLayoutParams);
      }
    }
  }
  
  private StateListDrawable c()
  {
    TypedValue localTypedValue = new TypedValue();
    if (getContext().getTheme().resolveAttribute(R.attr.colorControlHighlight, localTypedValue, true))
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(c, new ColorDrawable(data));
      localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      return localStateListDrawable;
    }
    return null;
  }
  
  private void setActionView(View paramView)
  {
    if (paramView != null)
    {
      if (g == null) {
        g = ((FrameLayout)((ViewStub)findViewById(R.id.design_menu_item_action_area_stub)).inflate());
      }
      g.removeAllViews();
      g.addView(paramView);
    }
  }
  
  public MenuItemImpl getItemData()
  {
    return h;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    h = paramMenuItemImpl;
    if (paramMenuItemImpl.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    if (getBackground() == null) {
      ViewCompat.setBackground(this, c());
    }
    setCheckable(paramMenuItemImpl.isCheckable());
    setChecked(paramMenuItemImpl.isChecked());
    setEnabled(paramMenuItemImpl.isEnabled());
    setTitle(paramMenuItemImpl.getTitle());
    setIcon(paramMenuItemImpl.getIcon());
    setActionView(paramMenuItemImpl.getActionView());
    setContentDescription(paramMenuItemImpl.getContentDescription());
    TooltipCompat.setTooltipText(this, paramMenuItemImpl.getTooltipText());
    b();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((h != null) && (h.isCheckable()) && (h.isChecked())) {
      mergeDrawableStates(arrayOfInt, c);
    }
    return arrayOfInt;
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void recycle()
  {
    if (g != null) {
      g.removeAllViews();
    }
    f.setCompoundDrawables(null, null, null, null);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
    if (b != paramBoolean)
    {
      b = paramBoolean;
      l.sendAccessibilityEvent(f, 2048);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
    f.setChecked(paramBoolean);
  }
  
  public void setHorizontalPadding(int paramInt)
  {
    setPadding(paramInt, 0, paramInt, 0);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      Object localObject = paramDrawable;
      if (j)
      {
        localObject = paramDrawable.getConstantState();
        if (localObject != null) {
          paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
        }
        localObject = DrawableCompat.wrap(paramDrawable).mutate();
        DrawableCompat.setTintList((Drawable)localObject, i);
      }
      ((Drawable)localObject).setBounds(0, 0, d, d);
      paramDrawable = (Drawable)localObject;
    }
    else if (e)
    {
      if (k == null)
      {
        k = ResourcesCompat.getDrawable(getResources(), R.drawable.navigation_empty_icon, getContext().getTheme());
        if (k != null) {
          k.setBounds(0, 0, d, d);
        }
      }
      paramDrawable = k;
    }
    TextViewCompat.setCompoundDrawablesRelative(f, paramDrawable, null, null, null);
  }
  
  public void setIconPadding(int paramInt)
  {
    f.setCompoundDrawablePadding(paramInt);
  }
  
  void setIconTintList(ColorStateList paramColorStateList)
  {
    i = paramColorStateList;
    boolean bool;
    if (i != null) {
      bool = true;
    } else {
      bool = false;
    }
    j = bool;
    if (h != null) {
      setIcon(h.getIcon());
    }
  }
  
  public void setNeedsEmptyIcon(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTextAppearance(int paramInt)
  {
    TextViewCompat.setTextAppearance(f, paramInt);
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    f.setTextColor(paramColorStateList);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    f.setText(paramCharSequence);
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}
