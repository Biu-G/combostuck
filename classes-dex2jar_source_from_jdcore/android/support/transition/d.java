package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
class d
  implements e
{
  private static Class<?> a;
  private static boolean b;
  private static Method c;
  private static boolean d;
  private static Method e;
  private static boolean f;
  private final View g;
  
  private d(@NonNull View paramView)
  {
    g = paramView;
  }
  
  static e a(View paramView, ViewGroup paramViewGroup, Matrix paramMatrix)
  {
    
    if (c != null) {}
    try
    {
      paramView = new d((View)c.invoke(null, new Object[] { paramView, paramViewGroup, paramMatrix }));
      return paramView;
    }
    catch (InvocationTargetException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return null;
    }
    catch (IllegalAccessException paramView) {}
    return null;
  }
  
  private static void a()
  {
    if (!b)
    {
      try
      {
        a = Class.forName("android.view.GhostView");
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Log.i("GhostViewApi21", "Failed to retrieve GhostView class", localClassNotFoundException);
      }
      b = true;
    }
  }
  
  static void a(View paramView)
  {
    
    if (e != null) {}
    try
    {
      e.invoke(null, new Object[] { paramView });
      return;
    }
    catch (InvocationTargetException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return;
    }
    catch (IllegalAccessException paramView) {}
  }
  
  private static void b()
  {
    if (!d)
    {
      try
      {
        a();
        c = a.getDeclaredMethod("addGhost", new Class[] { View.class, ViewGroup.class, Matrix.class });
        c.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("GhostViewApi21", "Failed to retrieve addGhost method", localNoSuchMethodException);
      }
      d = true;
    }
  }
  
  private static void c()
  {
    if (!f)
    {
      try
      {
        a();
        e = a.getDeclaredMethod("removeGhost", new Class[] { View.class });
        e.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", localNoSuchMethodException);
      }
      f = true;
    }
  }
  
  public void a(ViewGroup paramViewGroup, View paramView) {}
  
  public void setVisibility(int paramInt)
  {
    g.setVisibility(paramInt);
  }
}
