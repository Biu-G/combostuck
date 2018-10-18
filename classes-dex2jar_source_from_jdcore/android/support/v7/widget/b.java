package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ActionProvider.SubUiVisibilityListener;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.layout;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.ActionMenuItemView.PopupCallback;
import android.support.v7.view.menu.BaseMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.MenuView.ItemView;
import android.support.v7.view.menu.ShowableListMenu;
import android.support.v7.view.menu.SubMenuBuilder;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

class b
  extends BaseMenuPresenter
  implements ActionProvider.SubUiVisibilityListener
{
  d a;
  e b;
  a c;
  c d;
  final f e = new f();
  int f;
  private Drawable g;
  private boolean h;
  private boolean i;
  private boolean j;
  private int k;
  private int l;
  private int m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private int r;
  private final SparseBooleanArray s = new SparseBooleanArray();
  private View t;
  private b u;
  
  public b(Context paramContext)
  {
    super(paramContext, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
  }
  
  private View a(MenuItem paramMenuItem)
  {
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    if (localViewGroup == null) {
      return null;
    }
    int i2 = localViewGroup.getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = localViewGroup.getChildAt(i1);
      if (((localView instanceof MenuView.ItemView)) && (((MenuView.ItemView)localView).getItemData() == paramMenuItem)) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  public Drawable a()
  {
    if (a != null) {
      return a.getDrawable();
    }
    if (h) {
      return g;
    }
    return null;
  }
  
  public void a(Configuration paramConfiguration)
  {
    if (!n) {
      m = ActionBarPolicy.get(mContext).getMaxActionButtons();
    }
    if (mMenu != null) {
      mMenu.onItemsChanged(true);
    }
  }
  
  public void a(Drawable paramDrawable)
  {
    if (a != null)
    {
      a.setImageDrawable(paramDrawable);
      return;
    }
    h = true;
    g = paramDrawable;
  }
  
  public void a(ActionMenuView paramActionMenuView)
  {
    mMenuView = paramActionMenuView;
    paramActionMenuView.initialize(mMenu);
  }
  
  public void a(boolean paramBoolean)
  {
    i = paramBoolean;
    j = true;
  }
  
  public void b(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public boolean b()
  {
    if ((i) && (!f()) && (mMenu != null) && (mMenuView != null) && (d == null) && (!mMenu.getNonActionItems().isEmpty()))
    {
      d = new c(new e(mContext, mMenu, a, true));
      ((View)mMenuView).post(d);
      super.onSubMenuSelected(null);
      return true;
    }
    return false;
  }
  
  public void bindItemView(MenuItemImpl paramMenuItemImpl, MenuView.ItemView paramItemView)
  {
    paramItemView.initialize(paramMenuItemImpl, 0);
    paramMenuItemImpl = (ActionMenuView)mMenuView;
    paramItemView = (ActionMenuItemView)paramItemView;
    paramItemView.setItemInvoker(paramMenuItemImpl);
    if (u == null) {
      u = new b();
    }
    paramItemView.setPopupCallback(u);
  }
  
  public boolean c()
  {
    if ((d != null) && (mMenuView != null))
    {
      ((View)mMenuView).removeCallbacks(d);
      d = null;
      return true;
    }
    e localE = b;
    if (localE != null)
    {
      localE.dismiss();
      return true;
    }
    return false;
  }
  
  public boolean d()
  {
    return c() | e();
  }
  
  public boolean e()
  {
    if (c != null)
    {
      c.dismiss();
      return true;
    }
    return false;
  }
  
  public boolean f()
  {
    return (b != null) && (b.isShowing());
  }
  
  public boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == a) {
      return false;
    }
    return super.filterLeftoverView(paramViewGroup, paramInt);
  }
  
  public boolean flagActionItems()
  {
    Object localObject1 = this;
    ArrayList localArrayList;
    int i4;
    if (mMenu != null)
    {
      localArrayList = mMenu.getVisibleItems();
      i4 = localArrayList.size();
    }
    else
    {
      localArrayList = null;
      i4 = 0;
    }
    int i1 = m;
    int i8 = l;
    int i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    int i3 = 0;
    int i5 = 0;
    int i6 = 0;
    int i2 = 0;
    while (i3 < i4)
    {
      localObject2 = (MenuItemImpl)localArrayList.get(i3);
      if (((MenuItemImpl)localObject2).requiresActionButton()) {
        i5 += 1;
      } else if (((MenuItemImpl)localObject2).requestsActionButton()) {
        i2 += 1;
      } else {
        i6 = 1;
      }
      i7 = i1;
      if (q)
      {
        i7 = i1;
        if (((MenuItemImpl)localObject2).isActionViewExpanded()) {
          i7 = 0;
        }
      }
      i3 += 1;
      i1 = i7;
    }
    i3 = i1;
    if (i) {
      if (i6 == 0)
      {
        i3 = i1;
        if (i2 + i5 <= i1) {}
      }
      else
      {
        i3 = i1 - 1;
      }
    }
    i1 = i3 - i5;
    Object localObject2 = s;
    ((SparseBooleanArray)localObject2).clear();
    if (o)
    {
      i3 = i8 / r;
      i2 = r;
      i5 = r;
      i6 = i8 % i2 / i3 + i5;
    }
    else
    {
      i3 = 0;
      i6 = 0;
    }
    i5 = i8;
    i8 = 0;
    i2 = 0;
    int i7 = i4;
    for (;;)
    {
      localObject1 = this;
      if (i8 >= i7) {
        break;
      }
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)localArrayList.get(i8);
      View localView;
      if (localMenuItemImpl.requiresActionButton())
      {
        localView = ((b)localObject1).getItemView(localMenuItemImpl, t, localViewGroup);
        if (t == null) {
          t = localView;
        }
        if (o) {
          i3 -= ActionMenuView.a(localView, i6, i3, i10, 0);
        } else {
          localView.measure(i10, i10);
        }
        i4 = localView.getMeasuredWidth();
        i5 -= i4;
        if (i2 == 0) {
          i2 = i4;
        }
        i4 = localMenuItemImpl.getGroupId();
        if (i4 != 0) {
          ((SparseBooleanArray)localObject2).put(i4, true);
        }
        localMenuItemImpl.setIsActionButton(true);
      }
      for (;;)
      {
        break;
        if (localMenuItemImpl.requestsActionButton())
        {
          int i11 = localMenuItemImpl.getGroupId();
          boolean bool = ((SparseBooleanArray)localObject2).get(i11);
          int i12;
          if (((i1 > 0) || (bool)) && (i5 > 0) && ((!o) || (i3 > 0))) {
            i12 = 1;
          } else {
            i12 = 0;
          }
          int i9;
          if (i12 != 0)
          {
            localView = ((b)localObject1).getItemView(localMenuItemImpl, t, localViewGroup);
            if (t == null) {
              t = localView;
            }
            if (o)
            {
              i9 = ActionMenuView.a(localView, i6, i3, i10, 0);
              i4 = i3 - i9;
              i3 = i4;
              if (i9 == 0)
              {
                i12 = 0;
                i3 = i4;
              }
            }
            else
            {
              localView.measure(i10, i10);
            }
            i9 = localView.getMeasuredWidth();
            i5 -= i9;
            i4 = i2;
            if (i2 == 0) {
              i4 = i9;
            }
            if (o)
            {
              if (i5 >= 0) {
                i2 = 1;
              } else {
                i2 = 0;
              }
              i12 &= i2;
              i2 = i4;
            }
            else
            {
              if (i5 + i4 > 0) {
                i2 = 1;
              } else {
                i2 = 0;
              }
              i12 &= i2;
              i2 = i4;
            }
          }
          if ((i12 != 0) && (i11 != 0))
          {
            ((SparseBooleanArray)localObject2).put(i11, true);
            i4 = i1;
          }
          else
          {
            i4 = i1;
            if (bool)
            {
              ((SparseBooleanArray)localObject2).put(i11, false);
              i9 = 0;
              for (;;)
              {
                i4 = i1;
                if (i9 >= i8) {
                  break;
                }
                localObject1 = (MenuItemImpl)localArrayList.get(i9);
                i4 = i1;
                if (((MenuItemImpl)localObject1).getGroupId() == i11)
                {
                  i4 = i1;
                  if (((MenuItemImpl)localObject1).isActionButton()) {
                    i4 = i1 + 1;
                  }
                  ((MenuItemImpl)localObject1).setIsActionButton(false);
                }
                i9 += 1;
                i1 = i4;
              }
            }
          }
          i1 = i4;
          if (i12 != 0) {
            i1 = i4 - 1;
          }
          localMenuItemImpl.setIsActionButton(i12);
        }
        else
        {
          localMenuItemImpl.setIsActionButton(false);
        }
      }
      i8 += 1;
    }
    return true;
  }
  
  public boolean g()
  {
    return (d != null) || (f());
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramMenuItemImpl.getActionView();
    if ((localView == null) || (paramMenuItemImpl.hasCollapsibleActionView())) {
      localView = super.getItemView(paramMenuItemImpl, paramView, paramViewGroup);
    }
    int i1;
    if (paramMenuItemImpl.isActionViewExpanded()) {
      i1 = 8;
    } else {
      i1 = 0;
    }
    localView.setVisibility(i1);
    paramMenuItemImpl = (ActionMenuView)paramViewGroup;
    paramView = localView.getLayoutParams();
    if (!paramMenuItemImpl.checkLayoutParams(paramView)) {
      localView.setLayoutParams(paramMenuItemImpl.generateLayoutParams(paramView));
    }
    return localView;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    MenuView localMenuView = mMenuView;
    paramViewGroup = super.getMenuView(paramViewGroup);
    if (localMenuView != paramViewGroup) {
      ((ActionMenuView)paramViewGroup).setPresenter(this);
    }
    return paramViewGroup;
  }
  
  public boolean h()
  {
    return i;
  }
  
  public void initForMenu(@NonNull Context paramContext, @Nullable MenuBuilder paramMenuBuilder)
  {
    super.initForMenu(paramContext, paramMenuBuilder);
    paramMenuBuilder = paramContext.getResources();
    paramContext = ActionBarPolicy.get(paramContext);
    if (!j) {
      i = paramContext.showsOverflowMenuButton();
    }
    if (!p) {
      k = paramContext.getEmbeddedMenuWidthLimit();
    }
    if (!n) {
      m = paramContext.getMaxActionButtons();
    }
    int i1 = k;
    if (i)
    {
      if (a == null)
      {
        a = new d(mSystemContext);
        if (h)
        {
          a.setImageDrawable(g);
          g = null;
          h = false;
        }
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        a.measure(i2, i2);
      }
      i1 -= a.getMeasuredWidth();
    }
    else
    {
      a = null;
    }
    l = i1;
    r = ((int)(getDisplayMetricsdensity * 56.0F));
    t = null;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    d();
    super.onCloseMenu(paramMenuBuilder, paramBoolean);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof g)) {
      return;
    }
    paramParcelable = (g)paramParcelable;
    if (a > 0)
    {
      paramParcelable = mMenu.findItem(a);
      if (paramParcelable != null) {
        onSubMenuSelected((SubMenuBuilder)paramParcelable.getSubMenu());
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    g localG = new g();
    a = f;
    return localG;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    boolean bool1 = paramSubMenuBuilder.hasVisibleItems();
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    for (Object localObject = paramSubMenuBuilder; ((SubMenuBuilder)localObject).getParentMenu() != mMenu; localObject = (SubMenuBuilder)((SubMenuBuilder)localObject).getParentMenu()) {}
    localObject = a(((SubMenuBuilder)localObject).getItem());
    if (localObject == null) {
      return false;
    }
    f = paramSubMenuBuilder.getItem().getItemId();
    int i2 = paramSubMenuBuilder.size();
    int i1 = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i1 >= i2) {
        break;
      }
      MenuItem localMenuItem = paramSubMenuBuilder.getItem(i1);
      if ((localMenuItem.isVisible()) && (localMenuItem.getIcon() != null))
      {
        bool1 = true;
        break;
      }
      i1 += 1;
    }
    c = new a(mContext, paramSubMenuBuilder, (View)localObject);
    c.setForceShowIcon(bool1);
    c.show();
    super.onSubMenuSelected(paramSubMenuBuilder);
    return true;
  }
  
  public void onSubUiVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.onSubMenuSelected(null);
      return;
    }
    if (mMenu != null) {
      mMenu.close(false);
    }
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl)
  {
    return paramMenuItemImpl.isActionButton();
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    super.updateMenuView(paramBoolean);
    ((View)mMenuView).requestLayout();
    Object localObject = mMenu;
    int i2 = 0;
    int i3;
    if (localObject != null)
    {
      localObject = mMenu.getActionItems();
      i3 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i3)
      {
        ActionProvider localActionProvider = ((MenuItemImpl)((ArrayList)localObject).get(i1)).getSupportActionProvider();
        if (localActionProvider != null) {
          localActionProvider.setSubUiVisibilityListener(this);
        }
        i1 += 1;
      }
    }
    if (mMenu != null) {
      localObject = mMenu.getNonActionItems();
    } else {
      localObject = null;
    }
    int i1 = i2;
    boolean bool;
    if (i)
    {
      i1 = i2;
      if (localObject != null)
      {
        i3 = ((ArrayList)localObject).size();
        if (i3 == 1)
        {
          bool = ((MenuItemImpl)((ArrayList)localObject).get(0)).isActionViewExpanded() ^ true;
        }
        else
        {
          bool = i2;
          if (i3 > 0) {
            bool = true;
          }
        }
      }
    }
    if (bool)
    {
      if (a == null) {
        a = new d(mSystemContext);
      }
      localObject = (ViewGroup)a.getParent();
      if (localObject != mMenuView)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(a);
        }
        localObject = (ActionMenuView)mMenuView;
        ((ActionMenuView)localObject).addView(a, ((ActionMenuView)localObject).generateOverflowButtonLayoutParams());
      }
    }
    else if ((a != null) && (a.getParent() == mMenuView))
    {
      ((ViewGroup)mMenuView).removeView(a);
    }
    ((ActionMenuView)mMenuView).setOverflowReserved(i);
  }
  
  private class a
    extends MenuPopupHelper
  {
    public a(Context paramContext, SubMenuBuilder paramSubMenuBuilder, View paramView)
    {
      super(paramSubMenuBuilder, paramView, false, R.attr.actionOverflowMenuStyle);
      if (!((MenuItemImpl)paramSubMenuBuilder.getItem()).isActionButton())
      {
        if (a == null) {
          paramContext = (View)b.c(b.this);
        } else {
          paramContext = a;
        }
        setAnchorView(paramContext);
      }
      setPresenterCallback(e);
    }
    
    protected void onDismiss()
    {
      c = null;
      f = 0;
      super.onDismiss();
    }
  }
  
  private class b
    extends ActionMenuItemView.PopupCallback
  {
    b() {}
    
    public ShowableListMenu getPopup()
    {
      if (c != null) {
        return c.getPopup();
      }
      return null;
    }
  }
  
  private class c
    implements Runnable
  {
    private b.e b;
    
    public c(b.e paramE)
    {
      b = paramE;
    }
    
    public void run()
    {
      if (b.d(b.this) != null) {
        b.e(b.this).changeMenuMode();
      }
      View localView = (View)b.f(b.this);
      if ((localView != null) && (localView.getWindowToken() != null) && (b.tryShow())) {
        b = b;
      }
      d = null;
    }
  }
  
  private class d
    extends AppCompatImageView
    implements ActionMenuView.ActionMenuChildView
  {
    private final float[] b = new float[2];
    
    public d(Context paramContext)
    {
      super(null, R.attr.actionOverflowButtonStyle);
      setClickable(true);
      setFocusable(true);
      setVisibility(0);
      setEnabled(true);
      TooltipCompat.setTooltipText(this, getContentDescription());
      setOnTouchListener(new ForwardingListener(this)
      {
        public ShowableListMenu getPopup()
        {
          if (b == null) {
            return null;
          }
          return b.getPopup();
        }
        
        public boolean onForwardingStarted()
        {
          b();
          return true;
        }
        
        public boolean onForwardingStopped()
        {
          if (d != null) {
            return false;
          }
          c();
          return true;
        }
      });
    }
    
    public boolean needsDividerAfter()
    {
      return false;
    }
    
    public boolean needsDividerBefore()
    {
      return false;
    }
    
    public boolean performClick()
    {
      if (super.performClick()) {
        return true;
      }
      playSoundEffect(0);
      b();
      return true;
    }
    
    protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
      Drawable localDrawable1 = getDrawable();
      Drawable localDrawable2 = getBackground();
      if ((localDrawable1 != null) && (localDrawable2 != null))
      {
        int i = getWidth();
        paramInt2 = getHeight();
        paramInt1 = Math.max(i, paramInt2) / 2;
        int j = getPaddingLeft();
        int k = getPaddingRight();
        paramInt3 = getPaddingTop();
        paramInt4 = getPaddingBottom();
        i = (i + (j - k)) / 2;
        paramInt2 = (paramInt2 + (paramInt3 - paramInt4)) / 2;
        DrawableCompat.setHotspotBounds(localDrawable2, i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt2 + paramInt1);
      }
      return bool;
    }
  }
  
  private class e
    extends MenuPopupHelper
  {
    public e(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
    {
      super(paramMenuBuilder, paramView, paramBoolean, R.attr.actionOverflowMenuStyle);
      setGravity(8388613);
      setPresenterCallback(e);
    }
    
    protected void onDismiss()
    {
      if (b.a(b.this) != null) {
        b.b(b.this).close();
      }
      b = null;
      super.onDismiss();
    }
  }
  
  private class f
    implements MenuPresenter.Callback
  {
    f() {}
    
    public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
    {
      if ((paramMenuBuilder instanceof SubMenuBuilder)) {
        paramMenuBuilder.getRootMenu().close(false);
      }
      MenuPresenter.Callback localCallback = getCallback();
      if (localCallback != null) {
        localCallback.onCloseMenu(paramMenuBuilder, paramBoolean);
      }
    }
    
    public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
    {
      boolean bool = false;
      if (paramMenuBuilder == null) {
        return false;
      }
      f = ((SubMenuBuilder)paramMenuBuilder).getItem().getItemId();
      MenuPresenter.Callback localCallback = getCallback();
      if (localCallback != null) {
        bool = localCallback.onOpenSubMenu(paramMenuBuilder);
      }
      return bool;
    }
  }
  
  private static class g
    implements Parcelable
  {
    public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator()
    {
      public b.g a(Parcel paramAnonymousParcel)
      {
        return new b.g(paramAnonymousParcel);
      }
      
      public b.g[] a(int paramAnonymousInt)
      {
        return new b.g[paramAnonymousInt];
      }
    };
    public int a;
    
    g() {}
    
    g(Parcel paramParcel)
    {
      a = paramParcel.readInt();
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
    }
  }
}
