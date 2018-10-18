package com.amap.api.mapcore2d;

import android.content.Context;
import java.io.File;
import java.lang.reflect.Constructor;

public class eb
{
  public static <T> T a(Context paramContext, cy paramCy, String paramString, Class paramClass, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
    throws co
  {
    paramContext = a(b(paramContext, paramCy), paramString, paramArrayOfClass, paramArrayOfObject);
    if (paramContext != null) {
      return paramContext;
    }
    paramContext = a(paramClass, paramArrayOfClass, paramArrayOfObject);
    if (paramContext != null) {
      return paramContext;
    }
    throw new co("获取对象错误");
  }
  
  private static <T> T a(ec paramEc, String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      if (a(paramEc))
      {
        paramEc = paramEc.loadClass(paramString);
        if (paramEc != null)
        {
          paramEc = paramEc.getDeclaredConstructor(paramArrayOfClass);
          paramEc.setAccessible(true);
          paramEc = paramEc.newInstance(paramArrayOfObject);
          return paramEc;
        }
      }
    }
    catch (Throwable paramEc)
    {
      ek.a(paramEc, "IFactory", "getWrap");
    }
    return null;
  }
  
  private static <T> T a(Class paramClass, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    if (paramClass == null) {
      return null;
    }
    try
    {
      paramClass = paramClass.getDeclaredConstructor(paramArrayOfClass);
      paramClass.setAccessible(true);
      paramClass = paramClass.newInstance(paramArrayOfObject);
      return paramClass;
    }
    catch (Throwable paramClass)
    {
      ek.a(paramClass, "IFactory", "gIns2()");
    }
    return null;
  }
  
  public static boolean a(Context paramContext, cy paramCy)
  {
    try
    {
      File localFile = new File(ee.b(paramContext, paramCy.a(), paramCy.b()));
      if (localFile.exists()) {
        return true;
      }
      ee.a(paramContext, localFile, paramCy);
      return false;
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "IFactory", "isdowned");
    }
    return false;
  }
  
  private static boolean a(ec paramEc)
  {
    return (paramEc != null) && (paramEc.a()) && (d);
  }
  
  private static ec b(Context paramContext, cy paramCy)
  {
    if (paramContext == null) {
      return null;
    }
    try
    {
      if (a(paramContext, paramCy))
      {
        paramContext = ej.a().a(paramContext, paramCy);
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      ek.a(paramContext, "IFactory", "gIns1");
    }
    return null;
  }
}
