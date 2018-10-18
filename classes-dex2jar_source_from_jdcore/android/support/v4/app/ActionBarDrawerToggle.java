package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.InsetDrawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import java.lang.reflect.Method;

@Deprecated
public class ActionBarDrawerToggle
  implements DrawerLayout.DrawerListener
{
  private static final int[] b = { 16843531 };
  final Activity a;
  private final Delegate c;
  private final DrawerLayout d;
  private boolean e = true;
  private boolean f;
  private Drawable g;
  private Drawable h;
  private b i;
  private final int j;
  private final int k;
  private final int l;
  private a m;
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, @DrawableRes int paramInt1, @StringRes int paramInt2, @StringRes int paramInt3)
  {
    this(paramActivity, paramDrawerLayout, a(paramActivity) ^ true, paramInt1, paramInt2, paramInt3);
  }
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, boolean paramBoolean, @DrawableRes int paramInt1, @StringRes int paramInt2, @StringRes int paramInt3)
  {
    a = paramActivity;
    if ((paramActivity instanceof DelegateProvider)) {
      c = ((DelegateProvider)paramActivity).getDrawerToggleDelegate();
    } else {
      c = null;
    }
    d = paramDrawerLayout;
    j = paramInt1;
    k = paramInt2;
    l = paramInt3;
    g = a();
    h = ContextCompat.getDrawable(paramActivity, paramInt1);
    i = new b(h);
    paramActivity = i;
    float f1;
    if (paramBoolean) {
      f1 = 0.33333334F;
    } else {
      f1 = 0.0F;
    }
    paramActivity.b(f1);
  }
  
  private Drawable a()
  {
    if (c != null) {
      return c.getThemeUpIndicator();
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      localObject = a.getActionBar();
      if (localObject != null) {
        localObject = ((ActionBar)localObject).getThemedContext();
      } else {
        localObject = a;
      }
      localObject = ((Context)localObject).obtainStyledAttributes(null, b, 16843470, 0);
      localDrawable = ((TypedArray)localObject).getDrawable(0);
      ((TypedArray)localObject).recycle();
      return localDrawable;
    }
    Object localObject = a.obtainStyledAttributes(b);
    Drawable localDrawable = ((TypedArray)localObject).getDrawable(0);
    ((TypedArray)localObject).recycle();
    return localDrawable;
  }
  
  private void a(int paramInt)
  {
    if (c != null)
    {
      c.setActionBarDescription(paramInt);
      return;
    }
    ActionBar localActionBar;
    if (Build.VERSION.SDK_INT >= 18)
    {
      localActionBar = a.getActionBar();
      if (localActionBar != null) {
        localActionBar.setHomeActionContentDescription(paramInt);
      }
    }
    else
    {
      if (m == null) {
        m = new a(a);
      }
      if (m.a != null) {
        try
        {
          localActionBar = a.getActionBar();
          m.b.invoke(localActionBar, new Object[] { Integer.valueOf(paramInt) });
          localActionBar.setSubtitle(localActionBar.getSubtitle());
          return;
        }
        catch (Exception localException)
        {
          Log.w("ActionBarDrawerToggle", "Couldn't set content description via JB-MR2 API", localException);
        }
      }
    }
  }
  
  private void a(Drawable paramDrawable, int paramInt)
  {
    if (c != null)
    {
      c.setActionBarUpIndicator(paramDrawable, paramInt);
      return;
    }
    ActionBar localActionBar;
    if (Build.VERSION.SDK_INT >= 18)
    {
      localActionBar = a.getActionBar();
      if (localActionBar != null)
      {
        localActionBar.setHomeAsUpIndicator(paramDrawable);
        localActionBar.setHomeActionContentDescription(paramInt);
      }
    }
    else
    {
      if (m == null) {
        m = new a(a);
      }
      if (m.a != null) {
        try
        {
          localActionBar = a.getActionBar();
          m.a.invoke(localActionBar, new Object[] { paramDrawable });
          m.b.invoke(localActionBar, new Object[] { Integer.valueOf(paramInt) });
          return;
        }
        catch (Exception paramDrawable)
        {
          Log.w("ActionBarDrawerToggle", "Couldn't set home-as-up indicator via JB-MR2 API", paramDrawable);
          return;
        }
      }
      if (m.c != null)
      {
        m.c.setImageDrawable(paramDrawable);
        return;
      }
      Log.w("ActionBarDrawerToggle", "Couldn't set home-as-up indicator");
    }
  }
  
  private static boolean a(Context paramContext)
  {
    return (getApplicationInfotargetSdkVersion >= 21) && (Build.VERSION.SDK_INT >= 21);
  }
  
  public boolean isDrawerIndicatorEnabled()
  {
    return e;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (!f) {
      g = a();
    }
    h = ContextCompat.getDrawable(a, j);
    syncState();
  }
  
  public void onDrawerClosed(View paramView)
  {
    i.a(0.0F);
    if (e) {
      a(k);
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    i.a(1.0F);
    if (e) {
      a(l);
    }
  }
  
  public void onDrawerSlide(View paramView, float paramFloat)
  {
    float f1 = i.a();
    if (paramFloat > 0.5F) {
      paramFloat = Math.max(f1, Math.max(0.0F, paramFloat - 0.5F) * 2.0F);
    } else {
      paramFloat = Math.min(f1, paramFloat * 2.0F);
    }
    i.a(paramFloat);
  }
  
  public void onDrawerStateChanged(int paramInt) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (e))
    {
      if (d.isDrawerVisible(8388611)) {
        d.closeDrawer(8388611);
      } else {
        d.openDrawer(8388611);
      }
      return true;
    }
    return false;
  }
  
  public void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    if (paramBoolean != e)
    {
      if (paramBoolean)
      {
        b localB = i;
        int n;
        if (d.isDrawerOpen(8388611)) {
          n = l;
        } else {
          n = k;
        }
        a(localB, n);
      }
      else
      {
        a(g, 0);
      }
      e = paramBoolean;
    }
  }
  
  public void setHomeAsUpIndicator(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = ContextCompat.getDrawable(a, paramInt);
    } else {
      localDrawable = null;
    }
    setHomeAsUpIndicator(localDrawable);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    if (paramDrawable == null)
    {
      g = a();
      f = false;
    }
    else
    {
      g = paramDrawable;
      f = true;
    }
    if (!e) {
      a(g, 0);
    }
  }
  
  public void syncState()
  {
    if (d.isDrawerOpen(8388611)) {
      i.a(1.0F);
    } else {
      i.a(0.0F);
    }
    if (e)
    {
      b localB = i;
      int n;
      if (d.isDrawerOpen(8388611)) {
        n = l;
      } else {
        n = k;
      }
      a(localB, n);
    }
  }
  
  @Deprecated
  public static abstract interface Delegate
  {
    @Nullable
    public abstract Drawable getThemeUpIndicator();
    
    public abstract void setActionBarDescription(@StringRes int paramInt);
    
    public abstract void setActionBarUpIndicator(Drawable paramDrawable, @StringRes int paramInt);
  }
  
  @Deprecated
  public static abstract interface DelegateProvider
  {
    @Nullable
    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();
  }
  
  private static class a
  {
    Method a;
    Method b;
    ImageView c;
    
    a(Activity paramActivity)
    {
      try
      {
        a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", new Class[] { Drawable.class });
        b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", new Class[] { Integer.TYPE });
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Object localObject;
        for (;;) {}
      }
      paramActivity = paramActivity.findViewById(16908332);
      if (paramActivity == null) {
        return;
      }
      localObject = (ViewGroup)paramActivity.getParent();
      if (((ViewGroup)localObject).getChildCount() != 2) {
        return;
      }
      paramActivity = ((ViewGroup)localObject).getChildAt(0);
      localObject = ((ViewGroup)localObject).getChildAt(1);
      if (paramActivity.getId() == 16908332) {
        paramActivity = (Activity)localObject;
      }
      if ((paramActivity instanceof ImageView)) {
        c = ((ImageView)paramActivity);
      }
    }
  }
  
  private class b
    extends InsetDrawable
    implements Drawable.Callback
  {
    private final boolean b;
    private final Rect c;
    private float d;
    private float e;
    
    b(Drawable paramDrawable)
    {
      super(0);
      if (Build.VERSION.SDK_INT > 18) {
        bool = true;
      }
      b = bool;
      c = new Rect();
    }
    
    public float a()
    {
      return d;
    }
    
    public void a(float paramFloat)
    {
      d = paramFloat;
      invalidateSelf();
    }
    
    public void b(float paramFloat)
    {
      e = paramFloat;
      invalidateSelf();
    }
    
    public void draw(@NonNull Canvas paramCanvas)
    {
      copyBounds(c);
      paramCanvas.save();
      int i = ViewCompat.getLayoutDirection(a.getWindow().getDecorView());
      int j = 1;
      if (i == 1) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        j = -1;
      }
      int k = c.width();
      float f1 = -e;
      float f2 = k;
      paramCanvas.translate(f1 * f2 * d * j, 0.0F);
      if ((i != 0) && (!b))
      {
        paramCanvas.translate(f2, 0.0F);
        paramCanvas.scale(-1.0F, 1.0F);
      }
      super.draw(paramCanvas);
      paramCanvas.restore();
    }
  }
}
