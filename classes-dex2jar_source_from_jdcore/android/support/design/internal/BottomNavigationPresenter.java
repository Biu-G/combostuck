package android.support.design.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class BottomNavigationPresenter
  implements MenuPresenter
{
  private MenuBuilder a;
  private BottomNavigationMenuView b;
  private boolean c = false;
  private int d;
  
  public BottomNavigationPresenter() {}
  
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
  
  public int getId()
  {
    return d;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    return b;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    a = paramMenuBuilder;
    b.initialize(a);
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof a)) {
      b.a(a);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    a localA = new a();
    a = b.getSelectedItemId();
    return localA;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }
  
  public void setBottomNavigationMenuView(BottomNavigationMenuView paramBottomNavigationMenuView)
  {
    b = paramBottomNavigationMenuView;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {}
  
  public void setId(int paramInt)
  {
    d = paramInt;
  }
  
  public void setUpdateSuspended(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (c) {
      return;
    }
    if (paramBoolean)
    {
      b.buildMenuView();
      return;
    }
    b.updateMenuView();
  }
  
  static class a
    implements Parcelable
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator()
    {
      public BottomNavigationPresenter.a a(Parcel paramAnonymousParcel)
      {
        return new BottomNavigationPresenter.a(paramAnonymousParcel);
      }
      
      public BottomNavigationPresenter.a[] a(int paramAnonymousInt)
      {
        return new BottomNavigationPresenter.a[paramAnonymousInt];
      }
    };
    int a;
    
    a() {}
    
    a(Parcel paramParcel)
    {
      a = paramParcel.readInt();
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
    }
  }
}
