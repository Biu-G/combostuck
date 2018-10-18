package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class MenuItemWrapperICS
  extends a<SupportMenuItem>
  implements MenuItem
{
  private Method c;
  
  MenuItemWrapperICS(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }
  
  a a(android.view.ActionProvider paramActionProvider)
  {
    return new a(a, paramActionProvider);
  }
  
  public boolean collapseActionView()
  {
    return ((SupportMenuItem)b).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((SupportMenuItem)b).expandActionView();
  }
  
  public android.view.ActionProvider getActionProvider()
  {
    android.support.v4.view.ActionProvider localActionProvider = ((SupportMenuItem)b).getSupportActionProvider();
    if ((localActionProvider instanceof a)) {
      return a;
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView = ((SupportMenuItem)b).getActionView();
    if ((localView instanceof b)) {
      return ((b)localView).a();
    }
    return localView;
  }
  
  public int getAlphabeticModifiers()
  {
    return ((SupportMenuItem)b).getAlphabeticModifiers();
  }
  
  public char getAlphabeticShortcut()
  {
    return ((SupportMenuItem)b).getAlphabeticShortcut();
  }
  
  public CharSequence getContentDescription()
  {
    return ((SupportMenuItem)b).getContentDescription();
  }
  
  public int getGroupId()
  {
    return ((SupportMenuItem)b).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((SupportMenuItem)b).getIcon();
  }
  
  public ColorStateList getIconTintList()
  {
    return ((SupportMenuItem)b).getIconTintList();
  }
  
  public PorterDuff.Mode getIconTintMode()
  {
    return ((SupportMenuItem)b).getIconTintMode();
  }
  
  public Intent getIntent()
  {
    return ((SupportMenuItem)b).getIntent();
  }
  
  public int getItemId()
  {
    return ((SupportMenuItem)b).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((SupportMenuItem)b).getMenuInfo();
  }
  
  public int getNumericModifiers()
  {
    return ((SupportMenuItem)b).getNumericModifiers();
  }
  
  public char getNumericShortcut()
  {
    return ((SupportMenuItem)b).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((SupportMenuItem)b).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((SupportMenuItem)b).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((SupportMenuItem)b).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((SupportMenuItem)b).getTitleCondensed();
  }
  
  public CharSequence getTooltipText()
  {
    return ((SupportMenuItem)b).getTooltipText();
  }
  
  public boolean hasSubMenu()
  {
    return ((SupportMenuItem)b).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((SupportMenuItem)b).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((SupportMenuItem)b).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((SupportMenuItem)b).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((SupportMenuItem)b).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((SupportMenuItem)b).isVisible();
  }
  
  public MenuItem setActionProvider(android.view.ActionProvider paramActionProvider)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramActionProvider != null) {
      paramActionProvider = a(paramActionProvider);
    } else {
      paramActionProvider = null;
    }
    localSupportMenuItem.setSupportActionProvider(paramActionProvider);
    return this;
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((SupportMenuItem)b).setActionView(paramInt);
    View localView = ((SupportMenuItem)b).getActionView();
    if ((localView instanceof android.view.CollapsibleActionView)) {
      ((SupportMenuItem)b).setActionView(new b(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof android.view.CollapsibleActionView)) {
      localObject = new b(paramView);
    }
    ((SupportMenuItem)b).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((SupportMenuItem)b).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar, int paramInt)
  {
    ((SupportMenuItem)b).setAlphabeticShortcut(paramChar, paramInt);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setContentDescription(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setContentDescription(paramCharSequence);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((SupportMenuItem)b).setEnabled(paramBoolean);
    return this;
  }
  
  public void setExclusiveCheckable(boolean paramBoolean)
  {
    try
    {
      if (c == null) {
        c = ((SupportMenuItem)b).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
      }
      c.invoke(b, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
    }
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((SupportMenuItem)b).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((SupportMenuItem)b).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIconTintList(ColorStateList paramColorStateList)
  {
    ((SupportMenuItem)b).setIconTintList(paramColorStateList);
    return this;
  }
  
  public MenuItem setIconTintMode(PorterDuff.Mode paramMode)
  {
    ((SupportMenuItem)b).setIconTintMode(paramMode);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((SupportMenuItem)b).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((SupportMenuItem)b).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar, int paramInt)
  {
    ((SupportMenuItem)b).setNumericShortcut(paramChar, paramInt);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramOnActionExpandListener != null) {
      paramOnActionExpandListener = new c(paramOnActionExpandListener);
    } else {
      paramOnActionExpandListener = null;
    }
    localSupportMenuItem.setOnActionExpandListener(paramOnActionExpandListener);
    return this;
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    SupportMenuItem localSupportMenuItem = (SupportMenuItem)b;
    if (paramOnMenuItemClickListener != null) {
      paramOnMenuItemClickListener = new d(paramOnMenuItemClickListener);
    } else {
      paramOnMenuItemClickListener = null;
    }
    localSupportMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((SupportMenuItem)b).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2, int paramInt1, int paramInt2)
  {
    ((SupportMenuItem)b).setShortcut(paramChar1, paramChar2, paramInt1, paramInt2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((SupportMenuItem)b).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((SupportMenuItem)b).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((SupportMenuItem)b).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setTooltipText(CharSequence paramCharSequence)
  {
    ((SupportMenuItem)b).setTooltipText(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    return ((SupportMenuItem)b).setVisible(paramBoolean);
  }
  
  class a
    extends android.support.v4.view.ActionProvider
  {
    final android.view.ActionProvider a;
    
    public a(Context paramContext, android.view.ActionProvider paramActionProvider)
    {
      super();
      a = paramActionProvider;
    }
    
    public boolean hasSubMenu()
    {
      return a.hasSubMenu();
    }
    
    public View onCreateActionView()
    {
      return a.onCreateActionView();
    }
    
    public boolean onPerformDefaultAction()
    {
      return a.onPerformDefaultAction();
    }
    
    public void onPrepareSubMenu(SubMenu paramSubMenu)
    {
      a.onPrepareSubMenu(a(paramSubMenu));
    }
  }
  
  static class b
    extends FrameLayout
    implements android.support.v7.view.CollapsibleActionView
  {
    final android.view.CollapsibleActionView a;
    
    b(View paramView)
    {
      super();
      a = ((android.view.CollapsibleActionView)paramView);
      addView(paramView);
    }
    
    View a()
    {
      return (View)a;
    }
    
    public void onActionViewCollapsed()
    {
      a.onActionViewCollapsed();
    }
    
    public void onActionViewExpanded()
    {
      a.onActionViewExpanded();
    }
  }
  
  private class c
    extends b<MenuItem.OnActionExpandListener>
    implements MenuItem.OnActionExpandListener
  {
    c(MenuItem.OnActionExpandListener paramOnActionExpandListener)
    {
      super();
    }
    
    public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)b).onMenuItemActionCollapse(a(paramMenuItem));
    }
    
    public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnActionExpandListener)b).onMenuItemActionExpand(a(paramMenuItem));
    }
  }
  
  private class d
    extends b<MenuItem.OnMenuItemClickListener>
    implements MenuItem.OnMenuItemClickListener
  {
    d(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
    {
      super();
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      return ((MenuItem.OnMenuItemClickListener)b).onMenuItemClick(a(paramMenuItem));
    }
  }
}
