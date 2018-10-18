package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TintContextWrapper
  extends ContextWrapper
{
  private static final Object a = new Object();
  private static ArrayList<WeakReference<TintContextWrapper>> b;
  private final Resources c;
  private final Resources.Theme d;
  
  private TintContextWrapper(@NonNull Context paramContext)
  {
    super(paramContext);
    if (VectorEnabledTintResources.shouldBeUsed())
    {
      c = new VectorEnabledTintResources(this, paramContext.getResources());
      d = c.newTheme();
      d.setTo(paramContext.getTheme());
      return;
    }
    c = new ae(this, paramContext.getResources());
    d = null;
  }
  
  private static boolean a(@NonNull Context paramContext)
  {
    boolean bool2 = paramContext instanceof TintContextWrapper;
    boolean bool1 = false;
    if ((!bool2) && (!(paramContext.getResources() instanceof ae)))
    {
      if ((paramContext.getResources() instanceof VectorEnabledTintResources)) {
        return false;
      }
      if ((Build.VERSION.SDK_INT < 21) || (VectorEnabledTintResources.shouldBeUsed())) {
        bool1 = true;
      }
      return bool1;
    }
    return false;
  }
  
  public static Context wrap(@NonNull Context paramContext)
  {
    if (a(paramContext)) {}
    for (;;)
    {
      int i;
      synchronized (a)
      {
        if (b == null)
        {
          b = new ArrayList();
        }
        else
        {
          i = b.size() - 1;
          if (i >= 0)
          {
            localObject1 = (WeakReference)b.get(i);
            if ((localObject1 != null) && (((WeakReference)localObject1).get() != null)) {
              break label168;
            }
            b.remove(i);
            break label168;
          }
          i = b.size() - 1;
          if (i >= 0)
          {
            localObject1 = (WeakReference)b.get(i);
            if (localObject1 == null) {
              break label175;
            }
            localObject1 = (TintContextWrapper)((WeakReference)localObject1).get();
            if ((localObject1 == null) || (((TintContextWrapper)localObject1).getBaseContext() != paramContext)) {
              break label180;
            }
            return localObject1;
          }
        }
        paramContext = new TintContextWrapper(paramContext);
        b.add(new WeakReference(paramContext));
        return paramContext;
      }
      return paramContext;
      label168:
      i -= 1;
      continue;
      label175:
      Object localObject1 = null;
      continue;
      label180:
      i -= 1;
    }
  }
  
  public AssetManager getAssets()
  {
    return c.getAssets();
  }
  
  public Resources getResources()
  {
    return c;
  }
  
  public Resources.Theme getTheme()
  {
    if (d == null) {
      return super.getTheme();
    }
    return d;
  }
  
  public void setTheme(int paramInt)
  {
    if (d == null)
    {
      super.setTheme(paramInt);
      return;
    }
    d.applyStyle(paramInt, true);
  }
}
