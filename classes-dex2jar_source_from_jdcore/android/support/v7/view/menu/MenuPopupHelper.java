package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.dimen;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class MenuPopupHelper
{
  private final Context a;
  private final MenuBuilder b;
  private final boolean c;
  private final int d;
  private final int e;
  private View f;
  private int g = 8388611;
  private boolean h;
  private MenuPresenter.Callback i;
  private e j;
  private PopupWindow.OnDismissListener k;
  private final PopupWindow.OnDismissListener l = new PopupWindow.OnDismissListener()
  {
    public void onDismiss()
    {
      MenuPopupHelper.this.onDismiss();
    }
  };
  
  public MenuPopupHelper(@NonNull Context paramContext, @NonNull MenuBuilder paramMenuBuilder)
  {
    this(paramContext, paramMenuBuilder, null, false, R.attr.popupMenuStyle, 0);
  }
  
  public MenuPopupHelper(@NonNull Context paramContext, @NonNull MenuBuilder paramMenuBuilder, @NonNull View paramView)
  {
    this(paramContext, paramMenuBuilder, paramView, false, R.attr.popupMenuStyle, 0);
  }
  
  public MenuPopupHelper(@NonNull Context paramContext, @NonNull MenuBuilder paramMenuBuilder, @NonNull View paramView, boolean paramBoolean, @AttrRes int paramInt)
  {
    this(paramContext, paramMenuBuilder, paramView, paramBoolean, paramInt, 0);
  }
  
  public MenuPopupHelper(@NonNull Context paramContext, @NonNull MenuBuilder paramMenuBuilder, @NonNull View paramView, boolean paramBoolean, @AttrRes int paramInt1, @StyleRes int paramInt2)
  {
    a = paramContext;
    b = paramMenuBuilder;
    f = paramView;
    c = paramBoolean;
    d = paramInt1;
    e = paramInt2;
  }
  
  @NonNull
  private e a()
  {
    Object localObject = ((WindowManager)a.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    if (Build.VERSION.SDK_INT >= 17) {
      ((Display)localObject).getRealSize(localPoint);
    } else {
      ((Display)localObject).getSize(localPoint);
    }
    int m;
    if (Math.min(x, y) >= a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
      m = 1;
    } else {
      m = 0;
    }
    if (m != 0) {
      localObject = new CascadingMenuPopup(a, f, d, e, c);
    } else {
      localObject = new g(a, b, f, d, e, c);
    }
    ((e)localObject).a(b);
    ((e)localObject).a(l);
    ((e)localObject).a(f);
    ((e)localObject).setCallback(i);
    ((e)localObject).a(h);
    ((e)localObject).a(g);
    return localObject;
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    e localE = getPopup();
    localE.b(paramBoolean2);
    if (paramBoolean1)
    {
      int m = paramInt1;
      if ((GravityCompat.getAbsoluteGravity(g, ViewCompat.getLayoutDirection(f)) & 0x7) == 5) {
        m = paramInt1 - f.getWidth();
      }
      localE.b(m);
      localE.c(paramInt2);
      paramInt1 = (int)(a.getResources().getDisplayMetrics().density * 48.0F / 2.0F);
      localE.a(new Rect(m - paramInt1, paramInt2 - paramInt1, m + paramInt1, paramInt2 + paramInt1));
    }
    localE.show();
  }
  
  public void dismiss()
  {
    if (isShowing()) {
      j.dismiss();
    }
  }
  
  public int getGravity()
  {
    return g;
  }
  
  public ListView getListView()
  {
    return getPopup().getListView();
  }
  
  @NonNull
  public e getPopup()
  {
    if (j == null) {
      j = a();
    }
    return j;
  }
  
  public boolean isShowing()
  {
    return (j != null) && (j.isShowing());
  }
  
  protected void onDismiss()
  {
    j = null;
    if (k != null) {
      k.onDismiss();
    }
  }
  
  public void setAnchorView(@NonNull View paramView)
  {
    f = paramView;
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    h = paramBoolean;
    if (j != null) {
      j.a(paramBoolean);
    }
  }
  
  public void setGravity(int paramInt)
  {
    g = paramInt;
  }
  
  public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener paramOnDismissListener)
  {
    k = paramOnDismissListener;
  }
  
  public void setPresenterCallback(@Nullable MenuPresenter.Callback paramCallback)
  {
    i = paramCallback;
    if (j != null) {
      j.setCallback(paramCallback);
    }
  }
  
  public void show()
  {
    if (tryShow()) {
      return;
    }
    throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
  }
  
  public void show(int paramInt1, int paramInt2)
  {
    if (tryShow(paramInt1, paramInt2)) {
      return;
    }
    throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
  }
  
  public boolean tryShow()
  {
    if (isShowing()) {
      return true;
    }
    if (f == null) {
      return false;
    }
    a(0, 0, false, false);
    return true;
  }
  
  public boolean tryShow(int paramInt1, int paramInt2)
  {
    if (isShowing()) {
      return true;
    }
    if (f == null) {
      return false;
    }
    a(paramInt1, paramInt2, true, true);
    return true;
  }
}
