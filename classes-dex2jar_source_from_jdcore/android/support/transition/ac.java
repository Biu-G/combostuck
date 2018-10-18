package android.support.transition;

import android.graphics.Matrix;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(21)
class ac
  extends ab
{
  private static Method a;
  private static boolean b;
  private static Method c;
  private static boolean d;
  private static Method e;
  private static boolean f;
  
  ac() {}
  
  private void a()
  {
    if (!b)
    {
      try
      {
        a = View.class.getDeclaredMethod("transformMatrixToGlobal", new Class[] { Matrix.class });
        a.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", localNoSuchMethodException);
      }
      b = true;
    }
  }
  
  private void b()
  {
    if (!d)
    {
      try
      {
        c = View.class.getDeclaredMethod("transformMatrixToLocal", new Class[] { Matrix.class });
        c.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", localNoSuchMethodException);
      }
      d = true;
    }
  }
  
  private void c()
  {
    if (!f)
    {
      try
      {
        e = View.class.getDeclaredMethod("setAnimationMatrix", new Class[] { Matrix.class });
        e.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ViewUtilsApi21", "Failed to retrieve setAnimationMatrix method", localNoSuchMethodException);
      }
      f = true;
    }
  }
  
  public void a(@NonNull View paramView, @NonNull Matrix paramMatrix)
  {
    a();
    if (a != null) {}
    try
    {
      a.invoke(paramView, new Object[] { paramMatrix });
      return;
    }
    catch (InvocationTargetException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return;
    }
    catch (IllegalAccessException paramView) {}
  }
  
  public void b(@NonNull View paramView, @NonNull Matrix paramMatrix)
  {
    b();
    if (c != null) {}
    try
    {
      c.invoke(paramView, new Object[] { paramMatrix });
      return;
    }
    catch (InvocationTargetException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return;
    }
    catch (IllegalAccessException paramView) {}
  }
  
  public void c(@NonNull View paramView, Matrix paramMatrix)
  {
    c();
    if (e != null) {}
    try
    {
      e.invoke(paramView, new Object[] { paramMatrix });
      return;
    }
    catch (IllegalAccessException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return;
    }
    catch (InvocationTargetException paramView) {}
  }
}
