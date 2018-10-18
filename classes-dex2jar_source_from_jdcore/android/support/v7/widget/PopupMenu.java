package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.AttrRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R.attr;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.ShowableListMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow.OnDismissListener;

public class PopupMenu
{
  final MenuPopupHelper a;
  OnMenuItemClickListener b;
  OnDismissListener c;
  private final Context d;
  private final MenuBuilder e;
  private final View f;
  private View.OnTouchListener g;
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView)
  {
    this(paramContext, paramView, 0);
  }
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView, int paramInt)
  {
    this(paramContext, paramView, paramInt, R.attr.popupMenuStyle, 0);
  }
  
  public PopupMenu(@NonNull Context paramContext, @NonNull View paramView, int paramInt1, @AttrRes int paramInt2, @StyleRes int paramInt3)
  {
    d = paramContext;
    f = paramView;
    e = new MenuBuilder(paramContext);
    e.setCallback(new MenuBuilder.Callback()
    {
      public boolean onMenuItemSelected(MenuBuilder paramAnonymousMenuBuilder, MenuItem paramAnonymousMenuItem)
      {
        if (b != null) {
          return b.onMenuItemClick(paramAnonymousMenuItem);
        }
        return false;
      }
      
      public void onMenuModeChange(MenuBuilder paramAnonymousMenuBuilder) {}
    });
    a = new MenuPopupHelper(paramContext, e, paramView, false, paramInt2, paramInt3);
    a.setGravity(paramInt1);
    a.setOnDismissListener(new PopupWindow.OnDismissListener()
    {
      public void onDismiss()
      {
        if (c != null) {
          c.onDismiss(PopupMenu.this);
        }
      }
    });
  }
  
  public void dismiss()
  {
    a.dismiss();
  }
  
  @NonNull
  public View.OnTouchListener getDragToOpenListener()
  {
    if (g == null) {
      g = new ForwardingListener(f)
      {
        public ShowableListMenu getPopup()
        {
          return a.getPopup();
        }
        
        protected boolean onForwardingStarted()
        {
          show();
          return true;
        }
        
        protected boolean onForwardingStopped()
        {
          dismiss();
          return true;
        }
      };
    }
    return g;
  }
  
  public int getGravity()
  {
    return a.getGravity();
  }
  
  @NonNull
  public Menu getMenu()
  {
    return e;
  }
  
  @NonNull
  public MenuInflater getMenuInflater()
  {
    return new SupportMenuInflater(d);
  }
  
  public void inflate(@MenuRes int paramInt)
  {
    getMenuInflater().inflate(paramInt, e);
  }
  
  public void setGravity(int paramInt)
  {
    a.setGravity(paramInt);
  }
  
  public void setOnDismissListener(@Nullable OnDismissListener paramOnDismissListener)
  {
    c = paramOnDismissListener;
  }
  
  public void setOnMenuItemClickListener(@Nullable OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    b = paramOnMenuItemClickListener;
  }
  
  public void show()
  {
    a.show();
  }
  
  public static abstract interface OnDismissListener
  {
    public abstract void onDismiss(PopupMenu paramPopupMenu);
  }
  
  public static abstract interface OnMenuItemClickListener
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
}
