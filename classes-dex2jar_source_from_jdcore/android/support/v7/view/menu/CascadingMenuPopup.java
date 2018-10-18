package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.layout;
import android.support.v7.widget.MenuItemHoverListener;
import android.support.v7.widget.MenuPopupWindow;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class CascadingMenuPopup
  extends e
  implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener
{
  private static final int g = R.layout.abc_cascading_menu_item_layout;
  private PopupWindow.OnDismissListener A;
  final Handler a;
  final List<a> b = new ArrayList();
  final ViewTreeObserver.OnGlobalLayoutListener c = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public void onGlobalLayout()
    {
      if ((isShowing()) && (b.size() > 0) && (!b.get(0)).a.isModal()))
      {
        Object localObject = d;
        if ((localObject != null) && (((View)localObject).isShown())) {
          localObject = b.iterator();
        }
        while (((Iterator)localObject).hasNext())
        {
          nexta.show();
          continue;
          dismiss();
        }
      }
    }
  };
  View d;
  ViewTreeObserver e;
  boolean f;
  private final Context h;
  private final int i;
  private final int j;
  private final int k;
  private final boolean l;
  private final List<MenuBuilder> m = new ArrayList();
  private final View.OnAttachStateChangeListener n = new View.OnAttachStateChangeListener()
  {
    public void onViewAttachedToWindow(View paramAnonymousView) {}
    
    public void onViewDetachedFromWindow(View paramAnonymousView)
    {
      if (e != null)
      {
        if (!e.isAlive()) {
          e = paramAnonymousView.getViewTreeObserver();
        }
        e.removeGlobalOnLayoutListener(c);
      }
      paramAnonymousView.removeOnAttachStateChangeListener(this);
    }
  };
  private final MenuItemHoverListener o = new MenuItemHoverListener()
  {
    public void onItemHoverEnter(@NonNull final MenuBuilder paramAnonymousMenuBuilder, @NonNull final MenuItem paramAnonymousMenuItem)
    {
      Handler localHandler = a;
      final CascadingMenuPopup.a localA = null;
      localHandler.removeCallbacksAndMessages(null);
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        if (paramAnonymousMenuBuilder == b.get(i)).b) {
          break label75;
        }
        i += 1;
      }
      i = -1;
      label75:
      if (i == -1) {
        return;
      }
      i += 1;
      if (i < b.size()) {
        localA = (CascadingMenuPopup.a)b.get(i);
      }
      paramAnonymousMenuItem = new Runnable()
      {
        public void run()
        {
          if (localA != null)
          {
            f = true;
            localAb.close(false);
            f = false;
          }
          if ((paramAnonymousMenuItem.isEnabled()) && (paramAnonymousMenuItem.hasSubMenu())) {
            paramAnonymousMenuBuilder.performItemAction(paramAnonymousMenuItem, 4);
          }
        }
      };
      long l = SystemClock.uptimeMillis();
      a.postAtTime(paramAnonymousMenuItem, paramAnonymousMenuBuilder, l + 200L);
    }
    
    public void onItemHoverExit(@NonNull MenuBuilder paramAnonymousMenuBuilder, @NonNull MenuItem paramAnonymousMenuItem)
    {
      a.removeCallbacksAndMessages(paramAnonymousMenuBuilder);
    }
  };
  private int p = 0;
  private int q = 0;
  private View r;
  private int s;
  private boolean t;
  private boolean u;
  private int v;
  private int w;
  private boolean x;
  private boolean y;
  private MenuPresenter.Callback z;
  
  public CascadingMenuPopup(@NonNull Context paramContext, @NonNull View paramView, @AttrRes int paramInt1, @StyleRes int paramInt2, boolean paramBoolean)
  {
    h = paramContext;
    r = paramView;
    j = paramInt1;
    k = paramInt2;
    l = paramBoolean;
    x = false;
    s = d();
    paramContext = paramContext.getResources();
    i = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    a = new Handler();
  }
  
  private MenuItem a(@NonNull MenuBuilder paramMenuBuilder1, @NonNull MenuBuilder paramMenuBuilder2)
  {
    int i2 = paramMenuBuilder1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      MenuItem localMenuItem = paramMenuBuilder1.getItem(i1);
      if ((localMenuItem.hasSubMenu()) && (paramMenuBuilder2 == localMenuItem.getSubMenu())) {
        return localMenuItem;
      }
      i1 += 1;
    }
    return null;
  }
  
  @Nullable
  private View a(@NonNull a paramA, @NonNull MenuBuilder paramMenuBuilder)
  {
    paramMenuBuilder = a(b, paramMenuBuilder);
    if (paramMenuBuilder == null) {
      return null;
    }
    ListView localListView = paramA.a();
    paramA = localListView.getAdapter();
    boolean bool = paramA instanceof HeaderViewListAdapter;
    int i1 = 0;
    int i2;
    if (bool)
    {
      paramA = (HeaderViewListAdapter)paramA;
      i2 = paramA.getHeadersCount();
      paramA = (MenuAdapter)paramA.getWrappedAdapter();
    }
    else
    {
      paramA = (MenuAdapter)paramA;
      i2 = 0;
    }
    int i3 = paramA.getCount();
    while (i1 < i3)
    {
      if (paramMenuBuilder == paramA.getItem(i1)) {
        break label104;
      }
      i1 += 1;
    }
    i1 = -1;
    label104:
    if (i1 == -1) {
      return null;
    }
    i1 = i1 + i2 - localListView.getFirstVisiblePosition();
    if (i1 >= 0)
    {
      if (i1 >= localListView.getChildCount()) {
        return null;
      }
      return localListView.getChildAt(i1);
    }
    return null;
  }
  
  private MenuPopupWindow c()
  {
    MenuPopupWindow localMenuPopupWindow = new MenuPopupWindow(h, null, j, k);
    localMenuPopupWindow.setHoverListener(o);
    localMenuPopupWindow.setOnItemClickListener(this);
    localMenuPopupWindow.setOnDismissListener(this);
    localMenuPopupWindow.setAnchorView(r);
    localMenuPopupWindow.setDropDownGravity(q);
    localMenuPopupWindow.setModal(true);
    localMenuPopupWindow.setInputMethodMode(2);
    return localMenuPopupWindow;
  }
  
  private void c(@NonNull MenuBuilder paramMenuBuilder)
  {
    Object localObject3 = LayoutInflater.from(h);
    Object localObject1 = new MenuAdapter(paramMenuBuilder, (LayoutInflater)localObject3, l, g);
    if ((!isShowing()) && (x)) {
      ((MenuAdapter)localObject1).setForceShowIcon(true);
    } else if (isShowing()) {
      ((MenuAdapter)localObject1).setForceShowIcon(e.b(paramMenuBuilder));
    }
    int i4 = a((ListAdapter)localObject1, null, h, i);
    MenuPopupWindow localMenuPopupWindow = c();
    localMenuPopupWindow.setAdapter((ListAdapter)localObject1);
    localMenuPopupWindow.setContentWidth(i4);
    localMenuPopupWindow.setDropDownGravity(q);
    if (b.size() > 0)
    {
      localObject1 = (a)b.get(b.size() - 1);
      localObject2 = a((a)localObject1, paramMenuBuilder);
    }
    else
    {
      localObject1 = null;
      localObject2 = localObject1;
    }
    if (localObject2 != null)
    {
      localMenuPopupWindow.setTouchModal(false);
      localMenuPopupWindow.setEnterTransition(null);
      int i2 = d(i4);
      int i1;
      if (i2 == 1) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      s = i2;
      int i3;
      if (Build.VERSION.SDK_INT >= 26)
      {
        localMenuPopupWindow.setAnchorView((View)localObject2);
        i2 = 0;
        i3 = 0;
      }
      else
      {
        int[] arrayOfInt1 = new int[2];
        r.getLocationOnScreen(arrayOfInt1);
        int[] arrayOfInt2 = new int[2];
        ((View)localObject2).getLocationOnScreen(arrayOfInt2);
        if ((q & 0x7) == 5)
        {
          arrayOfInt1[0] += r.getWidth();
          arrayOfInt2[0] += ((View)localObject2).getWidth();
        }
        i3 = arrayOfInt2[0] - arrayOfInt1[0];
        i2 = arrayOfInt2[1] - arrayOfInt1[1];
      }
      if ((q & 0x5) == 5)
      {
        if (i1 != 0) {
          i1 = i3 + i4;
        } else {
          i1 = i3 - ((View)localObject2).getWidth();
        }
      }
      else if (i1 != 0) {
        i1 = i3 + ((View)localObject2).getWidth();
      } else {
        i1 = i3 - i4;
      }
      localMenuPopupWindow.setHorizontalOffset(i1);
      localMenuPopupWindow.setOverlapAnchor(true);
      localMenuPopupWindow.setVerticalOffset(i2);
    }
    else
    {
      if (t) {
        localMenuPopupWindow.setHorizontalOffset(v);
      }
      if (u) {
        localMenuPopupWindow.setVerticalOffset(w);
      }
      localMenuPopupWindow.setEpicenterBounds(b());
    }
    Object localObject2 = new a(localMenuPopupWindow, paramMenuBuilder, s);
    b.add(localObject2);
    localMenuPopupWindow.show();
    localObject2 = localMenuPopupWindow.getListView();
    ((ListView)localObject2).setOnKeyListener(this);
    if ((localObject1 == null) && (y) && (paramMenuBuilder.getHeaderTitle() != null))
    {
      localObject1 = (FrameLayout)((LayoutInflater)localObject3).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup)localObject2, false);
      localObject3 = (TextView)((FrameLayout)localObject1).findViewById(16908310);
      ((FrameLayout)localObject1).setEnabled(false);
      ((TextView)localObject3).setText(paramMenuBuilder.getHeaderTitle());
      ((ListView)localObject2).addHeaderView((View)localObject1, null, false);
      localMenuPopupWindow.show();
    }
  }
  
  private int d()
  {
    int i2 = ViewCompat.getLayoutDirection(r);
    int i1 = 1;
    if (i2 == 1) {
      i1 = 0;
    }
    return i1;
  }
  
  private int d(int paramInt)
  {
    ListView localListView = ((a)b.get(b.size() - 1)).a();
    int[] arrayOfInt = new int[2];
    localListView.getLocationOnScreen(arrayOfInt);
    Rect localRect = new Rect();
    d.getWindowVisibleDisplayFrame(localRect);
    if (s == 1)
    {
      if (arrayOfInt[0] + localListView.getWidth() + paramInt > right) {
        return 0;
      }
      return 1;
    }
    if (arrayOfInt[0] - paramInt < 0) {
      return 1;
    }
    return 0;
  }
  
  private int d(@NonNull MenuBuilder paramMenuBuilder)
  {
    int i2 = b.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (paramMenuBuilder == b.get(i1)).b) {
        return i1;
      }
      i1 += 1;
    }
    return -1;
  }
  
  public void a(int paramInt)
  {
    if (p != paramInt)
    {
      p = paramInt;
      q = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(r));
    }
  }
  
  public void a(MenuBuilder paramMenuBuilder)
  {
    paramMenuBuilder.addMenuPresenter(this, h);
    if (isShowing())
    {
      c(paramMenuBuilder);
      return;
    }
    m.add(paramMenuBuilder);
  }
  
  public void a(@NonNull View paramView)
  {
    if (r != paramView)
    {
      r = paramView;
      q = GravityCompat.getAbsoluteGravity(p, ViewCompat.getLayoutDirection(r));
    }
  }
  
  public void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    A = paramOnDismissListener;
  }
  
  public void a(boolean paramBoolean)
  {
    x = paramBoolean;
  }
  
  protected boolean a()
  {
    return false;
  }
  
  public void b(int paramInt)
  {
    t = true;
    v = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    y = paramBoolean;
  }
  
  public void c(int paramInt)
  {
    u = true;
    w = paramInt;
  }
  
  public void dismiss()
  {
    int i1 = b.size();
    if (i1 > 0)
    {
      a[] arrayOfA = (a[])b.toArray(new a[i1]);
      i1 -= 1;
      while (i1 >= 0)
      {
        a localA = arrayOfA[i1];
        if (a.isShowing()) {
          a.dismiss();
        }
        i1 -= 1;
      }
    }
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public ListView getListView()
  {
    if (b.isEmpty()) {
      return null;
    }
    return ((a)b.get(b.size() - 1)).a();
  }
  
  public boolean isShowing()
  {
    int i1 = b.size();
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (i1 > 0)
    {
      bool1 = bool2;
      if (b.get(0)).a.isShowing()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    int i1 = d(paramMenuBuilder);
    if (i1 < 0) {
      return;
    }
    int i2 = i1 + 1;
    if (i2 < b.size()) {
      b.get(i2)).b.close(false);
    }
    a localA = (a)b.remove(i1);
    b.removeMenuPresenter(this);
    if (f)
    {
      a.setExitTransition(null);
      a.setAnimationStyle(0);
    }
    a.dismiss();
    i1 = b.size();
    if (i1 > 0) {
      s = b.get(i1 - 1)).c;
    } else {
      s = d();
    }
    if (i1 == 0)
    {
      dismiss();
      if (z != null) {
        z.onCloseMenu(paramMenuBuilder, true);
      }
      if (e != null)
      {
        if (e.isAlive()) {
          e.removeGlobalOnLayoutListener(c);
        }
        e = null;
      }
      d.removeOnAttachStateChangeListener(n);
      A.onDismiss();
      return;
    }
    if (paramBoolean) {
      b.get(0)).b.close(false);
    }
  }
  
  public void onDismiss()
  {
    int i2 = b.size();
    int i1 = 0;
    while (i1 < i2)
    {
      localA = (a)b.get(i1);
      if (!a.isShowing()) {
        break label53;
      }
      i1 += 1;
    }
    a localA = null;
    label53:
    if (localA != null) {
      b.close(false);
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
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      a localA = (a)localIterator.next();
      if (paramSubMenuBuilder == b)
      {
        localA.a().requestFocus();
        return true;
      }
    }
    if (paramSubMenuBuilder.hasVisibleItems())
    {
      a(paramSubMenuBuilder);
      if (z != null) {
        z.onOpenSubMenu(paramSubMenuBuilder);
      }
      return true;
    }
    return false;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    z = paramCallback;
  }
  
  public void show()
  {
    if (isShowing()) {
      return;
    }
    Iterator localIterator = m.iterator();
    while (localIterator.hasNext()) {
      c((MenuBuilder)localIterator.next());
    }
    m.clear();
    d = r;
    if (d != null)
    {
      int i1;
      if (e == null) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      e = d.getViewTreeObserver();
      if (i1 != 0) {
        e.addOnGlobalLayoutListener(c);
      }
      d.addOnAttachStateChangeListener(n);
    }
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      a(((a)localIterator.next()).a().getAdapter()).notifyDataSetChanged();
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface HorizPosition {}
  
  private static class a
  {
    public final MenuPopupWindow a;
    public final MenuBuilder b;
    public final int c;
    
    public a(@NonNull MenuPopupWindow paramMenuPopupWindow, @NonNull MenuBuilder paramMenuBuilder, int paramInt)
    {
      a = paramMenuPopupWindow;
      b = paramMenuBuilder;
      c = paramInt;
    }
    
    public ListView a()
    {
      return a.getListView();
    }
  }
}
