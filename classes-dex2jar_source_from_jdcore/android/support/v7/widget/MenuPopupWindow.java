package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.MenuAdapter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class MenuPopupWindow
  extends ListPopupWindow
  implements MenuItemHoverListener
{
  private static Method a;
  private MenuItemHoverListener b;
  
  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setTouchModal", new Class[] { Boolean.TYPE });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
    Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
  }
  
  public MenuPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  r a(Context paramContext, boolean paramBoolean)
  {
    paramContext = new MenuDropDownListView(paramContext, paramBoolean);
    paramContext.setHoverListener(this);
    return paramContext;
  }
  
  public void onItemHoverEnter(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem)
  {
    if (b != null) {
      b.onItemHoverEnter(paramMenuBuilder, paramMenuItem);
    }
  }
  
  public void onItemHoverExit(@NonNull MenuBuilder paramMenuBuilder, @NonNull MenuItem paramMenuItem)
  {
    if (b != null) {
      b.onItemHoverExit(paramMenuBuilder, paramMenuItem);
    }
  }
  
  public void setEnterTransition(Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      g.setEnterTransition((Transition)paramObject);
    }
  }
  
  public void setExitTransition(Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      g.setExitTransition((Transition)paramObject);
    }
  }
  
  public void setHoverListener(MenuItemHoverListener paramMenuItemHoverListener)
  {
    b = paramMenuItemHoverListener;
  }
  
  public void setTouchModal(boolean paramBoolean)
  {
    if (a != null) {}
    try
    {
      a.invoke(g, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
  }
  
  @RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
  public static class MenuDropDownListView
    extends r
  {
    final int b;
    final int c;
    private MenuItemHoverListener d;
    private MenuItem e;
    
    public MenuDropDownListView(Context paramContext, boolean paramBoolean)
    {
      super(paramBoolean);
      paramContext = paramContext.getResources().getConfiguration();
      if ((Build.VERSION.SDK_INT >= 17) && (1 == paramContext.getLayoutDirection()))
      {
        b = 21;
        c = 22;
        return;
      }
      b = 22;
      c = 21;
    }
    
    public void clearSelection()
    {
      setSelection(-1);
    }
    
    public boolean onHoverEvent(MotionEvent paramMotionEvent)
    {
      if (d != null)
      {
        Object localObject1 = getAdapter();
        int i;
        if ((localObject1 instanceof HeaderViewListAdapter))
        {
          localObject1 = (HeaderViewListAdapter)localObject1;
          i = ((HeaderViewListAdapter)localObject1).getHeadersCount();
          localObject1 = (MenuAdapter)((HeaderViewListAdapter)localObject1).getWrappedAdapter();
        }
        else
        {
          i = 0;
          localObject1 = (MenuAdapter)localObject1;
        }
        MenuItem localMenuItem = null;
        Object localObject2 = localMenuItem;
        if (paramMotionEvent.getAction() != 10)
        {
          int j = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
          localObject2 = localMenuItem;
          if (j != -1)
          {
            i = j - i;
            localObject2 = localMenuItem;
            if (i >= 0)
            {
              localObject2 = localMenuItem;
              if (i < ((MenuAdapter)localObject1).getCount()) {
                localObject2 = ((MenuAdapter)localObject1).getItem(i);
              }
            }
          }
        }
        localMenuItem = e;
        if (localMenuItem != localObject2)
        {
          localObject1 = ((MenuAdapter)localObject1).getAdapterMenu();
          if (localMenuItem != null) {
            d.onItemHoverExit((MenuBuilder)localObject1, localMenuItem);
          }
          e = ((MenuItem)localObject2);
          if (localObject2 != null) {
            d.onItemHoverEnter((MenuBuilder)localObject1, (MenuItem)localObject2);
          }
        }
      }
      return super.onHoverEvent(paramMotionEvent);
    }
    
    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
    {
      ListMenuItemView localListMenuItemView = (ListMenuItemView)getSelectedView();
      if ((localListMenuItemView != null) && (paramInt == b))
      {
        if ((localListMenuItemView.isEnabled()) && (localListMenuItemView.getItemData().hasSubMenu())) {
          performItemClick(localListMenuItemView, getSelectedItemPosition(), getSelectedItemId());
        }
        return true;
      }
      if ((localListMenuItemView != null) && (paramInt == c))
      {
        setSelection(-1);
        ((MenuAdapter)getAdapter()).getAdapterMenu().close(false);
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    
    public void setHoverListener(MenuItemHoverListener paramMenuItemHoverListener)
    {
      d = paramMenuItemHoverListener;
    }
  }
}
