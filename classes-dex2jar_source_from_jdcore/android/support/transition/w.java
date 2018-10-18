package android.support.transition;

import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(18)
class w
{
  private static Method a;
  private static boolean b;
  
  private static void a()
  {
    if (!b)
    {
      try
      {
        a = ViewGroup.class.getDeclaredMethod("suppressLayout", new Class[] { Boolean.TYPE });
        a.setAccessible(true);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", localNoSuchMethodException);
      }
      b = true;
    }
  }
  
  static void a(@NonNull ViewGroup paramViewGroup, boolean paramBoolean)
  {
    
    if (a != null) {
      try
      {
        a.invoke(paramViewGroup, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (InvocationTargetException paramViewGroup)
      {
        Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", paramViewGroup);
        return;
      }
      catch (IllegalAccessException paramViewGroup)
      {
        Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", paramViewGroup);
      }
    }
  }
}
