package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R.dimen;
import android.support.design.R.drawable;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView.ItemView;
import android.support.v7.widget.TooltipCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationItemView
  extends FrameLayout
  implements MenuView.ItemView
{
  public static final int INVALID_ITEM_POSITION = -1;
  private static final int[] a = { 16842912 };
  private final int b;
  private float c;
  private float d;
  private float e;
  private int f;
  private boolean g;
  private ImageView h;
  private final TextView i;
  private final TextView j;
  private int k = -1;
  private MenuItemImpl l;
  private ColorStateList m;
  
  public BottomNavigationItemView(@NonNull Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BottomNavigationItemView(@NonNull Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BottomNavigationItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = getResources();
    LayoutInflater.from(paramContext).inflate(R.layout.design_bottom_navigation_item, this, true);
    setBackgroundResource(R.drawable.design_bottom_navigation_item_background);
    b = paramAttributeSet.getDimensionPixelSize(R.dimen.design_bottom_navigation_margin);
    h = ((ImageView)findViewById(R.id.icon));
    i = ((TextView)findViewById(R.id.smallLabel));
    j = ((TextView)findViewById(R.id.largeLabel));
    ViewCompat.setImportantForAccessibility(i, 2);
    ViewCompat.setImportantForAccessibility(j, 2);
    setFocusable(true);
    a(i.getTextSize(), j.getTextSize());
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    c = (paramFloat1 - paramFloat2);
    d = (paramFloat2 * 1.0F / paramFloat1);
    e = (paramFloat1 * 1.0F / paramFloat2);
  }
  
  private void a(@NonNull View paramView, float paramFloat1, float paramFloat2, int paramInt)
  {
    paramView.setScaleX(paramFloat1);
    paramView.setScaleY(paramFloat2);
    paramView.setVisibility(paramInt);
  }
  
  private void a(@NonNull View paramView, int paramInt1, int paramInt2)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    topMargin = paramInt1;
    gravity = paramInt2;
    paramView.setLayoutParams(localLayoutParams);
  }
  
  public MenuItemImpl getItemData()
  {
    return l;
  }
  
  public int getItemPosition()
  {
    return k;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    l = paramMenuItemImpl;
    setCheckable(paramMenuItemImpl.isCheckable());
    setChecked(paramMenuItemImpl.isChecked());
    setEnabled(paramMenuItemImpl.isEnabled());
    setIcon(paramMenuItemImpl.getIcon());
    setTitle(paramMenuItemImpl.getTitle());
    setId(paramMenuItemImpl.getItemId());
    if (!TextUtils.isEmpty(paramMenuItemImpl.getContentDescription())) {
      setContentDescription(paramMenuItemImpl.getContentDescription());
    }
    TooltipCompat.setTooltipText(this, paramMenuItemImpl.getTooltipText());
    if (paramMenuItemImpl.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((l != null) && (l.isCheckable()) && (l.isChecked())) {
      mergeDrawableStates(arrayOfInt, a);
    }
    return arrayOfInt;
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    j.setPivotX(j.getWidth() / 2);
    j.setPivotY(j.getBaseline());
    i.setPivotX(i.getWidth() / 2);
    i.setPivotY(i.getBaseline());
    switch (f)
    {
    default: 
      break;
    case 2: 
      a(h, b, 17);
      j.setVisibility(8);
      i.setVisibility(8);
      break;
    case 1: 
      if (paramBoolean)
      {
        a(h, (int)(b + c), 49);
        a(j, 1.0F, 1.0F, 0);
        a(i, d, d, 4);
      }
      else
      {
        a(h, b, 49);
        a(j, e, e, 4);
        a(i, 1.0F, 1.0F, 0);
      }
      break;
    case 0: 
      if (paramBoolean)
      {
        a(h, b, 49);
        a(j, 1.0F, 1.0F, 0);
      }
      else
      {
        a(h, b, 17);
        a(j, 0.5F, 0.5F, 4);
      }
      i.setVisibility(4);
      break;
    case -1: 
      if (g)
      {
        if (paramBoolean)
        {
          a(h, b, 49);
          a(j, 1.0F, 1.0F, 0);
        }
        else
        {
          a(h, b, 17);
          a(j, 0.5F, 0.5F, 4);
        }
        i.setVisibility(4);
      }
      else if (paramBoolean)
      {
        a(h, (int)(b + c), 49);
        a(j, 1.0F, 1.0F, 0);
        a(i, d, d, 4);
      }
      else
      {
        a(h, b, 49);
        a(j, e, e, 4);
        a(i, 1.0F, 1.0F, 0);
      }
      break;
    }
    refreshDrawableState();
    setSelected(paramBoolean);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    i.setEnabled(paramBoolean);
    j.setEnabled(paramBoolean);
    h.setEnabled(paramBoolean);
    if (paramBoolean)
    {
      ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
      return;
    }
    ViewCompat.setPointerIcon(this, null);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (paramDrawable != null)
    {
      localObject = paramDrawable.getConstantState();
      if (localObject != null) {
        paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
      }
      localObject = DrawableCompat.wrap(paramDrawable).mutate();
      DrawableCompat.setTintList((Drawable)localObject, m);
    }
    h.setImageDrawable((Drawable)localObject);
  }
  
  public void setIconSize(int paramInt)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)h.getLayoutParams();
    width = paramInt;
    height = paramInt;
    h.setLayoutParams(localLayoutParams);
  }
  
  public void setIconTintList(ColorStateList paramColorStateList)
  {
    m = paramColorStateList;
    if (l != null) {
      setIcon(l.getIcon());
    }
  }
  
  public void setItemBackground(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt == 0) {
      localDrawable = null;
    } else {
      localDrawable = ContextCompat.getDrawable(getContext(), paramInt);
    }
    setItemBackground(localDrawable);
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable)
  {
    ViewCompat.setBackground(this, paramDrawable);
  }
  
  public void setItemPosition(int paramInt)
  {
    k = paramInt;
  }
  
  public void setLabelVisibilityMode(int paramInt)
  {
    if (f != paramInt)
    {
      f = paramInt;
      if (l != null) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      if (paramInt != 0) {
        setChecked(l.isChecked());
      }
    }
  }
  
  public void setShifting(boolean paramBoolean)
  {
    if (g != paramBoolean)
    {
      g = paramBoolean;
      int n;
      if (l != null) {
        n = 1;
      } else {
        n = 0;
      }
      if (n != 0) {
        setChecked(l.isChecked());
      }
    }
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTextAppearanceActive(@StyleRes int paramInt)
  {
    TextViewCompat.setTextAppearance(j, paramInt);
    a(i.getTextSize(), j.getTextSize());
  }
  
  public void setTextAppearanceInactive(@StyleRes int paramInt)
  {
    TextViewCompat.setTextAppearance(i, paramInt);
    a(i.getTextSize(), j.getTextSize());
  }
  
  public void setTextColor(@Nullable ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      i.setTextColor(paramColorStateList);
      j.setTextColor(paramColorStateList);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    i.setText(paramCharSequence);
    j.setText(paramCharSequence);
    if ((l == null) || (TextUtils.isEmpty(l.getContentDescription()))) {
      setContentDescription(paramCharSequence);
    }
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}
