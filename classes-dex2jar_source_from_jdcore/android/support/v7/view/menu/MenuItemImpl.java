package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider.VisibilityListener;
import android.support.v7.appcompat.R.string;
import android.support.v7.content.res.AppCompatResources;
import android.util.Log;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public final class MenuItemImpl
  implements SupportMenuItem
{
  private View A;
  private android.support.v4.view.ActionProvider B;
  private MenuItem.OnActionExpandListener C;
  private boolean D = false;
  private ContextMenu.ContextMenuInfo E;
  MenuBuilder a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private CharSequence f;
  private CharSequence g;
  private Intent h;
  private char i;
  private int j = 4096;
  private char k;
  private int l = 4096;
  private Drawable m;
  private int n = 0;
  private SubMenuBuilder o;
  private Runnable p;
  private MenuItem.OnMenuItemClickListener q;
  private CharSequence r;
  private CharSequence s;
  private ColorStateList t = null;
  private PorterDuff.Mode u = null;
  private boolean v = false;
  private boolean w = false;
  private boolean x = false;
  private int y = 16;
  private int z = 0;
  
  MenuItemImpl(MenuBuilder paramMenuBuilder, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    a = paramMenuBuilder;
    b = paramInt2;
    c = paramInt1;
    d = paramInt3;
    e = paramInt4;
    f = paramCharSequence;
    z = paramInt5;
  }
  
  private Drawable a(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      localDrawable = paramDrawable;
      if (x) {
        if (!v)
        {
          localDrawable = paramDrawable;
          if (!w) {}
        }
        else
        {
          localDrawable = DrawableCompat.wrap(paramDrawable).mutate();
          if (v) {
            DrawableCompat.setTintList(localDrawable, t);
          }
          if (w) {
            DrawableCompat.setTintMode(localDrawable, u);
          }
          x = false;
        }
      }
    }
    return localDrawable;
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 & paramInt2) == paramInt2) {
      paramStringBuilder.append(paramString);
    }
  }
  
  char a()
  {
    if (a.isQwertyMode()) {
      return k;
    }
    return i;
  }
  
  CharSequence a(MenuView.ItemView paramItemView)
  {
    if ((paramItemView != null) && (paramItemView.prefersCondensedTitle())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  void a(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    E = paramContextMenuInfo;
  }
  
  void a(boolean paramBoolean)
  {
    int i2 = y;
    int i3 = y;
    int i1;
    if (paramBoolean) {
      i1 = 2;
    } else {
      i1 = 0;
    }
    y = (i1 | i3 & 0xFFFFFFFD);
    if (i2 != y) {
      a.onItemsChanged(false);
    }
  }
  
  public void actionFormatChanged()
  {
    a.b(this);
  }
  
  String b()
  {
    char c1 = a();
    if (c1 == 0) {
      return "";
    }
    Resources localResources = a.getContext().getResources();
    StringBuilder localStringBuilder = new StringBuilder();
    if (ViewConfiguration.get(a.getContext()).hasPermanentMenuKey()) {
      localStringBuilder.append(localResources.getString(R.string.abc_prepend_shortcut_label));
    }
    int i1;
    if (a.isQwertyMode()) {
      i1 = l;
    } else {
      i1 = j;
    }
    a(localStringBuilder, i1, 65536, localResources.getString(R.string.abc_menu_meta_shortcut_label));
    a(localStringBuilder, i1, 4096, localResources.getString(R.string.abc_menu_ctrl_shortcut_label));
    a(localStringBuilder, i1, 2, localResources.getString(R.string.abc_menu_alt_shortcut_label));
    a(localStringBuilder, i1, 1, localResources.getString(R.string.abc_menu_shift_shortcut_label));
    a(localStringBuilder, i1, 4, localResources.getString(R.string.abc_menu_sym_shortcut_label));
    a(localStringBuilder, i1, 8, localResources.getString(R.string.abc_menu_function_shortcut_label));
    if (c1 != '\b')
    {
      if (c1 != '\n')
      {
        if (c1 != ' ') {
          localStringBuilder.append(c1);
        } else {
          localStringBuilder.append(localResources.getString(R.string.abc_menu_space_shortcut_label));
        }
      }
      else {
        localStringBuilder.append(localResources.getString(R.string.abc_menu_enter_shortcut_label));
      }
    }
    else {
      localStringBuilder.append(localResources.getString(R.string.abc_menu_delete_shortcut_label));
    }
    return localStringBuilder.toString();
  }
  
  boolean b(boolean paramBoolean)
  {
    int i2 = y;
    int i3 = y;
    boolean bool = false;
    int i1;
    if (paramBoolean) {
      i1 = 0;
    } else {
      i1 = 8;
    }
    y = (i1 | i3 & 0xFFFFFFF7);
    paramBoolean = bool;
    if (i2 != y) {
      paramBoolean = true;
    }
    return paramBoolean;
  }
  
  boolean c()
  {
    return (a.isShortcutsVisible()) && (a() != 0);
  }
  
  public boolean collapseActionView()
  {
    if ((z & 0x8) == 0) {
      return false;
    }
    if (A == null) {
      return true;
    }
    if ((C != null) && (!C.onMenuItemActionCollapse(this))) {
      return false;
    }
    return a.collapseItemActionView(this);
  }
  
  public boolean expandActionView()
  {
    if (!hasCollapsibleActionView()) {
      return false;
    }
    if ((C != null) && (!C.onMenuItemActionExpand(this))) {
      return false;
    }
    return a.expandItemActionView(this);
  }
  
  public android.view.ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public View getActionView()
  {
    if (A != null) {
      return A;
    }
    if (B != null)
    {
      A = B.onCreateActionView(this);
      return A;
    }
    return null;
  }
  
  public int getAlphabeticModifiers()
  {
    return l;
  }
  
  public char getAlphabeticShortcut()
  {
    return k;
  }
  
  public CharSequence getContentDescription()
  {
    return r;
  }
  
  public int getGroupId()
  {
    return c;
  }
  
  public Drawable getIcon()
  {
    if (m != null) {
      return a(m);
    }
    if (n != 0)
    {
      Drawable localDrawable = AppCompatResources.getDrawable(a.getContext(), n);
      n = 0;
      m = localDrawable;
      return a(localDrawable);
    }
    return null;
  }
  
  public ColorStateList getIconTintList()
  {
    return t;
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return u;
  }
  
  public Intent getIntent()
  {
    return h;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getItemId()
  {
    return b;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return E;
  }
  
  public int getNumericModifiers()
  {
    return j;
  }
  
  public char getNumericShortcut()
  {
    return i;
  }
  
  public int getOrder()
  {
    return d;
  }
  
  public int getOrdering()
  {
    return e;
  }
  
  public SubMenu getSubMenu()
  {
    return o;
  }
  
  public android.support.v4.view.ActionProvider getSupportActionProvider()
  {
    return B;
  }
  
  @ViewDebug.CapturedViewProperty
  public CharSequence getTitle()
  {
    return f;
  }
  
  public CharSequence getTitleCondensed()
  {
    CharSequence localCharSequence;
    if (g != null) {
      localCharSequence = g;
    } else {
      localCharSequence = f;
    }
    if ((Build.VERSION.SDK_INT < 18) && (localCharSequence != null) && (!(localCharSequence instanceof String))) {
      return localCharSequence.toString();
    }
    return localCharSequence;
  }
  
  public CharSequence getTooltipText()
  {
    return s;
  }
  
  public boolean hasCollapsibleActionView()
  {
    int i1 = z;
    boolean bool = false;
    if ((i1 & 0x8) != 0)
    {
      if ((A == null) && (B != null)) {
        A = B.onCreateActionView(this);
      }
      if (A != null) {
        bool = true;
      }
      return bool;
    }
    return false;
  }
  
  public boolean hasSubMenu()
  {
    return o != null;
  }
  
  public boolean invoke()
  {
    if ((q != null) && (q.onMenuItemClick(this))) {
      return true;
    }
    if (a.a(a, this)) {
      return true;
    }
    if (p != null)
    {
      p.run();
      return true;
    }
    if (h != null) {
      try
      {
        a.getContext().startActivity(h);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
      }
    }
    return (B != null) && (B.onPerformDefaultAction());
  }
  
  public boolean isActionButton()
  {
    return (y & 0x20) == 32;
  }
  
  public boolean isActionViewExpanded()
  {
    return D;
  }
  
  public boolean isCheckable()
  {
    return (y & 0x1) == 1;
  }
  
  public boolean isChecked()
  {
    return (y & 0x2) == 2;
  }
  
  public boolean isEnabled()
  {
    return (y & 0x10) != 0;
  }
  
  public boolean isExclusiveCheckable()
  {
    return (y & 0x4) != 0;
  }
  
  public boolean isVisible()
  {
    android.support.v4.view.ActionProvider localActionProvider = B;
    boolean bool1 = false;
    boolean bool2 = false;
    if ((localActionProvider != null) && (B.overridesItemVisibility()))
    {
      bool1 = bool2;
      if ((y & 0x8) == 0)
      {
        bool1 = bool2;
        if (B.isVisible()) {
          bool1 = true;
        }
      }
      return bool1;
    }
    if ((y & 0x8) == 0) {
      bool1 = true;
    }
    return bool1;
  }
  
  public boolean requestsActionButton()
  {
    return (z & 0x1) == 1;
  }
  
  public boolean requiresActionButton()
  {
    return (z & 0x2) == 2;
  }
  
  public MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public SupportMenuItem setActionView(int paramInt)
  {
    Context localContext = a.getContext();
    setActionView(LayoutInflater.from(localContext).inflate(paramInt, new LinearLayout(localContext), false));
    return this;
  }
  
  public SupportMenuItem setActionView(View paramView)
  {
    A = paramView;
    B = null;
    if ((paramView != null) && (paramView.getId() == -1) && (b > 0)) {
      paramView.setId(b);
    }
    a.b(this);
    return this;
  }
  
  public void setActionViewExpanded(boolean paramBoolean)
  {
    D = paramBoolean;
    a.onItemsChanged(false);
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (k == paramChar) {
      return this;
    }
    k = Character.toLowerCase(paramChar);
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    if ((k == paramChar) && (l == paramInt)) {
      return this;
    }
    k = Character.toLowerCase(paramChar);
    l = KeyEvent.normalizeMetaState(paramInt);
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setCallback(Runnable paramRunnable)
  {
    p = paramRunnable;
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int i1 = y;
    y = (paramBoolean | y & 0xFFFFFFFE);
    if (i1 != y) {
      a.onItemsChanged(false);
    }
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    if ((y & 0x4) != 0)
    {
      a.a(this);
      return this;
    }
    a(paramBoolean);
    return this;
  }
  
  public SupportMenuItem setContentDescription(CharSequence paramCharSequence)
  {
    r = paramCharSequence;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {
      y |= 0x10;
    } else {
      y &= 0xFFFFFFEF;
    }
    a.onItemsChanged(false);
    return this;
  }
  
  public void setExclusiveCheckable(boolean paramBoolean)
  {
    int i2 = y;
    int i1;
    if (paramBoolean) {
      i1 = 4;
    } else {
      i1 = 0;
    }
    y = (i1 | i2 & 0xFFFFFFFB);
  }
  
  public MenuItem setIcon(int paramInt)
  {
    m = null;
    n = paramInt;
    x = true;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    n = 0;
    m = paramDrawable;
    x = true;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIconTintList(@Nullable ColorStateList paramColorStateList)
  {
    t = paramColorStateList;
    v = true;
    x = true;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    u = paramMode;
    w = true;
    x = true;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    h = paramIntent;
    return this;
  }
  
  public void setIsActionButton(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      y |= 0x20;
      return;
    }
    y &= 0xFFFFFFDF;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    if (i == paramChar) {
      return this;
    }
    i = paramChar;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    if ((i == paramChar) && (j == paramInt)) {
      return this;
    }
    i = paramChar;
    j = KeyEvent.normalizeMetaState(paramInt);
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    C = paramOnActionExpandListener;
    return this;
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    q = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    i = paramChar1;
    k = Character.toLowerCase(paramChar2);
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    i = paramChar1;
    j = KeyEvent.normalizeMetaState(paramInt1);
    k = Character.toLowerCase(paramChar2);
    l = KeyEvent.normalizeMetaState(paramInt2);
    a.onItemsChanged(false);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    z = paramInt;
    a.b(this);
  }
  
  public SupportMenuItem setShowAsActionFlags(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  public void setSubMenu(SubMenuBuilder paramSubMenuBuilder)
  {
    o = paramSubMenuBuilder;
    paramSubMenuBuilder.setHeaderTitle(getTitle());
  }
  
  public SupportMenuItem setSupportActionProvider(android.support.v4.view.ActionProvider paramActionProvider)
  {
    if (B != null) {
      B.reset();
    }
    A = null;
    B = paramActionProvider;
    a.onItemsChanged(true);
    if (B != null) {
      B.setVisibilityListener(new ActionProvider.VisibilityListener()
      {
        public void onActionProviderVisibilityChanged(boolean paramAnonymousBoolean)
        {
          a.a(MenuItemImpl.this);
        }
      });
    }
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    return setTitle(a.getContext().getString(paramInt));
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    a.onItemsChanged(false);
    if (o != null) {
      o.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    if (paramCharSequence == null) {
      paramCharSequence = f;
    }
    a.onItemsChanged(false);
    return this;
  }
  
  public SupportMenuItem setTooltipText(CharSequence paramCharSequence)
  {
    s = paramCharSequence;
    a.onItemsChanged(false);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (b(paramBoolean)) {
      a.a(this);
    }
    return this;
  }
  
  public boolean shouldShowIcon()
  {
    return a.b();
  }
  
  public boolean showsTextAsAction()
  {
    return (z & 0x4) == 4;
  }
  
  public String toString()
  {
    if (f != null) {
      return f.toString();
    }
    return null;
  }
}
