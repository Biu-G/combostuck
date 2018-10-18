package android.support.design.widget;

import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.lang.reflect.Method;

@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class DrawableUtils
{
  private static Method a;
  private static boolean b;
  
  private DrawableUtils() {}
  
  private static boolean a(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState)
  {
    if (!b) {}
    try
    {
      a = DrawableContainer.class.getDeclaredMethod("setConstantState", new Class[] { DrawableContainer.DrawableContainerState.class });
      a.setAccessible(true);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
    Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
    b = true;
    if (a != null) {}
    try
    {
      a.invoke(paramDrawableContainer, new Object[] { paramConstantState });
      return true;
    }
    catch (Exception paramDrawableContainer)
    {
      for (;;) {}
    }
    Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
    return false;
  }
  
  public static boolean setContainerConstantState(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState)
  {
    return a(paramDrawableContainer, paramConstantState);
  }
}
