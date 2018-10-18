package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationListener;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationManagerBase;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode;
import java.util.ArrayList;
import java.util.Iterator;

public class fm
  implements Inner_3dMap_locationManagerBase
{
  Context a = null;
  ArrayList<Inner_3dMap_locationListener> b = new ArrayList();
  Object c = new Object();
  Handler d = null;
  a e = null;
  Handler f = null;
  Inner_3dMap_locationOption g = new Inner_3dMap_locationOption();
  fp h = null;
  Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode i = Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationMode.Hight_Accuracy;
  boolean j = false;
  
  public fm(Context paramContext)
  {
    if (paramContext != null)
    {
      a = paramContext.getApplicationContext();
      e();
      return;
    }
    throw new IllegalArgumentException("Context参数不能为null");
  }
  
  private Handler a(Looper paramLooper)
  {
    synchronized (c)
    {
      f = new fn(paramLooper, this);
      paramLooper = f;
      return paramLooper;
    }
  }
  
  private void a(int paramInt)
  {
    synchronized (c)
    {
      if (f != null) {
        f.removeMessages(paramInt);
      }
      return;
    }
  }
  
  private void a(int paramInt, Object paramObject, long paramLong)
  {
    synchronized (c)
    {
      if (f != null)
      {
        Message localMessage = Message.obtain();
        what = paramInt;
        obj = paramObject;
        f.sendMessageDelayed(localMessage, paramLong);
      }
      return;
    }
  }
  
  private void e()
  {
    try
    {
      if (Looper.myLooper() == null) {}
      for (fo localFo = new fo(a.getMainLooper(), this);; localFo = new fo(this))
      {
        d = localFo;
        break;
      }
      return;
    }
    catch (Throwable localThrowable1)
    {
      gc.a(localThrowable1, "LocationClientManager", "initResultHandler");
      try
      {
        e = new a("locaitonClientActionThread", this);
        e.setPriority(5);
        e.start();
        f = a(e.getLooper());
        return;
      }
      catch (Throwable localThrowable2)
      {
        gc.a(localThrowable2, "LocationClientManager", "initActionThreadAndActionHandler");
      }
    }
  }
  
  private void f()
  {
    synchronized (c)
    {
      if (f != null) {
        f.removeCallbacksAndMessages(null);
      }
      f = null;
      return;
    }
  }
  
  final void a()
  {
    try
    {
      if (j) {
        return;
      }
      j = true;
      a(1005, null, 0L);
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationClientManager", "doStartLocation");
    }
  }
  
  final void a(Inner_3dMap_location paramInner_3dMap_location)
  {
    for (;;)
    {
      try
      {
        if (j)
        {
          if (!"gps".equalsIgnoreCase(paramInner_3dMap_location.getProvider())) {
            paramInner_3dMap_location.setProvider("lbs");
          }
          paramInner_3dMap_location.setAltitude(gf.b(paramInner_3dMap_location.getAltitude()));
          paramInner_3dMap_location.setBearing(gf.a(paramInner_3dMap_location.getBearing()));
          paramInner_3dMap_location.setSpeed(gf.a(paramInner_3dMap_location.getSpeed()));
          Iterator localIterator = b.iterator();
          if (localIterator.hasNext()) {
            localInner_3dMap_locationListener = (Inner_3dMap_locationListener)localIterator.next();
          }
        }
      }
      catch (Throwable paramInner_3dMap_location)
      {
        Inner_3dMap_locationListener localInner_3dMap_locationListener;
        gc.a(paramInner_3dMap_location, "LocationClientManger", "callBackLocation");
        return;
      }
      try
      {
        localInner_3dMap_locationListener.onLocationChanged(paramInner_3dMap_location);
      }
      catch (Throwable localThrowable) {}
      if (g.isOnceLocation()) {
        c();
      }
      return;
    }
  }
  
  final void a(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    if (paramInner_3dMap_locationListener != null) {}
    try
    {
      if (b == null) {
        b = new ArrayList();
      }
      if (b.contains(paramInner_3dMap_locationListener)) {
        return;
      }
      b.add(paramInner_3dMap_locationListener);
      return;
    }
    catch (Throwable paramInner_3dMap_locationListener)
    {
      gc.a(paramInner_3dMap_locationListener, "LocationClientManager", "doSetLocationListener");
      return;
    }
    throw new IllegalArgumentException("listener参数不能为null");
  }
  
  final void a(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    g = paramInner_3dMap_locationOption;
    if (g == null) {
      g = new Inner_3dMap_locationOption();
    }
    if (h != null) {
      h.a(g);
    }
    if ((j) && (!i.equals(paramInner_3dMap_locationOption.getLocationMode())))
    {
      c();
      a();
    }
    i = g.getLocationMode();
  }
  
  /* Error */
  final void b()
  {
    // Byte code:
    //   0: ldc2_w 267
    //   3: lstore_1
    //   4: aload_0
    //   5: getfield 55	com/amap/api/mapcore2d/fm:h	Lcom/amap/api/mapcore2d/fp;
    //   8: ifnull +10 -> 18
    //   11: aload_0
    //   12: getfield 55	com/amap/api/mapcore2d/fm:h	Lcom/amap/api/mapcore2d/fp;
    //   15: invokevirtual 269	com/amap/api/mapcore2d/fp:a	()V
    //   18: aload_0
    //   19: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   22: invokevirtual 234	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:isOnceLocation	()Z
    //   25: ifne +96 -> 121
    //   28: aload_0
    //   29: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   32: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   35: ldc2_w 267
    //   38: lcmp
    //   39: ifge +6 -> 45
    //   42: goto +11 -> 53
    //   45: aload_0
    //   46: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   49: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   52: lstore_1
    //   53: aload_0
    //   54: sipush 1005
    //   57: aconst_null
    //   58: lload_1
    //   59: invokespecial 160	com/amap/api/mapcore2d/fm:a	(ILjava/lang/Object;J)V
    //   62: return
    //   63: astore_3
    //   64: goto +58 -> 122
    //   67: astore_3
    //   68: aload_3
    //   69: ldc -127
    //   71: ldc_w 275
    //   74: invokestatic 136	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   77: aload_0
    //   78: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   81: invokevirtual 234	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:isOnceLocation	()Z
    //   84: ifne +37 -> 121
    //   87: aload_0
    //   88: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   91: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   94: ldc2_w 267
    //   97: lcmp
    //   98: ifge +6 -> 104
    //   101: goto +11 -> 112
    //   104: aload_0
    //   105: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   108: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   111: lstore_1
    //   112: aload_0
    //   113: sipush 1005
    //   116: aconst_null
    //   117: lload_1
    //   118: invokespecial 160	com/amap/api/mapcore2d/fm:a	(ILjava/lang/Object;J)V
    //   121: return
    //   122: aload_0
    //   123: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   126: invokevirtual 234	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:isOnceLocation	()Z
    //   129: ifne +37 -> 166
    //   132: aload_0
    //   133: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   136: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   139: ldc2_w 267
    //   142: lcmp
    //   143: ifge +6 -> 149
    //   146: goto +11 -> 157
    //   149: aload_0
    //   150: getfield 53	com/amap/api/mapcore2d/fm:g	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   153: invokevirtual 273	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:getInterval	()J
    //   156: lstore_1
    //   157: aload_0
    //   158: sipush 1005
    //   161: aconst_null
    //   162: lload_1
    //   163: invokespecial 160	com/amap/api/mapcore2d/fm:a	(ILjava/lang/Object;J)V
    //   166: aload_3
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	fm
    //   3	160	1	l	long
    //   63	1	3	localObject	Object
    //   67	100	3	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   4	18	63	finally
    //   68	77	63	finally
    //   4	18	67	java/lang/Throwable
  }
  
  final void b(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    if (paramInner_3dMap_locationListener != null) {}
    try
    {
      if ((!b.isEmpty()) && (b.contains(paramInner_3dMap_locationListener))) {
        b.remove(paramInner_3dMap_locationListener);
      }
      if (b.isEmpty()) {
        c();
      }
      return;
    }
    catch (Throwable paramInner_3dMap_locationListener)
    {
      for (;;) {}
    }
    gc.a(paramInner_3dMap_locationListener, "LocationClientManager", "doUnregisterListener");
  }
  
  final void c()
  {
    try
    {
      j = false;
      a(1004);
      a(1005);
      if (h != null) {
        h.c();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationClientManager", "doStopLocation");
    }
  }
  
  final void d()
  {
    c();
    if (h != null) {
      h.d();
    }
    f();
    if ((e == null) || (Build.VERSION.SDK_INT >= 18)) {}
    try
    {
      gd.a(e, HandlerThread.class, "quitSafely", new Object[0]);
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
    e.quit();
    e = null;
  }
  
  public void destroy()
  {
    try
    {
      a(1007, null, 0L);
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationClientManager", "stopLocation");
    }
  }
  
  public void setLocationListener(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    try
    {
      a(1002, paramInner_3dMap_locationListener, 0L);
      return;
    }
    catch (Throwable paramInner_3dMap_locationListener)
    {
      gc.a(paramInner_3dMap_locationListener, "LocationClientManager", "setLocationListener");
    }
  }
  
  public void setLocationOption(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    try
    {
      a(1001, paramInner_3dMap_locationOption, 0L);
      return;
    }
    catch (Throwable paramInner_3dMap_locationOption)
    {
      gc.a(paramInner_3dMap_locationOption, "LocationClientManager", "setLocationOption");
    }
  }
  
  public void startLocation()
  {
    try
    {
      a(1004, null, 0L);
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationClientManager", "startLocation");
    }
  }
  
  public void stopLocation()
  {
    try
    {
      a(1006, null, 0L);
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "LocationClientManager", "stopLocation");
    }
  }
  
  public void unRegisterLocationListener(Inner_3dMap_locationListener paramInner_3dMap_locationListener)
  {
    try
    {
      a(1006, paramInner_3dMap_locationListener, 0L);
      return;
    }
    catch (Throwable paramInner_3dMap_locationListener)
    {
      gc.a(paramInner_3dMap_locationListener, "LocationClientManager", "stopLocation");
    }
  }
  
  static final class a
    extends HandlerThread
  {
    fm a;
    
    public a(String paramString, fm paramFm)
    {
      super();
      a = paramFm;
    }
    
    protected final void onLooperPrepared()
    {
      try
      {
        a.h = new fp(a.a, a.d);
        super.onLooperPrepared();
        return;
      }
      catch (Throwable localThrowable) {}
    }
  }
}
