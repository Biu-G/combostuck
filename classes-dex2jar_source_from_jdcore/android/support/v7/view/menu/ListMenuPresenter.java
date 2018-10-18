package android.support.v7.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R.layout;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class ListMenuPresenter
  implements MenuPresenter, AdapterView.OnItemClickListener
{
  public static final String VIEWS_TAG = "android:menu:list";
  Context a;
  LayoutInflater b;
  MenuBuilder c;
  ExpandedMenuView d;
  int e;
  int f;
  int g;
  a h;
  private MenuPresenter.Callback i;
  private int j;
  
  public ListMenuPresenter(int paramInt1, int paramInt2)
  {
    g = paramInt1;
    f = paramInt2;
  }
  
  public ListMenuPresenter(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public ListAdapter getAdapter()
  {
    if (h == null) {
      h = new a();
    }
    return h;
  }
  
  public int getId()
  {
    return j;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(R.layout.abc_expanded_menu_layout, paramViewGroup, false));
      if (h == null) {
        h = new a();
      }
      d.setAdapter(h);
      d.setOnItemClickListener(this);
    }
    return d;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if (f != 0)
    {
      a = new ContextThemeWrapper(paramContext, f);
      b = LayoutInflater.from(a);
    }
    else if (a != null)
    {
      a = paramContext;
      if (b == null) {
        b = LayoutInflater.from(a);
      }
    }
    c = paramMenuBuilder;
    if (h != null) {
      h.notifyDataSetChanged();
    }
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (i != null) {
      i.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.performItemAction(h.a(paramInt), this, 0);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    restoreHierarchyState((Bundle)paramParcelable);
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (d == null) {
      return null;
    }
    Bundle localBundle = new Bundle();
    saveHierarchyState(localBundle);
    return localBundle;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (!paramSubMenuBuilder.hasVisibleItems()) {
      return false;
    }
    new c(paramSubMenuBuilder).a(null);
    if (i != null) {
      i.onOpenSubMenu(paramSubMenuBuilder);
    }
    return true;
  }
  
  public void restoreHierarchyState(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:list");
    if (paramBundle != null) {
      d.restoreHierarchyState(paramBundle);
    }
  }
  
  public void saveHierarchyState(Bundle paramBundle)
  {
    SparseArray localSparseArray = new SparseArray();
    if (d != null) {
      d.saveHierarchyState(localSparseArray);
    }
    paramBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    i = paramCallback;
  }
  
  public void setId(int paramInt)
  {
    j = paramInt;
  }
  
  public void setItemIndexOffset(int paramInt)
  {
    e = paramInt;
    if (d != null) {
      updateMenuView(false);
    }
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (h != null) {
      h.notifyDataSetChanged();
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private int b = -1;
    
    public a()
    {
      a();
    }
    
    public MenuItemImpl a(int paramInt)
    {
      ArrayList localArrayList = c.getNonActionItems();
      int i = paramInt + e;
      paramInt = i;
      if (b >= 0)
      {
        paramInt = i;
        if (i >= b) {
          paramInt = i + 1;
        }
      }
      return (MenuItemImpl)localArrayList.get(paramInt);
    }
    
    void a()
    {
      MenuItemImpl localMenuItemImpl = c.getExpandedItem();
      if (localMenuItemImpl != null)
      {
        ArrayList localArrayList = c.getNonActionItems();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          if ((MenuItemImpl)localArrayList.get(i) == localMenuItemImpl)
          {
            b = i;
            return;
          }
          i += 1;
        }
      }
      b = -1;
    }
    
    public int getCount()
    {
      int i = c.getNonActionItems().size() - e;
      if (b < 0) {
        return i;
      }
      return i - 1;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null) {
        localView = b.inflate(g, paramViewGroup, false);
      }
      ((MenuView.ItemView)localView).initialize(a(paramInt), 0);
      return localView;
    }
    
    public void notifyDataSetChanged()
    {
      a();
      super.notifyDataSetChanged();
    }
  }
}
