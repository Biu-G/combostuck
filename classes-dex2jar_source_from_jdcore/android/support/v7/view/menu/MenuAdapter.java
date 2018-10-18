package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class MenuAdapter
  extends BaseAdapter
{
  MenuBuilder a;
  private int b = -1;
  private boolean c;
  private final boolean d;
  private final LayoutInflater e;
  private final int f;
  
  public MenuAdapter(MenuBuilder paramMenuBuilder, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt)
  {
    d = paramBoolean;
    e = paramLayoutInflater;
    a = paramMenuBuilder;
    f = paramInt;
    a();
  }
  
  void a()
  {
    MenuItemImpl localMenuItemImpl = a.getExpandedItem();
    if (localMenuItemImpl != null)
    {
      ArrayList localArrayList = a.getNonActionItems();
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
  
  public MenuBuilder getAdapterMenu()
  {
    return a;
  }
  
  public int getCount()
  {
    ArrayList localArrayList;
    if (d) {
      localArrayList = a.getNonActionItems();
    } else {
      localArrayList = a.getVisibleItems();
    }
    if (b < 0) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public boolean getForceShowIcon()
  {
    return c;
  }
  
  public MenuItemImpl getItem(int paramInt)
  {
    ArrayList localArrayList;
    if (d) {
      localArrayList = a.getNonActionItems();
    } else {
      localArrayList = a.getVisibleItems();
    }
    int i = paramInt;
    if (b >= 0)
    {
      i = paramInt;
      if (paramInt >= b) {
        i = paramInt + 1;
      }
    }
    return (MenuItemImpl)localArrayList.get(i);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = e.inflate(f, paramViewGroup, false);
    }
    int j = getItem(paramInt).getGroupId();
    int i = paramInt - 1;
    if (i >= 0) {
      i = getItem(i).getGroupId();
    } else {
      i = j;
    }
    paramView = (ListMenuItemView)localView;
    boolean bool;
    if ((a.isGroupDividerEnabled()) && (j != i)) {
      bool = true;
    } else {
      bool = false;
    }
    paramView.setGroupDividerEnabled(bool);
    paramViewGroup = (MenuView.ItemView)localView;
    if (c) {
      paramView.setForceShowIcon(true);
    }
    paramViewGroup.initialize(getItem(paramInt), 0);
    return localView;
  }
  
  public void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    c = paramBoolean;
  }
}
