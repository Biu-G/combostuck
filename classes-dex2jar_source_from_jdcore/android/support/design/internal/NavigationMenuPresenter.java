package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R.dimen;
import android.support.design.R.layout;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuPresenter
  implements MenuPresenter
{
  LinearLayout a;
  MenuBuilder b;
  b c;
  LayoutInflater d;
  int e;
  boolean f;
  ColorStateList g;
  ColorStateList h;
  Drawable i;
  int j;
  int k;
  int l;
  final View.OnClickListener m = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (NavigationMenuItemView)paramAnonymousView;
      setUpdateSuspended(true);
      paramAnonymousView = paramAnonymousView.getItemData();
      boolean bool = b.performItemAction(paramAnonymousView, NavigationMenuPresenter.this, 0);
      if ((paramAnonymousView != null) && (paramAnonymousView.isCheckable()) && (bool)) {
        c.a(paramAnonymousView);
      }
      setUpdateSuspended(false);
      updateMenuView(false);
    }
  };
  private NavigationMenuView n;
  private MenuPresenter.Callback o;
  private int p;
  private int q;
  
  public NavigationMenuPresenter() {}
  
  public void addHeaderView(@NonNull View paramView)
  {
    a.addView(paramView);
    n.setPadding(0, 0, 0, n.getPaddingBottom());
  }
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public void dispatchApplyWindowInsets(WindowInsetsCompat paramWindowInsetsCompat)
  {
    int i1 = paramWindowInsetsCompat.getSystemWindowInsetTop();
    if (q != i1)
    {
      q = i1;
      if (a.getChildCount() == 0) {
        n.setPadding(0, q, 0, n.getPaddingBottom());
      }
    }
    ViewCompat.dispatchApplyWindowInsets(a, paramWindowInsetsCompat);
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  @Nullable
  public MenuItemImpl getCheckedItem()
  {
    return c.b();
  }
  
  public int getHeaderCount()
  {
    return a.getChildCount();
  }
  
  public View getHeaderView(int paramInt)
  {
    return a.getChildAt(paramInt);
  }
  
  public int getId()
  {
    return p;
  }
  
  @Nullable
  public Drawable getItemBackground()
  {
    return i;
  }
  
  public int getItemHorizontalPadding()
  {
    return j;
  }
  
  public int getItemIconPadding()
  {
    return k;
  }
  
  @Nullable
  public ColorStateList getItemTextColor()
  {
    return g;
  }
  
  @Nullable
  public ColorStateList getItemTintList()
  {
    return h;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    if (n == null)
    {
      n = ((NavigationMenuView)d.inflate(R.layout.design_navigation_menu, paramViewGroup, false));
      if (c == null) {
        c = new b();
      }
      a = ((LinearLayout)d.inflate(R.layout.design_navigation_item_header, n, false));
      n.setAdapter(c);
    }
    return n;
  }
  
  public View inflateHeaderView(@LayoutRes int paramInt)
  {
    View localView = d.inflate(paramInt, a, false);
    addHeaderView(localView);
    return localView;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    d = LayoutInflater.from(paramContext);
    b = paramMenuBuilder;
    l = paramContext.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (o != null) {
      o.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof Bundle))
    {
      paramParcelable = (Bundle)paramParcelable;
      Object localObject = paramParcelable.getSparseParcelableArray("android:menu:list");
      if (localObject != null) {
        n.restoreHierarchyState((SparseArray)localObject);
      }
      localObject = paramParcelable.getBundle("android:menu:adapter");
      if (localObject != null) {
        c.a((Bundle)localObject);
      }
      paramParcelable = paramParcelable.getSparseParcelableArray("android:menu:header");
      if (paramParcelable != null) {
        a.restoreHierarchyState(paramParcelable);
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    SparseArray localSparseArray;
    if (n != null)
    {
      localSparseArray = new SparseArray();
      n.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    }
    if (c != null) {
      localBundle.putBundle("android:menu:adapter", c.c());
    }
    if (a != null)
    {
      localSparseArray = new SparseArray();
      a.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:header", localSparseArray);
    }
    return localBundle;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }
  
  public void removeHeaderView(@NonNull View paramView)
  {
    a.removeView(paramView);
    if (a.getChildCount() == 0) {
      n.setPadding(0, q, 0, n.getPaddingBottom());
    }
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    o = paramCallback;
  }
  
  public void setCheckedItem(@NonNull MenuItemImpl paramMenuItemImpl)
  {
    c.a(paramMenuItemImpl);
  }
  
  public void setId(int paramInt)
  {
    p = paramInt;
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable)
  {
    i = paramDrawable;
    updateMenuView(false);
  }
  
  public void setItemHorizontalPadding(int paramInt)
  {
    j = paramInt;
    updateMenuView(false);
  }
  
  public void setItemIconPadding(int paramInt)
  {
    k = paramInt;
    updateMenuView(false);
  }
  
  public void setItemIconTintList(@Nullable ColorStateList paramColorStateList)
  {
    h = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setItemTextAppearance(@StyleRes int paramInt)
  {
    e = paramInt;
    f = true;
    updateMenuView(false);
  }
  
  public void setItemTextColor(@Nullable ColorStateList paramColorStateList)
  {
    g = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setUpdateSuspended(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (c != null) {
      c.a();
    }
  }
  
  private static class a
    extends NavigationMenuPresenter.j
  {
    public a(View paramView)
    {
      super();
    }
  }
  
  private class b
    extends RecyclerView.Adapter<NavigationMenuPresenter.j>
  {
    private final ArrayList<NavigationMenuPresenter.d> b = new ArrayList();
    private MenuItemImpl c;
    private boolean d;
    
    b()
    {
      d();
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      while (paramInt1 < paramInt2)
      {
        b.get(paramInt1)).a = true;
        paramInt1 += 1;
      }
    }
    
    private void d()
    {
      if (d) {
        return;
      }
      d = true;
      b.clear();
      b.add(new NavigationMenuPresenter.c());
      int i2 = b.getVisibleItems().size();
      int m = 0;
      int n = -1;
      boolean bool2 = false;
      int k;
      for (int i = 0; m < i2; i = k)
      {
        Object localObject = (MenuItemImpl)b.getVisibleItems().get(m);
        if (((MenuItemImpl)localObject).isChecked()) {
          a((MenuItemImpl)localObject);
        }
        if (((MenuItemImpl)localObject).isCheckable()) {
          ((MenuItemImpl)localObject).setExclusiveCheckable(false);
        }
        int i1;
        boolean bool1;
        int j;
        if (((MenuItemImpl)localObject).hasSubMenu())
        {
          SubMenu localSubMenu = ((MenuItemImpl)localObject).getSubMenu();
          i1 = n;
          bool1 = bool2;
          k = i;
          if (localSubMenu.hasVisibleItems())
          {
            if (m != 0) {
              b.add(new NavigationMenuPresenter.e(l, 0));
            }
            b.add(new NavigationMenuPresenter.f((MenuItemImpl)localObject));
            int i3 = b.size();
            int i4 = localSubMenu.size();
            i1 = 0;
            for (j = 0; i1 < i4; j = k)
            {
              MenuItemImpl localMenuItemImpl = (MenuItemImpl)localSubMenu.getItem(i1);
              k = j;
              if (localMenuItemImpl.isVisible())
              {
                k = j;
                if (j == 0)
                {
                  k = j;
                  if (localMenuItemImpl.getIcon() != null) {
                    k = 1;
                  }
                }
                if (localMenuItemImpl.isCheckable()) {
                  localMenuItemImpl.setExclusiveCheckable(false);
                }
                if (((MenuItemImpl)localObject).isChecked()) {
                  a((MenuItemImpl)localObject);
                }
                b.add(new NavigationMenuPresenter.f(localMenuItemImpl));
              }
              i1 += 1;
            }
            i1 = n;
            bool1 = bool2;
            k = i;
            if (j != 0)
            {
              a(i3, b.size());
              i1 = n;
              bool1 = bool2;
              k = i;
            }
          }
        }
        else
        {
          i1 = ((MenuItemImpl)localObject).getGroupId();
          if (i1 != n)
          {
            i = b.size();
            if (((MenuItemImpl)localObject).getIcon() != null) {
              bool1 = true;
            } else {
              bool1 = false;
            }
            j = i;
            if (m != 0)
            {
              j = i + 1;
              b.add(new NavigationMenuPresenter.e(l, l));
            }
          }
          else
          {
            bool1 = bool2;
            j = i;
            if (!bool2)
            {
              bool1 = bool2;
              j = i;
              if (((MenuItemImpl)localObject).getIcon() != null)
              {
                a(i, b.size());
                bool1 = true;
                j = i;
              }
            }
          }
          localObject = new NavigationMenuPresenter.f((MenuItemImpl)localObject);
          a = bool1;
          b.add(localObject);
          k = j;
        }
        m += 1;
        n = i1;
        bool2 = bool1;
      }
      d = false;
    }
    
    public NavigationMenuPresenter.j a(ViewGroup paramViewGroup, int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 3: 
        return new NavigationMenuPresenter.a(a);
      case 2: 
        return new NavigationMenuPresenter.h(d, paramViewGroup);
      case 1: 
        return new NavigationMenuPresenter.i(d, paramViewGroup);
      }
      return new NavigationMenuPresenter.g(d, paramViewGroup, m);
    }
    
    public void a()
    {
      d();
      notifyDataSetChanged();
    }
    
    public void a(Bundle paramBundle)
    {
      int j = 0;
      int k = paramBundle.getInt("android:menu:checked", 0);
      int i;
      Object localObject1;
      if (k != 0)
      {
        d = true;
        int m = b.size();
        i = 0;
        while (i < m)
        {
          localObject1 = (NavigationMenuPresenter.d)b.get(i);
          if ((localObject1 instanceof NavigationMenuPresenter.f))
          {
            localObject1 = ((NavigationMenuPresenter.f)localObject1).a();
            if ((localObject1 != null) && (((MenuItemImpl)localObject1).getItemId() == k))
            {
              a((MenuItemImpl)localObject1);
              break;
            }
          }
          i += 1;
        }
        d = false;
        d();
      }
      paramBundle = paramBundle.getSparseParcelableArray("android:menu:action_views");
      if (paramBundle != null)
      {
        k = b.size();
        i = j;
        while (i < k)
        {
          localObject1 = (NavigationMenuPresenter.d)b.get(i);
          if ((localObject1 instanceof NavigationMenuPresenter.f))
          {
            Object localObject2 = ((NavigationMenuPresenter.f)localObject1).a();
            if (localObject2 != null)
            {
              localObject1 = ((MenuItemImpl)localObject2).getActionView();
              if (localObject1 != null)
              {
                localObject2 = (ParcelableSparseArray)paramBundle.get(((MenuItemImpl)localObject2).getItemId());
                if (localObject2 != null) {
                  ((View)localObject1).restoreHierarchyState((SparseArray)localObject2);
                }
              }
            }
          }
          i += 1;
        }
      }
    }
    
    public void a(NavigationMenuPresenter.j paramJ)
    {
      if ((paramJ instanceof NavigationMenuPresenter.g)) {
        ((NavigationMenuItemView)itemView).recycle();
      }
    }
    
    public void a(NavigationMenuPresenter.j paramJ, int paramInt)
    {
      switch (getItemViewType(paramInt))
      {
      default: 
        return;
      case 2: 
        localObject = (NavigationMenuPresenter.e)b.get(paramInt);
        itemView.setPadding(0, ((NavigationMenuPresenter.e)localObject).a(), 0, ((NavigationMenuPresenter.e)localObject).b());
        return;
      case 1: 
        ((TextView)itemView).setText(((NavigationMenuPresenter.f)b.get(paramInt)).a().getTitle());
        return;
      }
      Object localObject = (NavigationMenuItemView)itemView;
      ((NavigationMenuItemView)localObject).setIconTintList(h);
      if (f) {
        ((NavigationMenuItemView)localObject).setTextAppearance(e);
      }
      if (g != null) {
        ((NavigationMenuItemView)localObject).setTextColor(g);
      }
      if (i != null) {
        paramJ = i.getConstantState().newDrawable();
      } else {
        paramJ = null;
      }
      ViewCompat.setBackground((View)localObject, paramJ);
      paramJ = (NavigationMenuPresenter.f)b.get(paramInt);
      ((NavigationMenuItemView)localObject).setNeedsEmptyIcon(a);
      ((NavigationMenuItemView)localObject).setHorizontalPadding(j);
      ((NavigationMenuItemView)localObject).setIconPadding(k);
      ((NavigationMenuItemView)localObject).initialize(paramJ.a(), 0);
    }
    
    public void a(MenuItemImpl paramMenuItemImpl)
    {
      if (c != paramMenuItemImpl)
      {
        if (!paramMenuItemImpl.isCheckable()) {
          return;
        }
        if (c != null) {
          c.setChecked(false);
        }
        c = paramMenuItemImpl;
        paramMenuItemImpl.setChecked(true);
        return;
      }
    }
    
    public void a(boolean paramBoolean)
    {
      d = paramBoolean;
    }
    
    public MenuItemImpl b()
    {
      return c;
    }
    
    public Bundle c()
    {
      Bundle localBundle = new Bundle();
      if (c != null) {
        localBundle.putInt("android:menu:checked", c.getItemId());
      }
      SparseArray localSparseArray = new SparseArray();
      int i = 0;
      int j = b.size();
      while (i < j)
      {
        Object localObject = (NavigationMenuPresenter.d)b.get(i);
        if ((localObject instanceof NavigationMenuPresenter.f))
        {
          MenuItemImpl localMenuItemImpl = ((NavigationMenuPresenter.f)localObject).a();
          if (localMenuItemImpl != null) {
            localObject = localMenuItemImpl.getActionView();
          } else {
            localObject = null;
          }
          if (localObject != null)
          {
            ParcelableSparseArray localParcelableSparseArray = new ParcelableSparseArray();
            ((View)localObject).saveHierarchyState(localParcelableSparseArray);
            localSparseArray.put(localMenuItemImpl.getItemId(), localParcelableSparseArray);
          }
        }
        i += 1;
      }
      localBundle.putSparseParcelableArray("android:menu:action_views", localSparseArray);
      return localBundle;
    }
    
    public int getItemCount()
    {
      return b.size();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public int getItemViewType(int paramInt)
    {
      NavigationMenuPresenter.d localD = (NavigationMenuPresenter.d)b.get(paramInt);
      if ((localD instanceof NavigationMenuPresenter.e)) {
        return 2;
      }
      if ((localD instanceof NavigationMenuPresenter.c)) {
        return 3;
      }
      if ((localD instanceof NavigationMenuPresenter.f))
      {
        if (((NavigationMenuPresenter.f)localD).a().hasSubMenu()) {
          return 1;
        }
        return 0;
      }
      throw new RuntimeException("Unknown item type.");
    }
  }
  
  private static class c
    implements NavigationMenuPresenter.d
  {
    c() {}
  }
  
  private static abstract interface d {}
  
  private static class e
    implements NavigationMenuPresenter.d
  {
    private final int a;
    private final int b;
    
    public e(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
    
    public int a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
  }
  
  private static class f
    implements NavigationMenuPresenter.d
  {
    boolean a;
    private final MenuItemImpl b;
    
    f(MenuItemImpl paramMenuItemImpl)
    {
      b = paramMenuItemImpl;
    }
    
    public MenuItemImpl a()
    {
      return b;
    }
  }
  
  private static class g
    extends NavigationMenuPresenter.j
  {
    public g(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, View.OnClickListener paramOnClickListener)
    {
      super();
      itemView.setOnClickListener(paramOnClickListener);
    }
  }
  
  private static class h
    extends NavigationMenuPresenter.j
  {
    public h(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static class i
    extends NavigationMenuPresenter.j
  {
    public i(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static abstract class j
    extends RecyclerView.ViewHolder
  {
    public j(View paramView)
    {
      super();
    }
  }
}
