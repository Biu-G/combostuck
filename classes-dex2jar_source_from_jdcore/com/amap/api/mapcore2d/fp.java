package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode;
import org.json.JSONArray;
import org.json.JSONObject;

public final class fp
{
  private static int k = 200;
  private static boolean l = true;
  Context a = null;
  fk b = null;
  fq c = null;
  b d = null;
  Handler e = null;
  Handler f = null;
  boolean g = false;
  boolean h = false;
  Inner_3dMap_locationOption i = null;
  Object j = new Object();
  private JSONArray m = null;
  
  public fp(Context paramContext, Handler paramHandler)
  {
    if (paramContext != null) {}
    try
    {
      a = paramContext.getApplicationContext();
      f = paramHandler;
      i = new Inner_3dMap_locationOption();
      e();
      d = new b("locServiceAction");
      d.setPriority(5);
      d.start();
      e = new a(d.getLooper());
      return;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "LocationService", "<init>");
    }
    throw new IllegalArgumentException("Context参数不能为null");
  }
  
  private void a(Inner_3dMap_location paramInner_3dMap_location)
  {
    do
    {
      try
      {
        if (l) {
          continue;
        }
        return;
      }
      catch (Throwable paramInner_3dMap_location)
      {
        JSONObject localJSONObject;
        gc.a(paramInner_3dMap_location, "LocationService", "recordOfflineLocLog");
        return;
      }
      if (paramInner_3dMap_location.getErrorCode() == 0)
      {
        if (paramInner_3dMap_location.getLocationType() != 1) {
          return;
        }
        if (m == null) {
          m = new JSONArray();
        }
        localJSONObject = new JSONObject();
        localJSONObject.put("lon", paramInner_3dMap_location.getLongitude());
        localJSONObject.put("lat", paramInner_3dMap_location.getLatitude());
        localJSONObject.put("type", 0);
        localJSONObject.put("timestamp", gf.a());
        m = m.put(localJSONObject);
        if (m.length() >= k) {
          g();
        }
      }
      return;
    } while (paramInner_3dMap_location != null);
  }
  
  private void e()
  {
    try
    {
      if (i == null) {
        i = new Inner_3dMap_locationOption();
      }
      if (h) {
        return;
      }
      b = new fk(a);
      c = new fq(a);
      c.a(i);
      f();
      h = true;
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationService", "init");
    }
  }
  
  private void f()
  {
    try
    {
      l = ge.b(a, "maploc", "ue");
      int n = ge.a(a, "maploc", "opn");
      k = n;
      if (n > 500) {
        k = 500;
      }
      if (k < 30) {
        k = 30;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationService", "getSPConfig");
    }
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 62	com/amap/api/mapcore2d/fp:m	Lorg/json/JSONArray;
    //   6: ifnull +48 -> 54
    //   9: aload_0
    //   10: getfield 62	com/amap/api/mapcore2d/fp:m	Lorg/json/JSONArray;
    //   13: invokevirtual 163	org/json/JSONArray:length	()I
    //   16: ifle +38 -> 54
    //   19: invokestatic 203	com/amap/api/mapcore2d/gc:b	()Lcom/amap/api/mapcore2d/cy;
    //   22: astore_1
    //   23: new 205	com/amap/api/mapcore2d/ez
    //   26: dup
    //   27: aload_0
    //   28: getfield 44	com/amap/api/mapcore2d/fp:a	Landroid/content/Context;
    //   31: aload_1
    //   32: aload_0
    //   33: getfield 62	com/amap/api/mapcore2d/fp:m	Lorg/json/JSONArray;
    //   36: invokevirtual 209	org/json/JSONArray:toString	()Ljava/lang/String;
    //   39: invokespecial 212	com/amap/api/mapcore2d/ez:<init>	(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;)V
    //   42: aload_0
    //   43: getfield 44	com/amap/api/mapcore2d/fp:a	Landroid/content/Context;
    //   46: invokestatic 217	com/amap/api/mapcore2d/fa:a	(Lcom/amap/api/mapcore2d/ez;Landroid/content/Context;)V
    //   49: aload_0
    //   50: aconst_null
    //   51: putfield 62	com/amap/api/mapcore2d/fp:m	Lorg/json/JSONArray;
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: astore_1
    //   58: goto +15 -> 73
    //   61: astore_1
    //   62: aload_1
    //   63: ldc 103
    //   65: ldc -37
    //   67: invokestatic 109	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_0
    //   71: monitorexit
    //   72: return
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	fp
    //   22	10	1	localCy	cy
    //   57	1	1	localObject	Object
    //   61	15	1	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	54	57	finally
    //   62	70	57	finally
    //   2	54	61	java/lang/Throwable
  }
  
  private void h()
  {
    synchronized (j)
    {
      if (e != null) {
        e.removeCallbacksAndMessages(null);
      }
      e = null;
      return;
    }
  }
  
  private void i()
  {
    synchronized (j)
    {
      if (e != null) {
        e.removeMessages(1);
      }
      return;
    }
  }
  
  public final void a()
  {
    try
    {
      e();
      if ((!i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Battery_Saving)) && (!g))
      {
        g = true;
        b.a();
      }
      if (e != null) {
        e.sendEmptyMessage(1);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationService", "getLocation");
    }
  }
  
  public final void a(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    i = paramInner_3dMap_locationOption;
    if (i == null) {
      i = new Inner_3dMap_locationOption();
    }
    if (c != null) {
      c.a(paramInner_3dMap_locationOption);
    }
  }
  
  final void b()
  {
    Inner_3dMap_location localInner_3dMap_location = null;
    try
    {
      if ((i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Battery_Saving)) && (g))
      {
        b.b();
        g = false;
      }
      if (b.c()) {
        localInner_3dMap_location = b.d();
      } else if (!i.getLocationMode().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Device_Sensors)) {
        localInner_3dMap_location = c.a();
      }
      if ((f != null) && (localInner_3dMap_location != null))
      {
        Message localMessage = Message.obtain();
        obj = localInner_3dMap_location;
        what = 1;
        f.sendMessage(localMessage);
      }
      a(localInner_3dMap_location);
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationService", "doGetLocation");
    }
  }
  
  public final void c()
  {
    g = false;
    try
    {
      i();
      if (b != null) {
        b.b();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationService", "stopLocation");
    }
  }
  
  public final void d()
  {
    for (;;)
    {
      try
      {
        c();
        h();
        if (d != null)
        {
          int n = Build.VERSION.SDK_INT;
          if (n < 18) {}
        }
      }
      catch (Throwable localThrowable1)
      {
        b localB;
        gc.a(localThrowable1, "LocationService", "destroy");
        return;
      }
      try
      {
        gd.a(d, HandlerThread.class, "quitSafely", new Object[0]);
      }
      catch (Throwable localThrowable2) {}
    }
    for (localB = d;; localB = d)
    {
      localB.quit();
      break;
    }
    d = null;
    c.b();
    g();
  }
  
  public final class a
    extends Handler
  {
    public a(Looper paramLooper)
    {
      super();
    }
    
    public final void handleMessage(Message paramMessage)
    {
      if (what != 1) {
        return;
      }
      b();
    }
  }
  
  final class b
    extends HandlerThread
  {
    public b(String paramString)
    {
      super();
    }
    
    protected final void onLooperPrepared()
    {
      super.onLooperPrepared();
    }
  }
}
