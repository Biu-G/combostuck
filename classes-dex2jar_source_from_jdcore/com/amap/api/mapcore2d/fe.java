package com.amap.api.mapcore2d;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public final class fe
{
  private static fe a;
  private ExecutorService b;
  private ConcurrentHashMap<ff, Future<?>> c = new ConcurrentHashMap();
  private ff.a d = new ff.a()
  {
    public void a(ff paramAnonymousFf) {}
    
    public void b(ff paramAnonymousFf)
    {
      fe.a(fe.this, paramAnonymousFf, false);
    }
  };
  
  private fe(int paramInt)
  {
    try
    {
      b = Executors.newFixedThreadPool(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      dg.b(localThrowable, "TPool", "ThreadPool");
      localThrowable.printStackTrace();
    }
  }
  
  public static fe a(int paramInt)
  {
    try
    {
      if (a == null) {
        a = new fe(paramInt);
      }
      fe localFe = a;
      return localFe;
    }
    finally {}
  }
  
  /* Error */
  private void a(ff paramFf, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/amap/api/mapcore2d/fe:c	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: aload_1
    //   7: invokevirtual 67	java/util/concurrent/ConcurrentHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 69	java/util/concurrent/Future
    //   13: astore_1
    //   14: iload_2
    //   15: ifeq +35 -> 50
    //   18: aload_1
    //   19: ifnull +31 -> 50
    //   22: aload_1
    //   23: iconst_1
    //   24: invokeinterface 73 2 0
    //   29: pop
    //   30: goto +20 -> 50
    //   33: astore_1
    //   34: goto +19 -> 53
    //   37: astore_1
    //   38: aload_1
    //   39: ldc 44
    //   41: ldc 75
    //   43: invokestatic 51	com/amap/api/mapcore2d/dg:b	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload_1
    //   47: invokevirtual 54	java/lang/Throwable:printStackTrace	()V
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	fe
    //   0	57	1	paramFf	ff
    //   0	57	2	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   2	14	33	finally
    //   22	30	33	finally
    //   38	50	33	finally
    //   2	14	37	java/lang/Throwable
    //   22	30	37	java/lang/Throwable
  }
}
