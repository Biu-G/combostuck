package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R.style;
import android.view.LayoutInflater;

public class ContextThemeWrapper
  extends ContextWrapper
{
  private int a;
  private Resources.Theme b;
  private LayoutInflater c;
  private Configuration d;
  private Resources e;
  
  public ContextThemeWrapper()
  {
    super(null);
  }
  
  public ContextThemeWrapper(Context paramContext, @StyleRes int paramInt)
  {
    super(paramContext);
    a = paramInt;
  }
  
  public ContextThemeWrapper(Context paramContext, Resources.Theme paramTheme)
  {
    super(paramContext);
    b = paramTheme;
  }
  
  private Resources a()
  {
    if (e == null) {
      if (d == null) {
        e = super.getResources();
      } else if (Build.VERSION.SDK_INT >= 17) {
        e = createConfigurationContext(d).getResources();
      }
    }
    return e;
  }
  
  private void b()
  {
    boolean bool;
    if (b == null) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool)
    {
      b = getResources().newTheme();
      Resources.Theme localTheme = getBaseContext().getTheme();
      if (localTheme != null) {
        b.setTo(localTheme);
      }
    }
    onApplyThemeResource(b, a, bool);
  }
  
  public void applyOverrideConfiguration(Configuration paramConfiguration)
  {
    if (e == null)
    {
      if (d == null)
      {
        d = new Configuration(paramConfiguration);
        return;
      }
      throw new IllegalStateException("Override configuration has already been set");
    }
    throw new IllegalStateException("getResources() or getAssets() has already been called");
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }
  
  public AssetManager getAssets()
  {
    return getResources().getAssets();
  }
  
  public Resources getResources()
  {
    return a();
  }
  
  public Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (c == null) {
        c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      }
      return c;
    }
    return getBaseContext().getSystemService(paramString);
  }
  
  public Resources.Theme getTheme()
  {
    if (b != null) {
      return b;
    }
    if (a == 0) {
      a = R.style.Theme_AppCompat_Light;
    }
    b();
    return b;
  }
  
  public int getThemeResId()
  {
    return a;
  }
  
  protected void onApplyThemeResource(Resources.Theme paramTheme, int paramInt, boolean paramBoolean)
  {
    paramTheme.applyStyle(paramInt, true);
  }
  
  public void setTheme(int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      b();
    }
  }
}
