package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class dg
  extends dd
  implements Thread.UncaughtExceptionHandler
{
  private static ExecutorService e;
  private static Set<Integer> f = Collections.synchronizedSet(new HashSet());
  private static final ThreadFactory g = new ThreadFactory()
  {
    private final AtomicInteger a = new AtomicInteger(1);
    
    public Thread newThread(Runnable paramAnonymousRunnable)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("pama#");
      localStringBuilder.append(a.getAndIncrement());
      return new Thread(paramAnonymousRunnable, localStringBuilder.toString());
    }
  };
  private Context d;
  
  private dg(Context paramContext, cy paramCy)
  {
    d = paramContext;
    es.a(new a(paramContext));
    d();
  }
  
  public static dg a()
  {
    try
    {
      dg localDg = (dg)dd.a;
      return localDg;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static dg a(Context paramContext, cy paramCy)
    throws co
  {
    if (paramCy != null) {}
    try
    {
      if (paramCy.a() != null)
      {
        boolean bool = "".equals(paramCy.a());
        if (!bool)
        {
          try
          {
            if (!f.add(Integer.valueOf(paramCy.hashCode())))
            {
              paramContext = (dg)dd.a;
              return paramContext;
            }
            if (dd.a == null) {
              dd.a = new dg(paramContext, paramCy);
            } else {
              ac = false;
            }
            dd.a.a(paramContext, paramCy, ac);
          }
          catch (Throwable paramContext)
          {
            paramContext.printStackTrace();
          }
          paramContext = (dg)dd.a;
          return paramContext;
        }
      }
      throw new co("sdk name is invalid");
    }
    finally {}
    throw new co("sdk info is null");
  }
  
  public static void a(cy paramCy, String paramString, co paramCo)
  {
    if (paramCo != null) {
      a(paramCy, paramString, paramCo.c(), paramCo.d(), paramCo.b());
    }
  }
  
  public static void a(cy paramCy, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (dd.a != null)
    {
      StringBuilder localStringBuilder = new StringBuilder("path:");
      localStringBuilder.append(paramString1);
      localStringBuilder.append(",type:");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(",gsid:");
      localStringBuilder.append(paramString3);
      localStringBuilder.append(",code:");
      localStringBuilder.append(paramString4);
      dd.a.a(paramCy, localStringBuilder.toString(), "networkError");
    }
  }
  
  /* Error */
  public static void b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   6: ifnull +11 -> 17
    //   9: getstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   12: invokeinterface 154 1 0
    //   17: invokestatic 158	com/amap/api/mapcore2d/el:a	()V
    //   20: goto +12 -> 32
    //   23: astore_0
    //   24: goto +57 -> 81
    //   27: astore_0
    //   28: aload_0
    //   29: invokevirtual 105	java/lang/Throwable:printStackTrace	()V
    //   32: getstatic 60	com/amap/api/mapcore2d/dd:a	Lcom/amap/api/mapcore2d/dd;
    //   35: ifnull +30 -> 65
    //   38: invokestatic 164	java/lang/Thread:getDefaultUncaughtExceptionHandler	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   41: getstatic 60	com/amap/api/mapcore2d/dd:a	Lcom/amap/api/mapcore2d/dd;
    //   44: if_acmpne +21 -> 65
    //   47: getstatic 60	com/amap/api/mapcore2d/dd:a	Lcom/amap/api/mapcore2d/dd;
    //   50: getfield 167	com/amap/api/mapcore2d/dd:b	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   53: ifnull +12 -> 65
    //   56: getstatic 60	com/amap/api/mapcore2d/dd:a	Lcom/amap/api/mapcore2d/dd;
    //   59: getfield 167	com/amap/api/mapcore2d/dd:b	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   62: invokestatic 171	java/lang/Thread:setDefaultUncaughtExceptionHandler	(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   65: aconst_null
    //   66: putstatic 60	com/amap/api/mapcore2d/dd:a	Lcom/amap/api/mapcore2d/dd;
    //   69: goto +8 -> 77
    //   72: astore_0
    //   73: aload_0
    //   74: invokevirtual 105	java/lang/Throwable:printStackTrace	()V
    //   77: ldc 2
    //   79: monitorexit
    //   80: return
    //   81: ldc 2
    //   83: monitorexit
    //   84: aload_0
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   23	1	0	localObject	Object
    //   27	2	0	localThrowable1	Throwable
    //   72	13	0	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   3	17	23	finally
    //   17	20	23	finally
    //   28	32	23	finally
    //   32	65	23	finally
    //   65	69	23	finally
    //   73	77	23	finally
    //   3	17	27	java/lang/Throwable
    //   17	20	27	java/lang/Throwable
    //   32	65	72	java/lang/Throwable
    //   65	69	72	java/lang/Throwable
  }
  
  public static void b(cy paramCy, String paramString1, String paramString2)
  {
    if (dd.a != null) {
      dd.a.a(paramCy, paramString1, paramString2);
    }
  }
  
  public static void b(Throwable paramThrowable, String paramString1, String paramString2)
  {
    if (dd.a != null) {
      dd.a.a(paramThrowable, 1, paramString1, paramString2);
    }
  }
  
  /* Error */
  public static ExecutorService c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   6: ifnull +14 -> 20
    //   9: getstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   12: invokeinterface 180 1 0
    //   17: ifeq +24 -> 41
    //   20: getstatic 40	com/amap/api/mapcore2d/dg:g	Ljava/util/concurrent/ThreadFactory;
    //   23: invokestatic 186	java/util/concurrent/Executors:newSingleThreadExecutor	(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    //   26: putstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   29: goto +12 -> 41
    //   32: astore_0
    //   33: goto +17 -> 50
    //   36: astore_0
    //   37: aload_0
    //   38: invokevirtual 105	java/lang/Throwable:printStackTrace	()V
    //   41: getstatic 149	com/amap/api/mapcore2d/dg:e	Ljava/util/concurrent/ExecutorService;
    //   44: astore_0
    //   45: ldc 2
    //   47: monitorexit
    //   48: aload_0
    //   49: areturn
    //   50: ldc 2
    //   52: monitorexit
    //   53: aload_0
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   32	1	0	localObject	Object
    //   36	2	0	localThrowable	Throwable
    //   44	10	0	localExecutorService	ExecutorService
    // Exception table:
    //   from	to	target	type
    //   3	20	32	finally
    //   20	29	32	finally
    //   37	41	32	finally
    //   41	45	32	finally
    //   3	20	36	java/lang/Throwable
    //   20	29	36	java/lang/Throwable
  }
  
  private void d()
  {
    try
    {
      b = Thread.getDefaultUncaughtExceptionHandler();
      if (b == null)
      {
        Thread.setDefaultUncaughtExceptionHandler(this);
        c = true;
        return;
      }
      String str = b.toString();
      if ((str.indexOf("com.amap.api") == -1) && (str.indexOf("com.loc") == -1))
      {
        Thread.setDefaultUncaughtExceptionHandler(this);
        c = true;
        return;
      }
      c = false;
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  protected void a(final Context paramContext, final cy paramCy, final boolean paramBoolean)
  {
    try
    {
      ExecutorService localExecutorService = c();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown()) {
          return;
        }
        localExecutorService.submit(new Runnable()
        {
          public void run()
          {
            try
            {
              synchronized ()
              {
                new dw(paramContext, true).a(paramCy);
                if (paramBoolean) {
                  synchronized (Looper.getMainLooper())
                  {
                    dx localDx = new dx(paramContext);
                    dy localDy = new dy();
                    localDy.c(true);
                    localDy.a(true);
                    localDy.b(true);
                    localDx.a(localDy);
                    de.a(dg.a(dg.this));
                    return;
                  }
                }
              }
              return;
            }
            catch (Throwable localThrowable)
            {
              localThrowable.printStackTrace();
            }
          }
        });
        return;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (RejectedExecutionException paramContext) {}
  }
  
  protected void a(cy paramCy, String paramString1, String paramString2)
  {
    de.a(d, paramCy, paramString1, paramString2);
  }
  
  protected void a(Throwable paramThrowable, int paramInt, String paramString1, String paramString2)
  {
    de.a(d, paramThrowable, paramInt, paramString1, paramString2);
  }
  
  public void c(Throwable paramThrowable, String paramString1, String paramString2)
  {
    if (paramThrowable == null) {
      return;
    }
    try
    {
      a(paramThrowable, 1, paramString1, paramString2);
      return;
    }
    catch (Throwable paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return;
    }
    a(paramThrowable, 0, null, null);
    if (b != null) {}
    try
    {
      Thread.setDefaultUncaughtExceptionHandler(b);
      b.uncaughtException(paramThread, paramThrowable);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  private static class a
    implements et
  {
    private Context a;
    
    a(Context paramContext)
    {
      a = paramContext;
    }
    
    public void a()
    {
      try
      {
        de.b(a);
        return;
      }
      catch (Throwable localThrowable)
      {
        dd.a(localThrowable, "LogNetListener", "onNetCompleted");
      }
    }
  }
}
