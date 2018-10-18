package com.amap.api.mapcore2d;

import android.content.Context;
import dalvik.system.DexFile;
import java.util.HashMap;
import java.util.Map;

abstract class ec
  extends ClassLoader
{
  protected final Context a;
  protected final Map<String, Class<?>> b = new HashMap();
  protected DexFile c = null;
  volatile boolean d = true;
  protected cy e;
  protected String f;
  
  public ec(Context paramContext, cy paramCy, boolean paramBoolean)
  {
    super(paramContext.getClassLoader());
    a = paramContext;
    e = paramCy;
  }
  
  public boolean a()
  {
    return c != null;
  }
  
  protected void b()
  {
    try
    {
      synchronized (b)
      {
        b.clear();
        if (c != null)
        {
          c.close();
          return;
        }
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      ek.a(localThrowable, "BaseLoader", "releaseDexFile()");
    }
  }
}
