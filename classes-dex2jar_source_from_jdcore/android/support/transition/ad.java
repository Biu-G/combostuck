package android.support.transition;

import android.annotation.SuppressLint;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(22)
class ad
  extends ac
{
  private static Method a;
  private static boolean b;
  
  ad() {}
  
  @SuppressLint({"PrivateApi"})
  private void a()
  {
    if (!b)
    {
      try
      {
        a = View.class.getDeclaredMethod("setLeftTopRightBottom", new Class[] { Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE });
        a.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", localNoSuchMethodException);
      }
      b = true;
    }
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a();
    if (a != null) {}
    try
    {
      a.invoke(paramView, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(paramInt4) });
      return;
    }
    catch (InvocationTargetException paramView)
    {
      throw new RuntimeException(paramView.getCause());
      return;
    }
    catch (IllegalAccessException paramView) {}
  }
}
