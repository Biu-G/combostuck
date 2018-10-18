package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

class c
{
  private static Field a;
  private static boolean b;
  private static Class c;
  private static boolean d;
  private static Field e;
  private static boolean f;
  private static Field g;
  private static boolean h;
  
  static void a(@NonNull Resources paramResources)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return;
    }
    if (Build.VERSION.SDK_INT >= 24)
    {
      d(paramResources);
      return;
    }
    if (Build.VERSION.SDK_INT >= 23)
    {
      c(paramResources);
      return;
    }
    if (Build.VERSION.SDK_INT >= 21) {
      b(paramResources);
    }
  }
  
  @RequiresApi(16)
  private static void a(@NonNull Object paramObject)
  {
    if (!d)
    {
      try
      {
        c = Class.forName("android.content.res.ThemedResourceCache");
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", localClassNotFoundException);
      }
      d = true;
    }
    if (c == null) {
      return;
    }
    if (!f)
    {
      try
      {
        e = c.getDeclaredField("mUnthemedEntries");
        e.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", localNoSuchFieldException);
      }
      f = true;
    }
    if (e == null) {
      return;
    }
    try
    {
      paramObject = (LongSparseArray)e.get(paramObject);
    }
    catch (IllegalAccessException paramObject)
    {
      Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", paramObject);
      paramObject = null;
    }
    if (paramObject != null) {
      paramObject.clear();
    }
  }
  
  @RequiresApi(21)
  private static void b(@NonNull Resources paramResources)
  {
    if (!b)
    {
      try
      {
        a = Resources.class.getDeclaredField("mDrawableCache");
        a.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", localNoSuchFieldException);
      }
      b = true;
    }
    if (a != null)
    {
      try
      {
        paramResources = (Map)a.get(paramResources);
      }
      catch (IllegalAccessException paramResources)
      {
        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", paramResources);
        paramResources = null;
      }
      if (paramResources != null) {
        paramResources.clear();
      }
    }
  }
  
  @RequiresApi(23)
  private static void c(@NonNull Resources paramResources)
  {
    if (!b)
    {
      try
      {
        a = Resources.class.getDeclaredField("mDrawableCache");
        a.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", localNoSuchFieldException);
      }
      b = true;
    }
    if (a != null) {
      try
      {
        paramResources = a.get(paramResources);
      }
      catch (IllegalAccessException paramResources)
      {
        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", paramResources);
      }
    } else {
      paramResources = null;
    }
    if (paramResources == null) {
      return;
    }
    a(paramResources);
  }
  
  @RequiresApi(24)
  private static void d(@NonNull Resources paramResources)
  {
    if (!h)
    {
      try
      {
        g = Resources.class.getDeclaredField("mResourcesImpl");
        g.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException1)
      {
        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", localNoSuchFieldException1);
      }
      h = true;
    }
    if (g == null) {
      return;
    }
    try
    {
      paramResources = g.get(paramResources);
    }
    catch (IllegalAccessException paramResources)
    {
      Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", paramResources);
      paramResources = null;
    }
    if (paramResources == null) {
      return;
    }
    if (!b)
    {
      try
      {
        a = paramResources.getClass().getDeclaredField("mDrawableCache");
        a.setAccessible(true);
      }
      catch (NoSuchFieldException localNoSuchFieldException2)
      {
        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", localNoSuchFieldException2);
      }
      b = true;
    }
    if (a != null) {
      try
      {
        paramResources = a.get(paramResources);
      }
      catch (IllegalAccessException paramResources)
      {
        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", paramResources);
      }
    } else {
      paramResources = null;
    }
    if (paramResources != null) {
      a(paramResources);
    }
  }
}
