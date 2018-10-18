package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.SelectionBoundsAdjuster;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ListMenuItemView
  extends LinearLayout
  implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster
{
  private MenuItemImpl a;
  private ImageView b;
  private RadioButton c;
  private TextView d;
  private CheckBox e;
  private TextView f;
  private ImageView g;
  private ImageView h;
  private LinearLayout i;
  private Drawable j;
  private int k;
  private Context l;
  private boolean m;
  private Drawable n;
  private boolean o;
  private int p;
  private LayoutInflater q;
  private boolean r;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.listMenuViewStyle);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.MenuView, paramInt, 0);
    j = paramAttributeSet.getDrawable(R.styleable.MenuView_android_itemBackground);
    k = paramAttributeSet.getResourceId(R.styleable.MenuView_android_itemTextAppearance, -1);
    m = paramAttributeSet.getBoolean(R.styleable.MenuView_preserveIconSpacing, false);
    l = paramContext;
    n = paramAttributeSet.getDrawable(R.styleable.MenuView_subMenuArrow);
    paramContext = paramContext.getTheme();
    paramInt = R.attr.dropDownListViewStyle;
    paramContext = paramContext.obtainStyledAttributes(null, new int[] { 16843049 }, paramInt, 0);
    o = paramContext.hasValue(0);
    paramAttributeSet.recycle();
    paramContext.recycle();
  }
  
  private void a()
  {
    b = ((ImageView)getInflater().inflate(R.layout.abc_list_menu_item_icon, this, false));
    a(b, 0);
  }
  
  private void a(View paramView)
  {
    a(paramView, -1);
  }
  
  private void a(View paramView, int paramInt)
  {
    if (i != null)
    {
      i.addView(paramView, paramInt);
      return;
    }
    addView(paramView, paramInt);
  }
  
  private void b()
  {
    c = ((RadioButton)getInflater().inflate(R.layout.abc_list_menu_item_radio, this, false));
    a(c);
  }
  
  private void c()
  {
    e = ((CheckBox)getInflater().inflate(R.layout.abc_list_menu_item_checkbox, this, false));
    a(e);
  }
  
  private LayoutInflater getInflater()
  {
    if (q == null) {
      q = LayoutInflater.from(getContext());
    }
    return q;
  }
  
  private void setSubMenuArrowVisible(boolean paramBoolean)
  {
    if (g != null)
    {
      ImageView localImageView = g;
      int i1;
      if (paramBoolean) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      localImageView.setVisibility(i1);
    }
  }
  
  public void adjustListItemSelectionBounds(Rect paramRect)
  {
    if ((h != null) && (h.getVisibility() == 0))
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)h.getLayoutParams();
      top += h.getHeight() + topMargin + bottomMargin;
    }
  }
  
  public MenuItemImpl getItemData()
  {
    return a;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    a = paramMenuItemImpl;
    p = paramInt;
    if (paramMenuItemImpl.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setTitle(paramMenuItemImpl.a(this));
    setCheckable(paramMenuItemImpl.isCheckable());
    setShortcut(paramMenuItemImpl.c(), paramMenuItemImpl.a());
    setIcon(paramMenuItemImpl.getIcon());
    setEnabled(paramMenuItemImpl.isEnabled());
    setSubMenuArrowVisible(paramMenuItemImpl.hasSubMenu());
    setContentDescription(paramMenuItemImpl.getContentDescription());
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ViewCompat.setBackground(this, j);
    d = ((TextView)findViewById(R.id.title));
    if (k != -1) {
      d.setTextAppearance(l, k);
    }
    f = ((TextView)findViewById(R.id.shortcut));
    g = ((ImageView)findViewById(R.id.submenuarrow));
    if (g != null) {
      g.setImageDrawable(n);
    }
    h = ((ImageView)findViewById(R.id.group_divider));
    i = ((LinearLayout)findViewById(R.id.content));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((b != null) && (m))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)b.getLayoutParams();
      if ((height > 0) && (width <= 0)) {
        width = height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (c == null) && (e == null)) {
      return;
    }
    Object localObject1;
    Object localObject2;
    if (a.isExclusiveCheckable())
    {
      if (c == null) {
        b();
      }
      localObject1 = c;
      localObject2 = e;
    }
    else
    {
      if (e == null) {
        c();
      }
      localObject1 = e;
      localObject2 = c;
    }
    if (paramBoolean)
    {
      ((CompoundButton)localObject1).setChecked(a.isChecked());
      if (((CompoundButton)localObject1).getVisibility() != 0) {
        ((CompoundButton)localObject1).setVisibility(0);
      }
      if ((localObject2 != null) && (((CompoundButton)localObject2).getVisibility() != 8)) {
        ((CompoundButton)localObject2).setVisibility(8);
      }
    }
    else
    {
      if (e != null) {
        e.setVisibility(8);
      }
      if (c != null) {
        c.setVisibility(8);
      }
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    Object localObject;
    if (a.isExclusiveCheckable())
    {
      if (c == null) {
        b();
      }
      localObject = c;
    }
    else
    {
      if (e == null) {
        c();
      }
      localObject = e;
    }
    ((CompoundButton)localObject).setChecked(paramBoolean);
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    r = paramBoolean;
    m = paramBoolean;
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    if (h != null)
    {
      ImageView localImageView = h;
      int i1;
      if ((!o) && (paramBoolean)) {
        i1 = 0;
      } else {
        i1 = 8;
      }
      localImageView.setVisibility(i1);
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i1;
    if ((!a.shouldShowIcon()) && (!r)) {
      i1 = 0;
    } else {
      i1 = 1;
    }
    if ((i1 == 0) && (!m)) {
      return;
    }
    if ((b == null) && (paramDrawable == null) && (!m)) {
      return;
    }
    if (b == null) {
      a();
    }
    if ((paramDrawable == null) && (!m))
    {
      b.setVisibility(8);
      return;
    }
    ImageView localImageView = b;
    if (i1 == 0) {
      paramDrawable = null;
    }
    localImageView.setImageDrawable(paramDrawable);
    if (b.getVisibility() != 0) {
      b.setVisibility(0);
    }
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar)
  {
    if ((paramBoolean) && (a.c())) {
      paramChar = '\000';
    } else {
      paramChar = '\b';
    }
    if (paramChar == 0) {
      f.setText(a.b());
    }
    if (f.getVisibility() != paramChar) {
      f.setVisibility(paramChar);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      d.setText(paramCharSequence);
      if (d.getVisibility() != 0) {
        d.setVisibility(0);
      }
    }
    else if (d.getVisibility() != 8)
    {
      d.setVisibility(8);
    }
  }
  
  public boolean showsIcon()
  {
    return r;
  }
}
