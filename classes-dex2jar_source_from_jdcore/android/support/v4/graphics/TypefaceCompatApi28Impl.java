package android.support.v4.graphics;

import android.graphics.Typeface;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(28)
@RestrictTo({android.support.annotation.RestrictTo.Scope.LIBRARY_GROUP})
public class TypefaceCompatApi28Impl
  extends TypefaceCompatApi26Impl
{
  public TypefaceCompatApi28Impl() {}
  
  protected Typeface createFromFamiliesWithDefault(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(mFontFamily, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)mCreateFromFamiliesWithDefault.invoke(null, new Object[] { localObject, "sans-serif", Integer.valueOf(-1), Integer.valueOf(-1) });
      return paramObject;
    }
    catch (IllegalAccessException|InvocationTargetException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
  }
  
  protected Method obtainCreateFromFamiliesWithDefaultMethod(Class paramClass)
    throws NoSuchMethodException
  {
    paramClass = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(paramClass, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE });
    paramClass.setAccessible(true);
    return paramClass;
  }
}
