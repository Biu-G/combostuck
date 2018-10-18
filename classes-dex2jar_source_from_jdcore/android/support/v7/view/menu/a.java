package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.internal.view.SupportSubMenu;
import android.support.v4.util.ArrayMap;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class a<T>
  extends b<T>
{
  final Context a;
  private Map<SupportMenuItem, MenuItem> c;
  private Map<SupportSubMenu, SubMenu> d;
  
  a(Context paramContext, T paramT)
  {
    super(paramT);
    a = paramContext;
  }
  
  final MenuItem a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem))
    {
      SupportMenuItem localSupportMenuItem = (SupportMenuItem)paramMenuItem;
      if (c == null) {
        c = new ArrayMap();
      }
      MenuItem localMenuItem = (MenuItem)c.get(paramMenuItem);
      paramMenuItem = localMenuItem;
      if (localMenuItem == null)
      {
        paramMenuItem = MenuWrapperFactory.wrapSupportMenuItem(a, localSupportMenuItem);
        c.put(localSupportMenuItem, paramMenuItem);
      }
      return paramMenuItem;
    }
    return paramMenuItem;
  }
  
  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof SupportSubMenu))
    {
      SupportSubMenu localSupportSubMenu = (SupportSubMenu)paramSubMenu;
      if (d == null) {
        d = new ArrayMap();
      }
      SubMenu localSubMenu = (SubMenu)d.get(localSupportSubMenu);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = MenuWrapperFactory.wrapSupportSubMenu(a, localSupportSubMenu);
        d.put(localSupportSubMenu, paramSubMenu);
      }
      return paramSubMenu;
    }
    return paramSubMenu;
  }
  
  final void a()
  {
    if (c != null) {
      c.clear();
    }
    if (d != null) {
      d.clear();
    }
  }
  
  final void a(int paramInt)
  {
    if (c == null) {
      return;
    }
    Iterator localIterator = c.keySet().iterator();
    while (localIterator.hasNext()) {
      if (paramInt == ((MenuItem)localIterator.next()).getGroupId()) {
        localIterator.remove();
      }
    }
  }
  
  final void b(int paramInt)
  {
    if (c == null) {
      return;
    }
    Iterator localIterator = c.keySet().iterator();
    while (localIterator.hasNext()) {
      if (paramInt == ((MenuItem)localIterator.next()).getItemId()) {
        localIterator.remove();
      }
    }
  }
}
