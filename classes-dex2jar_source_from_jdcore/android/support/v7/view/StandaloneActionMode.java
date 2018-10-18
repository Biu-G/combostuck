package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPopupHelper;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class StandaloneActionMode
  extends ActionMode
  implements MenuBuilder.Callback
{
  private Context a;
  private ActionBarContextView b;
  private ActionMode.Callback c;
  private WeakReference<View> d;
  private boolean e;
  private boolean f;
  private MenuBuilder g;
  
  public StandaloneActionMode(Context paramContext, ActionBarContextView paramActionBarContextView, ActionMode.Callback paramCallback, boolean paramBoolean)
  {
    a = paramContext;
    b = paramActionBarContextView;
    c = paramCallback;
    g = new MenuBuilder(paramActionBarContextView.getContext()).setDefaultShowAsAction(1);
    g.setCallback(this);
    f = paramBoolean;
  }
  
  public void finish()
  {
    if (e) {
      return;
    }
    e = true;
    b.sendAccessibilityEvent(32);
    c.onDestroyActionMode(this);
  }
  
  public View getCustomView()
  {
    if (d != null) {
      return (View)d.get();
    }
    return null;
  }
  
  public Menu getMenu()
  {
    return g;
  }
  
  public MenuInflater getMenuInflater()
  {
    return new SupportMenuInflater(b.getContext());
  }
  
  public CharSequence getSubtitle()
  {
    return b.getSubtitle();
  }
  
  public CharSequence getTitle()
  {
    return b.getTitle();
  }
  
  public void invalidate()
  {
    c.onPrepareActionMode(this, g);
  }
  
  public boolean isTitleOptional()
  {
    return b.isTitleOptional();
  }
  
  public boolean isUiFocusable()
  {
    return f;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder) {}
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return c.onActionItemClicked(this, paramMenuItem);
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    invalidate();
    b.showOverflowMenu();
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (!paramSubMenuBuilder.hasVisibleItems()) {
      return true;
    }
    new MenuPopupHelper(b.getContext(), paramSubMenuBuilder).show();
    return true;
  }
  
  public void setCustomView(View paramView)
  {
    b.setCustomView(paramView);
    if (paramView != null) {
      paramView = new WeakReference(paramView);
    } else {
      paramView = null;
    }
    d = paramView;
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(a.getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(a.getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b.setTitle(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    super.setTitleOptionalHint(paramBoolean);
    b.setTitleOptional(paramBoolean);
  }
}
