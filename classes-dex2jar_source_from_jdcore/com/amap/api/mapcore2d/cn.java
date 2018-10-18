package com.amap.api.mapcore2d;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;

public class cn
{
  Context a;
  Inner_3dMap_locationManagerBase b = null;
  Object c = null;
  boolean d = false;
  Object e = null;
  
  public cn(Context paramContext)
  {
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        a = paramContext.getApplicationContext();
      }
      catch (Throwable paramContext)
      {
        Class localClass;
        gc.a(paramContext, "AMapLocationClient", "AMapLocationClient 1");
        return;
      }
      try
      {
        localClass = Class.forName("com.amap.api.location.AMapLocationClient");
        paramContext = new ComponentName(a, "com.amap.api.location.APSService");
      }
      catch (Throwable paramContext)
      {
        continue;
      }
      try
      {
        paramContext = a.getPackageManager().getServiceInfo(paramContext, 128);
      }
      catch (Throwable paramContext) {}
    }
    paramContext = null;
    if ((localClass != null) && (paramContext != null))
    {
      d = true;
      break label73;
      d = false;
    }
    label73:
    if (d)
    {
      c = new AMapLocationClient(a);
      return;
    }
    b = b(a);
    return;
    throw new IllegalArgumentException("Context参数不能为null");
  }
  
  private static Inner_3dMap_locationManagerBase b(Context paramContext)
  {
    try
    {
      localObject1 = (Inner_3dMap_locationManagerBase)eb.a(paramContext, fs.a(), "com.amap.api.wrapper.Inner_2dMap_locationManagerWrapper", fm.class, new Class[] { Context.class }, new Object[] { paramContext });
    }
    catch (Throwable localThrowable)
    {
      Object localObject1;
      Object localObject2;
      for (;;) {}
    }
    localObject1 = new fm(paramContext);
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new fm(paramContext);
    }
    return localObject2;
  }
  
  public void a()
  {
    try
    {
      if (d)
      {
        ((AMapLocationClient)c).startLocation();
        return;
      }
      b.startLocation();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocationClient", "startLocation");
    }
  }
  
  public void a(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    if (paramInner_3dMap_locationListener != null) {}
    try
    {
      if (d)
      {
        fh.a(c, paramInner_3dMap_locationListener);
        return;
      }
      b.setLocationListener(paramInner_3dMap_locationListener);
      return;
    }
    catch (Throwable paramInner_3dMap_locationListener)
    {
      gc.a(paramInner_3dMap_locationListener, "AMapLocationClient", "setLocationListener");
    }
    throw new IllegalArgumentException("listener参数不能为null");
  }
  
  public void a(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    if (paramInner_3dMap_locationOption != null) {}
    try
    {
      if (d)
      {
        AMapLocationClientOption localAMapLocationClientOption = fh.a();
        fh.a(localAMapLocationClientOption, paramInner_3dMap_locationOption);
        ((AMapLocationClient)c).setLocationOption(localAMapLocationClientOption);
        return;
      }
      b.setLocationOption(paramInner_3dMap_locationOption);
      return;
    }
    catch (Throwable paramInner_3dMap_locationOption)
    {
      gc.a(paramInner_3dMap_locationOption, "AMapLocationClient", "setLocationOption");
    }
    throw new IllegalArgumentException("LocationManagerOption参数不能为null");
  }
  
  public void b()
  {
    try
    {
      if (d)
      {
        ((AMapLocationClient)c).stopLocation();
        return;
      }
      b.stopLocation();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocationClient", "stopLocation");
    }
  }
  
  public void c()
  {
    try
    {
      if (d)
      {
        ((AMapLocationClient)c).onDestroy();
        return;
      }
      b.destroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "AMapLocationClient", "onDestroy");
    }
  }
}
