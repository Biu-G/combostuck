package android.support.v7.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;

public class ActionBarDrawerToggle
  implements DrawerLayout.DrawerListener
{
  boolean a = true;
  View.OnClickListener b;
  private final Delegate c;
  private final DrawerLayout d;
  private DrawerArrowDrawable e;
  private boolean f = true;
  private Drawable g;
  private boolean h;
  private final int i;
  private final int j;
  private boolean k = false;
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, @StringRes int paramInt1, @StringRes int paramInt2)
  {
    this(paramActivity, null, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, Toolbar paramToolbar, @StringRes int paramInt1, @StringRes int paramInt2)
  {
    this(paramActivity, paramToolbar, paramDrawerLayout, null, paramInt1, paramInt2);
  }
  
  ActionBarDrawerToggle(Activity paramActivity, Toolbar paramToolbar, DrawerLayout paramDrawerLayout, DrawerArrowDrawable paramDrawerArrowDrawable, @StringRes int paramInt1, @StringRes int paramInt2)
  {
    if (paramToolbar != null)
    {
      c = new b(paramToolbar);
      paramToolbar.setNavigationOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (a)
          {
            a();
            return;
          }
          if (b != null) {
            b.onClick(paramAnonymousView);
          }
        }
      });
    }
    else if ((paramActivity instanceof DelegateProvider))
    {
      c = ((DelegateProvider)paramActivity).getDrawerToggleDelegate();
    }
    else
    {
      c = new a(paramActivity);
    }
    d = paramDrawerLayout;
    i = paramInt1;
    j = paramInt2;
    if (paramDrawerArrowDrawable == null) {
      e = new DrawerArrowDrawable(c.getActionBarThemedContext());
    } else {
      e = paramDrawerArrowDrawable;
    }
    g = b();
  }
  
  private void a(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      e.setVerticalMirror(true);
    } else if (paramFloat == 0.0F) {
      e.setVerticalMirror(false);
    }
    e.setProgress(paramFloat);
  }
  
  void a()
  {
    int m = d.getDrawerLockMode(8388611);
    if ((d.isDrawerVisible(8388611)) && (m != 2))
    {
      d.closeDrawer(8388611);
      return;
    }
    if (m != 1) {
      d.openDrawer(8388611);
    }
  }
  
  void a(int paramInt)
  {
    c.setActionBarDescription(paramInt);
  }
  
  void a(Drawable paramDrawable, int paramInt)
  {
    if ((!k) && (!c.isNavigationVisible()))
    {
      Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
      k = true;
    }
    c.setActionBarUpIndicator(paramDrawable, paramInt);
  }
  
  Drawable b()
  {
    return c.getThemeUpIndicator();
  }
  
  @NonNull
  public DrawerArrowDrawable getDrawerArrowDrawable()
  {
    return e;
  }
  
  public View.OnClickListener getToolbarNavigationClickListener()
  {
    return b;
  }
  
  public boolean isDrawerIndicatorEnabled()
  {
    return a;
  }
  
  public boolean isDrawerSlideAnimationEnabled()
  {
    return f;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (!h) {
      g = b();
    }
    syncState();
  }
  
  public void onDrawerClosed(View paramView)
  {
    a(0.0F);
    if (a) {
      a(i);
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    a(1.0F);
    if (a) {
      a(j);
    }
  }
  
  public void onDrawerSlide(View paramView, float paramFloat)
  {
    if (f)
    {
      a(Math.min(1.0F, Math.max(0.0F, paramFloat)));
      return;
    }
    a(0.0F);
  }
  
  public void onDrawerStateChanged(int paramInt) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (a))
    {
      a();
      return true;
    }
    return false;
  }
  
  public void setDrawerArrowDrawable(@NonNull DrawerArrowDrawable paramDrawerArrowDrawable)
  {
    e = paramDrawerArrowDrawable;
    syncState();
  }
  
  public void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    if (paramBoolean != a)
    {
      if (paramBoolean)
      {
        DrawerArrowDrawable localDrawerArrowDrawable = e;
        int m;
        if (d.isDrawerOpen(8388611)) {
          m = j;
        } else {
          m = i;
        }
        a(localDrawerArrowDrawable, m);
      }
      else
      {
        a(g, 0);
      }
      a = paramBoolean;
    }
  }
  
  public void setDrawerSlideAnimationEnabled(boolean paramBoolean)
  {
    f = paramBoolean;
    if (!paramBoolean) {
      a(0.0F);
    }
  }
  
  public void setHomeAsUpIndicator(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = d.getResources().getDrawable(paramInt);
    } else {
      localDrawable = null;
    }
    setHomeAsUpIndicator(localDrawable);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    if (paramDrawable == null)
    {
      g = b();
      h = false;
    }
    else
    {
      g = paramDrawable;
      h = true;
    }
    if (!a) {
      a(g, 0);
    }
  }
  
  public void setToolbarNavigationClickListener(View.OnClickListener paramOnClickListener)
  {
    b = paramOnClickListener;
  }
  
  public void syncState()
  {
    if (d.isDrawerOpen(8388611)) {
      a(1.0F);
    } else {
      a(0.0F);
    }
    if (a)
    {
      DrawerArrowDrawable localDrawerArrowDrawable = e;
      int m;
      if (d.isDrawerOpen(8388611)) {
        m = j;
      } else {
        m = i;
      }
      a(localDrawerArrowDrawable, m);
    }
  }
  
  public static abstract interface Delegate
  {
    public abstract Context getActionBarThemedContext();
    
    public abstract Drawable getThemeUpIndicator();
    
    public abstract boolean isNavigationVisible();
    
    public abstract void setActionBarDescription(@StringRes int paramInt);
    
    public abstract void setActionBarUpIndicator(Drawable paramDrawable, @StringRes int paramInt);
  }
  
  public static abstract interface DelegateProvider
  {
    @Nullable
    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();
  }
  
  private static class a
    implements ActionBarDrawerToggle.Delegate
  {
    private final Activity a;
    private a.a b;
    
    a(Activity paramActivity)
    {
      a = paramActivity;
    }
    
    public Context getActionBarThemedContext()
    {
      ActionBar localActionBar = a.getActionBar();
      if (localActionBar != null) {
        return localActionBar.getThemedContext();
      }
      return a;
    }
    
    public Drawable getThemeUpIndicator()
    {
      if (Build.VERSION.SDK_INT >= 18)
      {
        TypedArray localTypedArray = getActionBarThemedContext().obtainStyledAttributes(null, new int[] { 16843531 }, 16843470, 0);
        Drawable localDrawable = localTypedArray.getDrawable(0);
        localTypedArray.recycle();
        return localDrawable;
      }
      return a.a(a);
    }
    
    public boolean isNavigationVisible()
    {
      ActionBar localActionBar = a.getActionBar();
      return (localActionBar != null) && ((localActionBar.getDisplayOptions() & 0x4) != 0);
    }
    
    public void setActionBarDescription(int paramInt)
    {
      if (Build.VERSION.SDK_INT >= 18)
      {
        ActionBar localActionBar = a.getActionBar();
        if (localActionBar != null) {
          localActionBar.setHomeActionContentDescription(paramInt);
        }
      }
      else
      {
        b = a.a(b, a, paramInt);
      }
    }
    
    public void setActionBarUpIndicator(Drawable paramDrawable, int paramInt)
    {
      ActionBar localActionBar = a.getActionBar();
      if (localActionBar != null)
      {
        if (Build.VERSION.SDK_INT >= 18)
        {
          localActionBar.setHomeAsUpIndicator(paramDrawable);
          localActionBar.setHomeActionContentDescription(paramInt);
          return;
        }
        localActionBar.setDisplayShowHomeEnabled(true);
        b = a.a(b, a, paramDrawable, paramInt);
        localActionBar.setDisplayShowHomeEnabled(false);
      }
    }
  }
  
  static class b
    implements ActionBarDrawerToggle.Delegate
  {
    final Toolbar a;
    final Drawable b;
    final CharSequence c;
    
    b(Toolbar paramToolbar)
    {
      a = paramToolbar;
      b = paramToolbar.getNavigationIcon();
      c = paramToolbar.getNavigationContentDescription();
    }
    
    public Context getActionBarThemedContext()
    {
      return a.getContext();
    }
    
    public Drawable getThemeUpIndicator()
    {
      return b;
    }
    
    public boolean isNavigationVisible()
    {
      return true;
    }
    
    public void setActionBarDescription(@StringRes int paramInt)
    {
      if (paramInt == 0)
      {
        a.setNavigationContentDescription(c);
        return;
      }
      a.setNavigationContentDescription(paramInt);
    }
    
    public void setActionBarUpIndicator(Drawable paramDrawable, @StringRes int paramInt)
    {
      a.setNavigationIcon(paramDrawable);
      setActionBarDescription(paramInt);
    }
  }
}
