package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Proxy;

public class eu
  extends ep
{
  private static eu a;
  private fe b;
  private Handler c;
  
  private eu(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {}
    try
    {
      b = fe.a(paramInt);
      if (Looper.myLooper() == null)
      {
        c = new a(Looper.getMainLooper(), null);
        return;
      }
      c = new a();
      return;
    }
    catch (Throwable localThrowable2)
    {
      Throwable localThrowable1;
      for (;;) {}
    }
    dg.b(localThrowable1, "NetManger", "NetManger1");
    localThrowable1.printStackTrace();
  }
  
  public static eu a(boolean paramBoolean)
  {
    return a(paramBoolean, 5);
  }
  
  /* Error */
  private static eu a(boolean paramBoolean, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 62	com/amap/api/mapcore2d/eu:a	Lcom/amap/api/mapcore2d/eu;
    //   6: ifnonnull +18 -> 24
    //   9: new 2	com/amap/api/mapcore2d/eu
    //   12: dup
    //   13: iload_0
    //   14: iload_1
    //   15: invokespecial 64	com/amap/api/mapcore2d/eu:<init>	(ZI)V
    //   18: putstatic 62	com/amap/api/mapcore2d/eu:a	Lcom/amap/api/mapcore2d/eu;
    //   21: goto +38 -> 59
    //   24: iload_0
    //   25: ifeq +34 -> 59
    //   28: getstatic 62	com/amap/api/mapcore2d/eu:a	Lcom/amap/api/mapcore2d/eu;
    //   31: getfield 28	com/amap/api/mapcore2d/eu:b	Lcom/amap/api/mapcore2d/fe;
    //   34: ifnonnull +25 -> 59
    //   37: getstatic 62	com/amap/api/mapcore2d/eu:a	Lcom/amap/api/mapcore2d/eu;
    //   40: iload_1
    //   41: invokestatic 26	com/amap/api/mapcore2d/fe:a	(I)Lcom/amap/api/mapcore2d/fe;
    //   44: putfield 28	com/amap/api/mapcore2d/eu:b	Lcom/amap/api/mapcore2d/fe;
    //   47: goto +12 -> 59
    //   50: astore_2
    //   51: goto +17 -> 68
    //   54: astore_2
    //   55: aload_2
    //   56: invokevirtual 55	java/lang/Throwable:printStackTrace	()V
    //   59: getstatic 62	com/amap/api/mapcore2d/eu:a	Lcom/amap/api/mapcore2d/eu;
    //   62: astore_2
    //   63: ldc 2
    //   65: monitorexit
    //   66: aload_2
    //   67: areturn
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_2
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramBoolean	boolean
    //   0	73	1	paramInt	int
    //   50	1	2	localObject	Object
    //   54	2	2	localThrowable	Throwable
    //   62	10	2	localEu	eu
    // Exception table:
    //   from	to	target	type
    //   3	21	50	finally
    //   28	47	50	finally
    //   55	59	50	finally
    //   59	63	50	finally
    //   3	21	54	java/lang/Throwable
    //   28	47	54	java/lang/Throwable
  }
  
  private void a(co paramCo, ew paramEw)
  {
    ey localEy = new ey();
    a = paramCo;
    b = paramEw;
    paramCo = Message.obtain();
    obj = localEy;
    what = 1;
    c.sendMessage(paramCo);
  }
  
  private void a(ex paramEx, ew paramEw)
  {
    paramEw.a(b, a);
    paramEx = new ey();
    b = paramEw;
    paramEw = Message.obtain();
    obj = paramEx;
    what = 0;
    c.sendMessage(paramEw);
  }
  
  public byte[] a(ev paramEv)
    throws co
  {
    try
    {
      paramEv = a(paramEv, false);
      if (paramEv != null) {
        return a;
      }
      return null;
    }
    catch (Throwable paramEv)
    {
      paramEv.printStackTrace();
      dg.a().c(paramEv, "NetManager", "makeSyncPostRequest");
      throw new co("未知的错误");
    }
    catch (co paramEv)
    {
      throw paramEv;
    }
  }
  
  public ex b(ev paramEv, boolean paramBoolean)
    throws co
  {
    try
    {
      b(paramEv);
      Proxy localProxy;
      if (e == null) {
        localProxy = null;
      } else {
        localProxy = e;
      }
      paramEv = new es(c, d, localProxy, paramBoolean).a(paramEv.g(), paramEv.e(), paramEv.f());
      return paramEv;
    }
    catch (Throwable paramEv)
    {
      paramEv.printStackTrace();
      throw new co("未知的错误");
    }
    catch (co paramEv)
    {
      throw paramEv;
    }
  }
  
  public byte[] c(ev paramEv)
    throws co
  {
    try
    {
      paramEv = b(paramEv, false);
      if (paramEv != null) {
        return a;
      }
      return null;
    }
    catch (co paramEv)
    {
      throw paramEv;
    }
    catch (Throwable paramEv)
    {
      for (;;) {}
    }
    throw new co("未知的错误");
  }
  
  static class a
    extends Handler
  {
    public a() {}
    
    private a(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      try
      {
        switch (what)
        {
        case 1: 
          paramMessage = (ey)obj;
          b.a(a);
          return;
        }
      }
      catch (Throwable paramMessage)
      {
        paramMessage.printStackTrace();
        return;
      }
      obj).b.a();
      return;
    }
  }
}
