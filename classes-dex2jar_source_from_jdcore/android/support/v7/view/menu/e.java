package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;

abstract class e
  implements MenuPresenter, ShowableListMenu, AdapterView.OnItemClickListener
{
  private Rect a;
  
  e() {}
  
  protected static int a(ListAdapter paramListAdapter, ViewGroup paramViewGroup, Context paramContext, int paramInt)
  {
    int i = 0;
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i3 = paramListAdapter.getCount();
    Object localObject1 = paramViewGroup;
    paramViewGroup = null;
    int m = 0;
    int j = 0;
    while (i < i3)
    {
      int n = paramListAdapter.getItemViewType(i);
      int k = m;
      if (n != m)
      {
        paramViewGroup = null;
        k = n;
      }
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new FrameLayout(paramContext);
      }
      paramViewGroup = paramListAdapter.getView(i, paramViewGroup, (ViewGroup)localObject2);
      paramViewGroup.measure(i1, i2);
      n = paramViewGroup.getMeasuredWidth();
      if (n >= paramInt) {
        return paramInt;
      }
      m = j;
      if (n > j) {
        m = n;
      }
      i += 1;
      j = m;
      localObject1 = localObject2;
      m = k;
    }
    return j;
  }
  
  protected static MenuAdapter a(ListAdapter paramListAdapter)
  {
    if ((paramListAdapter instanceof HeaderViewListAdapter)) {
      return (MenuAdapter)((HeaderViewListAdapter)paramListAdapter).getWrappedAdapter();
    }
    return (MenuAdapter)paramListAdapter;
  }
  
  protected static boolean b(MenuBuilder paramMenuBuilder)
  {
    int j = paramMenuBuilder.size();
    int i = 0;
    while (i < j)
    {
      MenuItem localMenuItem = paramMenuBuilder.getItem(i);
      if ((localMenuItem.isVisible()) && (localMenuItem.getIcon() != null)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public abstract void a(int paramInt);
  
  public void a(Rect paramRect)
  {
    a = paramRect;
  }
  
  public abstract void a(MenuBuilder paramMenuBuilder);
  
  public abstract void a(View paramView);
  
  public abstract void a(PopupWindow.OnDismissListener paramOnDismissListener);
  
  public abstract void a(boolean paramBoolean);
  
  protected boolean a()
  {
    return true;
  }
  
  public Rect b()
  {
    return a;
  }
  
  public abstract void b(int paramInt);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c(int paramInt);
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public int getId()
  {
    return 0;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    throw new UnsupportedOperationException("MenuPopups manage their own views");
  }
  
  public void initForMenu(@NonNull Context paramContext, @Nullable MenuBuilder paramMenuBuilder) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (ListAdapter)paramAdapterView.getAdapter();
    paramAdapterView = aa;
    paramView = (MenuItem)paramView.getItem(paramInt);
    if (a()) {
      paramInt = 0;
    } else {
      paramInt = 4;
    }
    paramAdapterView.performItemAction(paramView, this, paramInt);
  }
}
