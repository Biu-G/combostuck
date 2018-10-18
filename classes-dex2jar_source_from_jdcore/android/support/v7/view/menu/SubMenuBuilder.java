package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class SubMenuBuilder
  extends MenuBuilder
  implements SubMenu
{
  private MenuBuilder d;
  private MenuItemImpl e;
  
  public SubMenuBuilder(Context paramContext, MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    super(paramContext);
    d = paramMenuBuilder;
    e = paramMenuItemImpl;
  }
  
  boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (super.a(paramMenuBuilder, paramMenuItem)) || (d.a(paramMenuBuilder, paramMenuItem));
  }
  
  public boolean collapseItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    return d.collapseItemActionView(paramMenuItemImpl);
  }
  
  public boolean expandItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    return d.expandItemActionView(paramMenuItemImpl);
  }
  
  public String getActionViewStatesKey()
  {
    int i;
    if (e != null) {
      i = e.getItemId();
    } else {
      i = 0;
    }
    if (i == 0) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.getActionViewStatesKey());
    localStringBuilder.append(":");
    localStringBuilder.append(i);
    return localStringBuilder.toString();
  }
  
  public MenuItem getItem()
  {
    return e;
  }
  
  public Menu getParentMenu()
  {
    return d;
  }
  
  public MenuBuilder getRootMenu()
  {
    return d.getRootMenu();
  }
  
  public boolean isGroupDividerEnabled()
  {
    return d.isGroupDividerEnabled();
  }
  
  public boolean isQwertyMode()
  {
    return d.isQwertyMode();
  }
  
  public boolean isShortcutsVisible()
  {
    return d.isShortcutsVisible();
  }
  
  public void setCallback(MenuBuilder.Callback paramCallback)
  {
    d.setCallback(paramCallback);
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    d.setGroupDividerEnabled(paramBoolean);
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    return (SubMenu)super.setHeaderIconInt(paramInt);
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    return (SubMenu)super.setHeaderIconInt(paramDrawable);
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    return (SubMenu)super.setHeaderTitleInt(paramInt);
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    return (SubMenu)super.setHeaderTitleInt(paramCharSequence);
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    return (SubMenu)super.setHeaderViewInt(paramView);
  }
  
  public SubMenu setIcon(int paramInt)
  {
    e.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    e.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    d.setQwertyMode(paramBoolean);
  }
  
  public void setShortcutsVisible(boolean paramBoolean)
  {
    d.setShortcutsVisible(paramBoolean);
  }
}
