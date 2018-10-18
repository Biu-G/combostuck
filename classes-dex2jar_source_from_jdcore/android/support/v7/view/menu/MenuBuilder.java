package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class MenuBuilder
  implements SupportMenu
{
  private static final int[] d = { 1, 4, 5, 3, 2, 0 };
  private boolean A;
  CharSequence a;
  Drawable b;
  View c;
  private final Context e;
  private final Resources f;
  private boolean g;
  private boolean h;
  private Callback i;
  private ArrayList<MenuItemImpl> j;
  private ArrayList<MenuItemImpl> k;
  private boolean l;
  private ArrayList<MenuItemImpl> m;
  private ArrayList<MenuItemImpl> n;
  private boolean o;
  private int p = 0;
  private ContextMenu.ContextMenuInfo q;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private ArrayList<MenuItemImpl> w = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<MenuPresenter>> x = new CopyOnWriteArrayList();
  private MenuItemImpl y;
  private boolean z = false;
  
  public MenuBuilder(Context paramContext)
  {
    e = paramContext;
    f = paramContext.getResources();
    j = new ArrayList();
    k = new ArrayList();
    l = true;
    m = new ArrayList();
    n = new ArrayList();
    o = true;
    b(true);
  }
  
  private static int a(int paramInt)
  {
    int i1 = (0xFFFF0000 & paramInt) >> 16;
    if ((i1 >= 0) && (i1 < d.length)) {
      return paramInt & 0xFFFF | d[i1] << 16;
    }
    throw new IllegalArgumentException("order does not contain a valid category.");
  }
  
  private static int a(ArrayList<MenuItemImpl> paramArrayList, int paramInt)
  {
    int i1 = paramArrayList.size() - 1;
    while (i1 >= 0)
    {
      if (((MenuItemImpl)paramArrayList.get(i1)).getOrdering() <= paramInt) {
        return i1 + 1;
      }
      i1 -= 1;
    }
    return 0;
  }
  
  private MenuItemImpl a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    return new MenuItemImpl(this, paramInt1, paramInt2, paramInt3, paramInt4, paramCharSequence, paramInt5);
  }
  
  private void a(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = a();
    if (paramView != null)
    {
      c = paramView;
      a = null;
      b = null;
    }
    else
    {
      if (paramInt1 > 0) {
        a = localResources.getText(paramInt1);
      } else if (paramCharSequence != null) {
        a = paramCharSequence;
      }
      if (paramInt2 > 0) {
        b = ContextCompat.getDrawable(getContext(), paramInt2);
      } else if (paramDrawable != null) {
        b = paramDrawable;
      }
      c = null;
    }
    onItemsChanged(false);
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= 0)
    {
      if (paramInt >= j.size()) {
        return;
      }
      j.remove(paramInt);
      if (paramBoolean) {
        onItemsChanged(true);
      }
      return;
    }
  }
  
  private void a(Bundle paramBundle)
  {
    if (x.isEmpty()) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = x.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)((WeakReference)localObject).get();
      if (localMenuPresenter == null)
      {
        x.remove(localObject);
      }
      else
      {
        int i1 = localMenuPresenter.getId();
        if (i1 > 0)
        {
          localObject = localMenuPresenter.onSaveInstanceState();
          if (localObject != null) {
            localSparseArray.put(i1, localObject);
          }
        }
      }
    }
    paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
  }
  
  private void a(boolean paramBoolean)
  {
    if (x.isEmpty()) {
      return;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = x.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        x.remove(localWeakReference);
      } else {
        localMenuPresenter.updateMenuView(paramBoolean);
      }
    }
    startDispatchingItemsChanged();
  }
  
  private boolean a(SubMenuBuilder paramSubMenuBuilder, MenuPresenter paramMenuPresenter)
  {
    boolean bool2 = x.isEmpty();
    boolean bool1 = false;
    if (bool2) {
      return false;
    }
    if (paramMenuPresenter != null) {
      bool1 = paramMenuPresenter.onSubMenuSelected(paramSubMenuBuilder);
    }
    paramMenuPresenter = x.iterator();
    while (paramMenuPresenter.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)paramMenuPresenter.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        x.remove(localWeakReference);
      } else if (!bool1) {
        bool1 = localMenuPresenter.onSubMenuSelected(paramSubMenuBuilder);
      }
    }
    return bool1;
  }
  
  private void b(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if (paramBundle != null)
    {
      if (x.isEmpty()) {
        return;
      }
      Iterator localIterator = x.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (WeakReference)localIterator.next();
        MenuPresenter localMenuPresenter = (MenuPresenter)((WeakReference)localObject).get();
        if (localMenuPresenter == null)
        {
          x.remove(localObject);
        }
        else
        {
          int i1 = localMenuPresenter.getId();
          if (i1 > 0)
          {
            localObject = (Parcelable)paramBundle.get(i1);
            if (localObject != null) {
              localMenuPresenter.onRestoreInstanceState((Parcelable)localObject);
            }
          }
        }
      }
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (f.getConfiguration().keyboard != 1) && (ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(e), e))) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    }
    h = paramBoolean;
  }
  
  Resources a()
  {
    return f;
  }
  
  MenuItemImpl a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = w;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty()) {
      return null;
    }
    int i3 = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int i4 = localArrayList.size();
    if (i4 == 1) {
      return (MenuItemImpl)localArrayList.get(0);
    }
    boolean bool = isQwertyMode();
    int i1 = 0;
    while (i1 < i4)
    {
      paramKeyEvent = (MenuItemImpl)localArrayList.get(i1);
      int i2;
      if (bool) {
        i2 = paramKeyEvent.getAlphabeticShortcut();
      } else {
        i2 = paramKeyEvent.getNumericShortcut();
      }
      if (((i2 == meta[0]) && ((i3 & 0x2) == 0)) || ((i2 == meta[2]) && ((i3 & 0x2) != 0)) || ((bool) && (i2 == 8) && (paramInt == 67))) {
        return paramKeyEvent;
      }
      i1 += 1;
    }
    return null;
  }
  
  void a(MenuItemImpl paramMenuItemImpl)
  {
    l = true;
    onItemsChanged(true);
  }
  
  void a(MenuItem paramMenuItem)
  {
    int i2 = paramMenuItem.getGroupId();
    int i3 = j.size();
    stopDispatchingItemsChanged();
    int i1 = 0;
    while (i1 < i3)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if ((localMenuItemImpl.getGroupId() == i2) && (localMenuItemImpl.isExclusiveCheckable()) && (localMenuItemImpl.isCheckable()))
      {
        boolean bool;
        if (localMenuItemImpl == paramMenuItem) {
          bool = true;
        } else {
          bool = false;
        }
        localMenuItemImpl.a(bool);
      }
      i1 += 1;
    }
    startDispatchingItemsChanged();
  }
  
  void a(List<MenuItemImpl> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = isQwertyMode();
    int i4 = paramKeyEvent.getModifiers();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int i5 = j.size();
    int i1 = 0;
    while (i1 < i5)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.hasSubMenu()) {
        ((MenuBuilder)localMenuItemImpl.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      int i2;
      if (bool) {
        i2 = localMenuItemImpl.getAlphabeticShortcut();
      } else {
        i2 = localMenuItemImpl.getNumericShortcut();
      }
      int i3;
      if (bool) {
        i3 = localMenuItemImpl.getAlphabeticModifiers();
      } else {
        i3 = localMenuItemImpl.getNumericModifiers();
      }
      if ((i4 & 0x1100F) == (i3 & 0x1100F)) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      if ((i3 != 0) && (i2 != 0) && ((i2 == meta[0]) || (i2 == meta[2]) || ((bool) && (i2 == 8) && (paramInt == 67))) && (localMenuItemImpl.isEnabled())) {
        paramList.add(localMenuItemImpl);
      }
      i1 += 1;
    }
  }
  
  boolean a(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (i != null) && (i.onMenuItemSelected(paramMenuBuilder, paramMenuItem));
  }
  
  public MenuItem add(int paramInt)
  {
    return addInternal(0, 0, 0, f.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return addInternal(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = e.getPackageManager();
    int i3 = 0;
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i1;
    if (localList != null) {
      i1 = localList.size();
    } else {
      i1 = 0;
    }
    int i2 = i3;
    if ((paramInt4 & 0x1) == 0)
    {
      removeGroup(paramInt1);
      i2 = i3;
    }
    while (i2 < i1)
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localList.get(i2);
      if (specificIndex < 0) {
        paramComponentName = paramIntent;
      } else {
        paramComponentName = paramArrayOfIntent[specificIndex];
      }
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (specificIndex >= 0)) {
        paramArrayOfMenuItem[specificIndex] = paramComponentName;
      }
      i2 += 1;
    }
    return i1;
  }
  
  protected MenuItem addInternal(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i1 = a(paramInt3);
    paramCharSequence = a(paramInt1, paramInt2, paramInt3, i1, paramCharSequence, p);
    if (q != null) {
      paramCharSequence.a(q);
    }
    j.add(a(j, i1), paramCharSequence);
    onItemsChanged(true);
    return paramCharSequence;
  }
  
  public void addMenuPresenter(MenuPresenter paramMenuPresenter)
  {
    addMenuPresenter(paramMenuPresenter, e);
  }
  
  public void addMenuPresenter(MenuPresenter paramMenuPresenter, Context paramContext)
  {
    x.add(new WeakReference(paramMenuPresenter));
    paramMenuPresenter.initForMenu(paramContext, this);
    o = true;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, f.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, f.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (MenuItemImpl)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    SubMenuBuilder localSubMenuBuilder = new SubMenuBuilder(e, this, paramCharSequence);
    paramCharSequence.setSubMenu(localSubMenuBuilder);
    return localSubMenuBuilder;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  void b(MenuItemImpl paramMenuItemImpl)
  {
    o = true;
    onItemsChanged(true);
  }
  
  boolean b()
  {
    return u;
  }
  
  public void changeMenuMode()
  {
    if (i != null) {
      i.onMenuModeChange(this);
    }
  }
  
  public void clear()
  {
    if (y != null) {
      collapseItemActionView(y);
    }
    j.clear();
    onItemsChanged(true);
  }
  
  public void clearAll()
  {
    r = true;
    clear();
    clearHeader();
    x.clear();
    r = false;
    s = false;
    t = false;
    onItemsChanged(true);
  }
  
  public void clearHeader()
  {
    b = null;
    a = null;
    c = null;
    onItemsChanged(false);
  }
  
  public void close()
  {
    close(true);
  }
  
  public final void close(boolean paramBoolean)
  {
    if (v) {
      return;
    }
    v = true;
    Iterator localIterator = x.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        x.remove(localWeakReference);
      } else {
        localMenuPresenter.onCloseMenu(this, paramBoolean);
      }
    }
    v = false;
  }
  
  public boolean collapseItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool2 = x.isEmpty();
    boolean bool1 = false;
    if (!bool2)
    {
      if (y != paramMenuItemImpl) {
        return false;
      }
      stopDispatchingItemsChanged();
      Iterator localIterator = x.iterator();
      do
      {
        MenuPresenter localMenuPresenter;
        for (;;)
        {
          bool2 = bool1;
          if (!localIterator.hasNext()) {
            break label105;
          }
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          localMenuPresenter = (MenuPresenter)localWeakReference.get();
          if (localMenuPresenter != null) {
            break;
          }
          x.remove(localWeakReference);
        }
        bool2 = localMenuPresenter.collapseItemActionView(this, paramMenuItemImpl);
        bool1 = bool2;
      } while (!bool2);
      label105:
      startDispatchingItemsChanged();
      if (bool2) {
        y = null;
      }
      return bool2;
    }
    return false;
  }
  
  public boolean expandItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool2 = x.isEmpty();
    boolean bool1 = false;
    if (bool2) {
      return false;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = x.iterator();
    do
    {
      MenuPresenter localMenuPresenter;
      for (;;)
      {
        bool2 = bool1;
        if (!localIterator.hasNext()) {
          break label97;
        }
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        localMenuPresenter = (MenuPresenter)localWeakReference.get();
        if (localMenuPresenter != null) {
          break;
        }
        x.remove(localWeakReference);
      }
      bool2 = localMenuPresenter.expandItemActionView(this, paramMenuItemImpl);
      bool1 = bool2;
    } while (!bool2);
    label97:
    startDispatchingItemsChanged();
    if (bool2) {
      y = paramMenuItemImpl;
    }
    return bool2;
  }
  
  public int findGroupIndex(int paramInt)
  {
    return findGroupIndex(paramInt, 0);
  }
  
  public int findGroupIndex(int paramInt1, int paramInt2)
  {
    int i2 = size();
    int i1 = paramInt2;
    if (paramInt2 < 0) {
      i1 = 0;
    }
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).getGroupId() == paramInt1) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public MenuItem findItem(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = (MenuItemImpl)j.get(i1);
      if (((MenuItemImpl)localObject).getItemId() == paramInt) {
        return localObject;
      }
      if (((MenuItemImpl)localObject).hasSubMenu())
      {
        localObject = ((MenuItemImpl)localObject).getSubMenu().findItem(paramInt);
        if (localObject != null) {
          return localObject;
        }
      }
      i1 += 1;
    }
    return null;
  }
  
  public int findItemIndex(int paramInt)
  {
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).getItemId() == paramInt) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public void flagActionItems()
  {
    ArrayList localArrayList = getVisibleItems();
    if (!o) {
      return;
    }
    Object localObject = x.iterator();
    int i1 = 0;
    while (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        x.remove(localWeakReference);
      } else {
        i1 |= localMenuPresenter.flagActionItems();
      }
    }
    if (i1 != 0)
    {
      m.clear();
      n.clear();
      int i3 = localArrayList.size();
      i1 = 0;
      while (i1 < i3)
      {
        localObject = (MenuItemImpl)localArrayList.get(i1);
        if (((MenuItemImpl)localObject).isActionButton()) {
          m.add(localObject);
        } else {
          n.add(localObject);
        }
        int i2;
        i1 += 1;
      }
    }
    m.clear();
    n.clear();
    n.addAll(getVisibleItems());
    o = false;
  }
  
  public ArrayList<MenuItemImpl> getActionItems()
  {
    flagActionItems();
    return m;
  }
  
  protected String getActionViewStatesKey()
  {
    return "android:menu:actionviewstates";
  }
  
  public Context getContext()
  {
    return e;
  }
  
  public MenuItemImpl getExpandedItem()
  {
    return y;
  }
  
  public Drawable getHeaderIcon()
  {
    return b;
  }
  
  public CharSequence getHeaderTitle()
  {
    return a;
  }
  
  public View getHeaderView()
  {
    return c;
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)j.get(paramInt);
  }
  
  public ArrayList<MenuItemImpl> getNonActionItems()
  {
    flagActionItems();
    return n;
  }
  
  public MenuBuilder getRootMenu()
  {
    return this;
  }
  
  @NonNull
  public ArrayList<MenuItemImpl> getVisibleItems()
  {
    if (!l) {
      return k;
    }
    k.clear();
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.isVisible()) {
        k.add(localMenuItemImpl);
      }
      i1 += 1;
    }
    l = false;
    o = true;
    return k;
  }
  
  public boolean hasVisibleItems()
  {
    if (A) {
      return true;
    }
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((MenuItemImpl)j.get(i1)).isVisible()) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public boolean isGroupDividerEnabled()
  {
    return z;
  }
  
  boolean isQwertyMode()
  {
    return g;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  public boolean isShortcutsVisible()
  {
    return h;
  }
  
  public void onItemsChanged(boolean paramBoolean)
  {
    if (!r)
    {
      if (paramBoolean)
      {
        l = true;
        o = true;
      }
      a(paramBoolean);
      return;
    }
    s = true;
    if (paramBoolean) {
      t = true;
    }
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return performItemAction(findItem(paramInt1), paramInt2);
  }
  
  public boolean performItemAction(MenuItem paramMenuItem, int paramInt)
  {
    return performItemAction(paramMenuItem, null, paramInt);
  }
  
  public boolean performItemAction(MenuItem paramMenuItem, MenuPresenter paramMenuPresenter, int paramInt)
  {
    Object localObject = (MenuItemImpl)paramMenuItem;
    if (localObject != null)
    {
      if (!((MenuItemImpl)localObject).isEnabled()) {
        return false;
      }
      boolean bool2 = ((MenuItemImpl)localObject).invoke();
      paramMenuItem = ((MenuItemImpl)localObject).getSupportActionProvider();
      int i1;
      if ((paramMenuItem != null) && (paramMenuItem.hasSubMenu())) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      boolean bool1;
      if (((MenuItemImpl)localObject).hasCollapsibleActionView())
      {
        bool2 |= ((MenuItemImpl)localObject).expandActionView();
        bool1 = bool2;
        if (bool2)
        {
          close(true);
          return bool2;
        }
      }
      else if ((!((MenuItemImpl)localObject).hasSubMenu()) && (i1 == 0))
      {
        bool1 = bool2;
        if ((paramInt & 0x1) == 0)
        {
          close(true);
          return bool2;
        }
      }
      else
      {
        if ((paramInt & 0x4) == 0) {
          close(false);
        }
        if (!((MenuItemImpl)localObject).hasSubMenu()) {
          ((MenuItemImpl)localObject).setSubMenu(new SubMenuBuilder(getContext(), this, (MenuItemImpl)localObject));
        }
        localObject = (SubMenuBuilder)((MenuItemImpl)localObject).getSubMenu();
        if (i1 != 0) {
          paramMenuItem.onPrepareSubMenu((SubMenu)localObject);
        }
        bool2 |= a((SubMenuBuilder)localObject, paramMenuPresenter);
        bool1 = bool2;
        if (!bool2)
        {
          close(true);
          bool1 = bool2;
        }
      }
      return bool1;
    }
    return false;
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool;
    if (paramKeyEvent != null) {
      bool = performItemAction(paramKeyEvent, paramInt2);
    } else {
      bool = false;
    }
    if ((paramInt2 & 0x2) != 0) {
      close(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int i2 = findGroupIndex(paramInt);
    if (i2 >= 0)
    {
      int i3 = j.size();
      int i1 = 0;
      while ((i1 < i3 - i2) && (((MenuItemImpl)j.get(i2)).getGroupId() == paramInt))
      {
        a(i2, false);
        i1 += 1;
      }
      onItemsChanged(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    a(findItemIndex(paramInt), true);
  }
  
  public void removeItemAt(int paramInt)
  {
    a(paramInt, true);
  }
  
  public void removeMenuPresenter(MenuPresenter paramMenuPresenter)
  {
    Iterator localIterator = x.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if ((localMenuPresenter == null) || (localMenuPresenter == paramMenuPresenter)) {
        x.remove(localWeakReference);
      }
    }
  }
  
  public void restoreActionViewStates(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    SparseArray localSparseArray = paramBundle.getSparseParcelableArray(getActionViewStatesKey());
    int i2 = size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = localMenuItem.getActionView();
      if ((localView != null) && (localView.getId() != -1)) {
        localView.restoreHierarchyState(localSparseArray);
      }
      if (localMenuItem.hasSubMenu()) {
        ((SubMenuBuilder)localMenuItem.getSubMenu()).restoreActionViewStates(paramBundle);
      }
      i1 += 1;
    }
    i1 = paramBundle.getInt("android:menu:expandedactionview");
    if (i1 > 0)
    {
      paramBundle = findItem(i1);
      if (paramBundle != null) {
        paramBundle.expandActionView();
      }
    }
  }
  
  public void restorePresenterStates(Bundle paramBundle)
  {
    b(paramBundle);
  }
  
  public void saveActionViewStates(Bundle paramBundle)
  {
    int i2 = size();
    Object localObject1 = null;
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItem localMenuItem = getItem(i1);
      View localView = localMenuItem.getActionView();
      Object localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (localMenuItem.isActionViewExpanded())
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((SubMenuBuilder)localMenuItem.getSubMenu()).saveActionViewStates(paramBundle);
      }
      i1 += 1;
      localObject1 = localObject3;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(getActionViewStatesKey(), localObject1);
    }
  }
  
  public void savePresenterStates(Bundle paramBundle)
  {
    a(paramBundle);
  }
  
  public void setCallback(Callback paramCallback)
  {
    i = paramCallback;
  }
  
  public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    q = paramContextMenuInfo;
  }
  
  public MenuBuilder setDefaultShowAsAction(int paramInt)
  {
    p = paramInt;
    return this;
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.getGroupId() == paramInt)
      {
        localMenuItemImpl.setExclusiveCheckable(paramBoolean2);
        localMenuItemImpl.setCheckable(paramBoolean1);
      }
      i1 += 1;
    }
  }
  
  public void setGroupDividerEnabled(boolean paramBoolean)
  {
    z = paramBoolean;
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i2 = j.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      if (localMenuItemImpl.getGroupId() == paramInt) {
        localMenuItemImpl.setEnabled(paramBoolean);
      }
      i1 += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i4 = j.size();
    int i1 = 0;
    int i3;
    for (int i2 = 0; i1 < i4; i2 = i3)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)j.get(i1);
      i3 = i2;
      if (localMenuItemImpl.getGroupId() == paramInt)
      {
        i3 = i2;
        if (localMenuItemImpl.b(paramBoolean)) {
          i3 = 1;
        }
      }
      i1 += 1;
    }
    if (i2 != 0) {
      onItemsChanged(true);
    }
  }
  
  protected MenuBuilder setHeaderIconInt(int paramInt)
  {
    a(0, null, paramInt, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderIconInt(Drawable paramDrawable)
  {
    a(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected MenuBuilder setHeaderTitleInt(int paramInt)
  {
    a(paramInt, null, 0, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderTitleInt(CharSequence paramCharSequence)
  {
    a(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderViewInt(View paramView)
  {
    a(0, null, 0, null, paramView);
    return this;
  }
  
  public void setOptionalIconsVisible(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setOverrideVisibleItems(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    g = paramBoolean;
    onItemsChanged(false);
  }
  
  public void setShortcutsVisible(boolean paramBoolean)
  {
    if (h == paramBoolean) {
      return;
    }
    b(paramBoolean);
    onItemsChanged(false);
  }
  
  public int size()
  {
    return j.size();
  }
  
  public void startDispatchingItemsChanged()
  {
    r = false;
    if (s)
    {
      s = false;
      onItemsChanged(t);
    }
  }
  
  public void stopDispatchingItemsChanged()
  {
    if (!r)
    {
      r = true;
      s = false;
      t = false;
    }
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static abstract interface Callback
  {
    public abstract boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem);
    
    public abstract void onMenuModeChange(MenuBuilder paramMenuBuilder);
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static abstract interface ItemInvoker
  {
    public abstract boolean invokeItem(MenuItemImpl paramMenuItemImpl);
  }
}
