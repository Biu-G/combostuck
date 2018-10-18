package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ActionMenuItem
  implements SupportMenuItem
{
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private CharSequence e;
  private CharSequence f;
  private Intent g;
  private char h;
  private int i = 4096;
  private char j;
  private int k = 4096;
  private Drawable l;
  private int m = 0;
  private Context n;
  private MenuItem.OnMenuItemClickListener o;
  private CharSequence p;
  private CharSequence q;
  private ColorStateList r = null;
  private PorterDuff.Mode s = null;
  private boolean t = false;
  private boolean u = false;
  private int v = 16;
  
  public ActionMenuItem(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence)
  {
    n = paramContext;
    a = paramInt2;
    b = paramInt1;
    c = paramInt3;
    d = paramInt4;
    e = paramCharSequence;
  }
  
  private void a()
  {
    if ((l != null) && ((t) || (u)))
    {
      l = DrawableCompat.wrap(l);
      l = l.mutate();
      if (t) {
        DrawableCompat.setTintList(l, r);
      }
      if (u) {
        DrawableCompat.setTintMode(l, s);
      }
    }
  }
  
  public boolean collapseActionView()
  {
    return false;
  }
  
  public boolean expandActionView()
  {
    return false;
  }
  
  public android.view.ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }
  
  public View getActionView()
  {
    return null;
  }
  
  public int getAlphabeticModifiers()
  {
    return k;
  }
  
  public char getAlphabeticShortcut()
  {
    return j;
  }
  
  public CharSequence getContentDescription()
  {
    return p;
  }
  
  public int getGroupId()
  {
    return b;
  }
  
  public Drawable getIcon()
  {
    return l;
  }
  
  public ColorStateList getIconTintList()
  {
    return r;
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return s;
  }
  
  public Intent getIntent()
  {
    return g;
  }
  
  public int getItemId()
  {
    return a;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }
  
  public int getNumericModifiers()
  {
    return i;
  }
  
  public char getNumericShortcut()
  {
    return h;
  }
  
  public int getOrder()
  {
    return d;
  }
  
  public SubMenu getSubMenu()
  {
    return null;
  }
  
  public android.support.v4.view.ActionProvider getSupportActionProvider()
  {
    return null;
  }
  
  public CharSequence getTitle()
  {
    return e;
  }
  
  public CharSequence getTitleCondensed()
  {
    if (f != null) {
      return f;
    }
    return e;
  }
  
  public CharSequence getTooltipText()
  {
    return q;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean invoke()
  {
    if ((o != null) && (o.onMenuItemClick(this))) {
      return true;
    }
    if (g != null)
    {
      n.startActivity(g);
      return true;
    }
    return false;
  }
  
  public boolean isActionViewExpanded()
  {
    return false;
  }
  
  public boolean isCheckable()
  {
    return (v & 0x1) != 0;
  }
  
  public boolean isChecked()
  {
    return (v & 0x2) != 0;
  }
  
  public boolean isEnabled()
  {
    return (v & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    return (v & 0x8) == 0;
  }
  
  public MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }
  
  public SupportMenuItem setActionView(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public SupportMenuItem setActionView(View paramView)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    j = Character.toLowerCase(paramChar);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    j = Character.toLowerCase(paramChar);
    k = KeyEvent.normalizeMetaState(paramInt);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    v = (paramBoolean | v & 0xFFFFFFFE);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    int i2 = v;
    int i1;
    if (paramBoolean) {
      i1 = 2;
    } else {
      i1 = 0;
    }
    v = (i1 | i2 & 0xFFFFFFFD);
    return this;
  }
  
  public SupportMenuItem setContentDescription(CharSequence paramCharSequence)
  {
    p = paramCharSequence;
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    int i2 = v;
    int i1;
    if (paramBoolean) {
      i1 = 16;
    } else {
      i1 = 0;
    }
    v = (i1 | i2 & 0xFFFFFFEF);
    return this;
  }
  
  public ActionMenuItem setExclusiveCheckable(boolean paramBoolean)
  {
    int i2 = v;
    int i1;
    if (paramBoolean) {
      i1 = 4;
    } else {
      i1 = 0;
    }
    v = (i1 | i2 & 0xFFFFFFFB);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    m = paramInt;
    l = ContextCompat.getDrawable(n, paramInt);
    a();
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    l = paramDrawable;
    m = 0;
    a();
    return this;
  }
  
  public MenuItem setIconTintList(@Nullable ColorStateList paramColorStateList)
  {
    r = paramColorStateList;
    t = true;
    a();
    return this;
  }
  
  public MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    s = paramMode;
    u = true;
    a();
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    g = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    h = paramChar;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    h = paramChar;
    i = KeyEvent.normalizeMetaState(paramInt);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    o = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    h = paramChar1;
    j = Character.toLowerCase(paramChar2);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    h = paramChar1;
    i = KeyEvent.normalizeMetaState(paramInt1);
    j = Character.toLowerCase(paramChar2);
    k = KeyEvent.normalizeMetaState(paramInt2);
    return this;
  }
  
  public void setShowAsAction(int paramInt) {}
  
  public SupportMenuItem setShowAsActionFlags(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  public SupportMenuItem setSupportActionProvider(android.support.v4.view.ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setTitle(int paramInt)
  {
    e = n.getResources().getString(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    return this;
  }
  
  public SupportMenuItem setTooltipText(CharSequence paramCharSequence)
  {
    q = paramCharSequence;
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    int i2 = v;
    int i1 = 8;
    if (paramBoolean) {
      i1 = 0;
    }
    v = (i2 & 0x8 | i1);
    return this;
  }
}
