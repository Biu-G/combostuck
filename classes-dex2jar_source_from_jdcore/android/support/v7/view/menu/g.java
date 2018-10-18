package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.layout;
import android.support.v7.widget.MenuPopupWindow;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

final class g
  extends e
  implements MenuPresenter, View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private static final int e = R.layout.abc_popup_menu_item_layout;
  final MenuPopupWindow a;
  final ViewTreeObserver.OnGlobalLayoutListener b = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public void onGlobalLayout()
    {
      if ((isShowing()) && (!a.isModal()))
      {
        View localView = c;
        if ((localView != null) && (localView.isShown()))
        {
          a.show();
          return;
        }
        dismiss();
      }
    }
  };
  View c;
  ViewTreeObserver d;
  private final Context f;
  private final MenuBuilder g;
  private final MenuAdapter h;
  private final boolean i;
  private final int j;
  private final int k;
  private final int l;
  private final View.OnAttachStateChangeListener m = new View.OnAttachStateChangeListener()
  {
    public void onViewAttachedToWindow(View paramAnonymousView) {}
    
    public void onViewDetachedFromWindow(View paramAnonymousView)
    {
      if (d != null)
      {
        if (!d.isAlive()) {
          d = paramAnonymousView.getViewTreeObserver();
        }
        d.removeGlobalOnLayoutListener(b);
      }
      paramAnonymousView.removeOnAttachStateChangeListener(this);
    }
  };
  private PopupWindow.OnDismissListener n;
  private View o;
  private MenuPresenter.Callback p;
  private boolean q;
  private boolean r;
  private int s;
  private int t = 0;
  private boolean u;
  
  public g(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    f = paramContext;
    g = paramMenuBuilder;
    i = paramBoolean;
    h = new MenuAdapter(paramMenuBuilder, LayoutInflater.from(paramContext), i, e);
    k = paramInt1;
    l = paramInt2;
    Resources localResources = paramContext.getResources();
    j = Math.max(getDisplayMetricswidthPixels / 2, localResources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    o = paramView;
    a = new MenuPopupWindow(f, null, k, l);
    paramMenuBuilder.addMenuPresenter(this, paramContext);
  }
  
  private boolean c()
  {
    if (isShowing()) {
      return true;
    }
    if (!q)
    {
      if (o == null) {
        return false;
      }
      c = o;
      a.setOnDismissListener(this);
      a.setOnItemClickListener(this);
      a.setModal(true);
      Object localObject = c;
      int i1;
      if (d == null) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      d = ((View)localObject).getViewTreeObserver();
      if (i1 != 0) {
        d.addOnGlobalLayoutListener(b);
      }
      ((View)localObject).addOnAttachStateChangeListener(m);
      a.setAnchorView((View)localObject);
      a.setDropDownGravity(t);
      if (!r)
      {
        s = a(h, null, f, j);
        r = true;
      }
      a.setContentWidth(s);
      a.setInputMethodMode(2);
      a.setEpicenterBounds(b());
      a.show();
      localObject = a.getListView();
      ((ListView)localObject).setOnKeyListener(this);
      if ((u) && (g.getHeaderTitle() != null))
      {
        FrameLayout localFrameLayout = (FrameLayout)LayoutInflater.from(f).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup)localObject, false);
        TextView localTextView = (TextView)localFrameLayout.findViewById(16908310);
        if (localTextView != null) {
          localTextView.setText(g.getHeaderTitle());
        }
        localFrameLayout.setEnabled(false);
        ((ListView)localObject).addHeaderView(localFrameLayout, null, false);
      }
      a.setAdapter(h);
      a.show();
      return true;
    }
    return false;
  }
  
  public void a(int paramInt)
  {
    t = paramInt;
  }
  
  public void a(MenuBuilder paramMenuBuilder) {}
  
  public void a(View paramView)
  {
    o = paramView;
  }
  
  public void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    n = paramOnDismissListener;
  }
  
  public void a(boolean paramBoolean)
  {
    h.setForceShowIcon(paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a.setHorizontalOffset(paramInt);
  }
  
  public void b(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void c(int paramInt)
  {
    a.setVerticalOffset(paramInt);
  }
  
  public void dismiss()
  {
    if (isShowing()) {
      a.dismiss();
    }
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public ListView getListView()
  {
    return a.getListView();
  }
  
  public boolean isShowing()
  {
    return (!q) && (a.isShowing());
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (paramMenuBuilder != g) {
      return;
    }
    dismiss();
    if (p != null) {
      p.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public void onDismiss()
  {
    q = true;
    g.close();
    if (d != null)
    {
      if (!d.isAlive()) {
        d = c.getViewTreeObserver();
      }
      d.removeGlobalOnLayoutListener(b);
      d = null;
    }
    c.removeOnAttachStateChangeListener(m);
    if (n != null) {
      n.onDismiss();
    }
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (paramSubMenuBuilder.hasVisibleItems())
    {
      MenuPopupHelper localMenuPopupHelper = new MenuPopupHelper(f, paramSubMenuBuilder, c, i, k, l);
      localMenuPopupHelper.setPresenterCallback(p);
      localMenuPopupHelper.setForceShowIcon(e.b(paramSubMenuBuilder));
      localMenuPopupHelper.setOnDismissListener(n);
      n = null;
      g.close(false);
      int i2 = a.getHorizontalOffset();
      int i3 = a.getVerticalOffset();
      int i1 = i2;
      if ((Gravity.getAbsoluteGravity(t, ViewCompat.getLayoutDirection(o)) & 0x7) == 5) {
        i1 = i2 + o.getWidth();
      }
      if (localMenuPopupHelper.tryShow(i1, i3))
      {
        if (p != null) {
          p.onOpenSubMenu(paramSubMenuBuilder);
        }
        return true;
      }
    }
    return false;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    p = paramCallback;
  }
  
  public void show()
  {
    if (c()) {
      return;
    }
    throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    r = false;
    if (h != null) {
      h.notifyDataSetChanged();
    }
  }
}
