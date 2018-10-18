package android.support.v7.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.WindowCallbackWrapper;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.Toolbar.OnMenuItemClickListener;
import android.support.v7.widget.ToolbarWidgetWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window.Callback;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;

class d
  extends ActionBar
{
  DecorToolbar a;
  boolean b;
  Window.Callback c;
  private boolean d;
  private boolean e;
  private ArrayList<ActionBar.OnMenuVisibilityListener> f = new ArrayList();
  private final Runnable g = new Runnable()
  {
    public void run()
    {
      c();
    }
  };
  private final Toolbar.OnMenuItemClickListener h = new Toolbar.OnMenuItemClickListener()
  {
    public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
    {
      return c.onMenuItemSelected(0, paramAnonymousMenuItem);
    }
  };
  
  d(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    a = new ToolbarWidgetWrapper(paramToolbar, false);
    c = new c(paramCallback);
    a.setWindowCallback(c);
    paramToolbar.setOnMenuItemClickListener(h);
    a.setWindowTitle(paramCharSequence);
  }
  
  private Menu d()
  {
    if (!d)
    {
      a.setMenuCallbacks(new a(), new b());
      d = true;
    }
    return a.getMenu();
  }
  
  void a()
  {
    a.getViewGroup().removeCallbacks(g);
  }
  
  public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    f.add(paramOnMenuVisibilityListener);
  }
  
  public void addTab(ActionBar.Tab paramTab)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public Window.Callback b()
  {
    return c;
  }
  
  void c()
  {
    Menu localMenu = d();
    MenuBuilder localMenuBuilder;
    if ((localMenu instanceof MenuBuilder)) {
      localMenuBuilder = (MenuBuilder)localMenu;
    } else {
      localMenuBuilder = null;
    }
    if (localMenuBuilder != null) {
      localMenuBuilder.stopDispatchingItemsChanged();
    }
    try
    {
      localMenu.clear();
      if ((!c.onCreatePanelMenu(0, localMenu)) || (!c.onPreparePanel(0, null, localMenu))) {
        localMenu.clear();
      }
      return;
    }
    finally
    {
      if (localMenuBuilder != null) {
        localMenuBuilder.startDispatchingItemsChanged();
      }
    }
  }
  
  public boolean closeOptionsMenu()
  {
    return a.hideOverflowMenu();
  }
  
  public boolean collapseActionView()
  {
    if (a.hasExpandedActionView())
    {
      a.collapseActionView();
      return true;
    }
    return false;
  }
  
  public void dispatchMenuVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean == e) {
      return;
    }
    e = paramBoolean;
    int j = f.size();
    int i = 0;
    while (i < j)
    {
      ((ActionBar.OnMenuVisibilityListener)f.get(i)).onMenuVisibilityChanged(paramBoolean);
      i += 1;
    }
  }
  
  public View getCustomView()
  {
    return a.getCustomView();
  }
  
  public int getDisplayOptions()
  {
    return a.getDisplayOptions();
  }
  
  public float getElevation()
  {
    return ViewCompat.getElevation(a.getViewGroup());
  }
  
  public int getHeight()
  {
    return a.getHeight();
  }
  
  public int getNavigationItemCount()
  {
    return 0;
  }
  
  public int getNavigationMode()
  {
    return 0;
  }
  
  public int getSelectedNavigationIndex()
  {
    return -1;
  }
  
  public ActionBar.Tab getSelectedTab()
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public CharSequence getSubtitle()
  {
    return a.getSubtitle();
  }
  
  public ActionBar.Tab getTabAt(int paramInt)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public int getTabCount()
  {
    return 0;
  }
  
  public Context getThemedContext()
  {
    return a.getContext();
  }
  
  public CharSequence getTitle()
  {
    return a.getTitle();
  }
  
  public void hide()
  {
    a.setVisibility(8);
  }
  
  public boolean invalidateOptionsMenu()
  {
    a.getViewGroup().removeCallbacks(g);
    ViewCompat.postOnAnimation(a.getViewGroup(), g);
    return true;
  }
  
  public boolean isShowing()
  {
    return a.getVisibility() == 0;
  }
  
  public boolean isTitleTruncated()
  {
    return super.isTitleTruncated();
  }
  
  public ActionBar.Tab newTab()
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = d();
    if (localMenu != null)
    {
      if (paramKeyEvent != null) {
        i = paramKeyEvent.getDeviceId();
      } else {
        i = -1;
      }
      int i = KeyCharacterMap.load(i).getKeyboardType();
      boolean bool = true;
      if (i == 1) {
        bool = false;
      }
      localMenu.setQwertyMode(bool);
      return localMenu.performShortcut(paramInt, paramKeyEvent, 0);
    }
    return false;
  }
  
  public boolean onMenuKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 1) {
      openOptionsMenu();
    }
    return true;
  }
  
  public boolean openOptionsMenu()
  {
    return a.showOverflowMenu();
  }
  
  public void removeAllTabs()
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    f.remove(paramOnMenuVisibilityListener);
  }
  
  public void removeTab(ActionBar.Tab paramTab)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void removeTabAt(int paramInt)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public boolean requestFocus()
  {
    ViewGroup localViewGroup = a.getViewGroup();
    if ((localViewGroup != null) && (!localViewGroup.hasFocus()))
    {
      localViewGroup.requestFocus();
      return true;
    }
    return false;
  }
  
  public void selectTab(ActionBar.Tab paramTab)
  {
    throw new UnsupportedOperationException("Tabs are not supported in toolbar action bars");
  }
  
  public void setBackgroundDrawable(@Nullable Drawable paramDrawable)
  {
    a.setBackgroundDrawable(paramDrawable);
  }
  
  public void setCustomView(int paramInt)
  {
    setCustomView(LayoutInflater.from(a.getContext()).inflate(paramInt, a.getViewGroup(), false));
  }
  
  public void setCustomView(View paramView)
  {
    setCustomView(paramView, new ActionBar.LayoutParams(-2, -2));
  }
  
  public void setCustomView(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    if (paramView != null) {
      paramView.setLayoutParams(paramLayoutParams);
    }
    a.setCustomView(paramView);
  }
  
  public void setDefaultDisplayHomeAsUpEnabled(boolean paramBoolean) {}
  
  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 4;
    } else {
      i = 0;
    }
    setDisplayOptions(i, 4);
  }
  
  @SuppressLint({"WrongConstant"})
  public void setDisplayOptions(int paramInt)
  {
    setDisplayOptions(paramInt, -1);
  }
  
  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = a.getDisplayOptions();
    a.setDisplayOptions(paramInt1 & paramInt2 | paramInt2 & i);
  }
  
  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 16;
    } else {
      i = 0;
    }
    setDisplayOptions(i, 16);
  }
  
  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 2;
    } else {
      i = 0;
    }
    setDisplayOptions(i, 2);
  }
  
  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 8;
    } else {
      i = 0;
    }
    setDisplayOptions(i, 8);
  }
  
  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public void setElevation(float paramFloat)
  {
    ViewCompat.setElevation(a.getViewGroup(), paramFloat);
  }
  
  public void setHomeActionContentDescription(int paramInt)
  {
    a.setNavigationContentDescription(paramInt);
  }
  
  public void setHomeActionContentDescription(CharSequence paramCharSequence)
  {
    a.setNavigationContentDescription(paramCharSequence);
  }
  
  public void setHomeAsUpIndicator(int paramInt)
  {
    a.setNavigationIcon(paramInt);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    a.setNavigationIcon(paramDrawable);
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean) {}
  
  public void setIcon(int paramInt)
  {
    a.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    a.setIcon(paramDrawable);
  }
  
  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    a.setDropdownParams(paramSpinnerAdapter, new b(paramOnNavigationListener));
  }
  
  public void setLogo(int paramInt)
  {
    a.setLogo(paramInt);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    a.setLogo(paramDrawable);
  }
  
  public void setNavigationMode(int paramInt)
  {
    if (paramInt != 2)
    {
      a.setNavigationMode(paramInt);
      return;
    }
    throw new IllegalArgumentException("Tabs not supported in this configuration");
  }
  
  public void setSelectedNavigationItem(int paramInt)
  {
    if (a.getNavigationMode() == 1)
    {
      a.setDropdownSelectedPosition(paramInt);
      return;
    }
    throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
  }
  
  public void setShowHideAnimationEnabled(boolean paramBoolean) {}
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setSubtitle(int paramInt)
  {
    DecorToolbar localDecorToolbar = a;
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = a.getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    localDecorToolbar.setSubtitle(localCharSequence);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    a.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    DecorToolbar localDecorToolbar = a;
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = a.getContext().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    localDecorToolbar.setTitle(localCharSequence);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    a.setTitle(paramCharSequence);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    a.setWindowTitle(paramCharSequence);
  }
  
  public void show()
  {
    a.setVisibility(0);
  }
  
  private final class a
    implements MenuPresenter.Callback
  {
    private boolean b;
    
    a() {}
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
    {
      if (b) {
        return;
      }
      b = true;
      a.dismissPopupMenus();
      if (c != null) {
        c.onPanelClosed(108, paramMenuBuilder);
      }
      b = false;
    }
    
    public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
    {
      if (c != null)
      {
        c.onMenuOpened(108, paramMenuBuilder);
        return true;
      }
      return false;
    }
  }
  
  private final class b
    implements MenuBuilder.Callback
  {
    b() {}
    
    public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
    {
      return false;
    }
    
    public void onMenuModeChange(MenuBuilder paramMenuBuilder)
    {
      if (c != null)
      {
        if (a.isOverflowMenuShowing())
        {
          c.onPanelClosed(108, paramMenuBuilder);
          return;
        }
        if (c.onPreparePanel(0, null, paramMenuBuilder)) {
          c.onMenuOpened(108, paramMenuBuilder);
        }
      }
    }
  }
  
  private class c
    extends WindowCallbackWrapper
  {
    public c(Window.Callback paramCallback)
    {
      super();
    }
    
    public View onCreatePanelView(int paramInt)
    {
      if (paramInt == 0) {
        return new View(a.getContext());
      }
      return super.onCreatePanelView(paramInt);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      boolean bool = super.onPreparePanel(paramInt, paramView, paramMenu);
      if ((bool) && (!b))
      {
        a.setMenuPrepared();
        b = true;
      }
      return bool;
    }
  }
}
