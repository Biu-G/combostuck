package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;

public class de
{
  public static final String a = "/a/";
  static final String b = "b";
  static final String c = "c";
  static final String d = "d";
  public static final String e = "g";
  public static final String f = "h";
  public static final String g = "e";
  public static final String h = "f";
  
  static dk a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return new dh(paramInt);
    case 1: 
      return new dj(paramInt);
    }
    return new di(paramInt);
  }
  
  public static Class<? extends dv> a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return dp.class;
    case 1: 
      return ds.class;
    }
    return dq.class;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext.getFilesDir().getAbsolutePath());
    localStringBuilder.append(a);
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  static void a(Context paramContext)
  {
    try
    {
      dk localDk = a(paramContext, 2);
      if (localDk == null) {
        return;
      }
      localDk.b(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  static void a(Context paramContext, final cy paramCy, final String paramString1, final String paramString2)
  {
    try
    {
      if (!paramCy.f()) {
        return;
      }
      ExecutorService localExecutorService = dg.c();
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
              dk localDk = de.a(a, 1);
              if (TextUtils.isEmpty(paramString2))
              {
                localDk.a(paramCy, a, new Throwable("gpsstatistics"), paramString1, null, null);
                return;
              }
              localDk.a(paramCy, a, paramString2, paramString1, null, null);
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
  
  static void a(Context paramContext, final Throwable paramThrowable, final int paramInt, final String paramString1, final String paramString2)
  {
    try
    {
      ExecutorService localExecutorService = dg.c();
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
              dk localDk = de.a(a, paramInt);
              if (localDk == null) {
                return;
              }
              localDk.a(a, paramThrowable, paramString1, paramString2);
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
  
  public static dv b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return new dp();
    case 1: 
      return new ds();
    }
    return new dq();
  }
  
  static void b(Context paramContext)
  {
    try
    {
      ExecutorService localExecutorService = dg.c();
      if (localExecutorService != null)
      {
        if (localExecutorService.isShutdown()) {
          return;
        }
        localExecutorService.submit(new Runnable()
        {
          /* Error */
          public void run()
          {
            // Byte code:
            //   0: aload_0
            //   1: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   4: iconst_0
            //   5: invokestatic 28	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;
            //   8: astore_1
            //   9: aload_0
            //   10: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   13: iconst_1
            //   14: invokestatic 28	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;
            //   17: astore_2
            //   18: aload_0
            //   19: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   22: iconst_2
            //   23: invokestatic 28	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;I)Lcom/amap/api/mapcore2d/dk;
            //   26: astore_3
            //   27: aload_1
            //   28: astore 5
            //   30: aload_2
            //   31: astore 6
            //   33: aload_3
            //   34: astore 7
            //   36: aload_1
            //   37: aload_0
            //   38: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   41: invokevirtual 33	com/amap/api/mapcore2d/dk:c	(Landroid/content/Context;)V
            //   44: aload_1
            //   45: astore 5
            //   47: aload_2
            //   48: astore 6
            //   50: aload_3
            //   51: astore 7
            //   53: aload_2
            //   54: aload_0
            //   55: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   58: invokevirtual 33	com/amap/api/mapcore2d/dk:c	(Landroid/content/Context;)V
            //   61: aload_1
            //   62: astore 5
            //   64: aload_2
            //   65: astore 6
            //   67: aload_3
            //   68: astore 7
            //   70: aload_3
            //   71: aload_0
            //   72: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   75: invokevirtual 33	com/amap/api/mapcore2d/dk:c	(Landroid/content/Context;)V
            //   78: aload_1
            //   79: astore 5
            //   81: aload_2
            //   82: astore 6
            //   84: aload_3
            //   85: astore 7
            //   87: aload_0
            //   88: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   91: invokestatic 37	com/amap/api/mapcore2d/fc:a	(Landroid/content/Context;)V
            //   94: aload_1
            //   95: astore 5
            //   97: aload_2
            //   98: astore 6
            //   100: aload_3
            //   101: astore 7
            //   103: aload_0
            //   104: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   107: invokestatic 40	com/amap/api/mapcore2d/fa:a	(Landroid/content/Context;)V
            //   110: aload_1
            //   111: astore 5
            //   113: aload_2
            //   114: astore 6
            //   116: aload_3
            //   117: astore 7
            //   119: invokestatic 43	com/amap/api/mapcore2d/dk:a	()Ljava/util/List;
            //   122: astore 4
            //   124: aload_1
            //   125: astore 5
            //   127: aload_2
            //   128: astore 6
            //   130: aload_3
            //   131: astore 7
            //   133: aload 4
            //   135: invokeinterface 49 1 0
            //   140: ifle +84 -> 224
            //   143: aload_1
            //   144: astore 5
            //   146: aload_2
            //   147: astore 6
            //   149: aload_3
            //   150: astore 7
            //   152: aload 4
            //   154: invokeinterface 53 1 0
            //   159: astore 4
            //   161: aload_1
            //   162: astore 5
            //   164: aload_2
            //   165: astore 6
            //   167: aload_3
            //   168: astore 7
            //   170: aload 4
            //   172: invokeinterface 59 1 0
            //   177: ifeq +47 -> 224
            //   180: aload_1
            //   181: astore 5
            //   183: aload_2
            //   184: astore 6
            //   186: aload_3
            //   187: astore 7
            //   189: aload 4
            //   191: invokeinterface 63 1 0
            //   196: checkcast 65	com/amap/api/mapcore2d/dk$b
            //   199: astore 8
            //   201: aload_1
            //   202: astore 5
            //   204: aload_2
            //   205: astore 6
            //   207: aload_3
            //   208: astore 7
            //   210: aload 8
            //   212: aload_0
            //   213: getfield 16	com/amap/api/mapcore2d/de$3:a	Landroid/content/Context;
            //   216: invokeinterface 66 2 0
            //   221: goto -60 -> 161
            //   224: aload_1
            //   225: ifnull +7 -> 232
            //   228: aload_1
            //   229: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   232: aload_2
            //   233: ifnull +7 -> 240
            //   236: aload_2
            //   237: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   240: aload_3
            //   241: ifnull +147 -> 388
            //   244: aload_3
            //   245: astore_1
            //   246: aload_1
            //   247: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   250: return
            //   251: astore 4
            //   253: aload_1
            //   254: astore 8
            //   256: aload_3
            //   257: astore_1
            //   258: goto +86 -> 344
            //   261: astore_3
            //   262: aconst_null
            //   263: astore 4
            //   265: aload_1
            //   266: astore 5
            //   268: aload 4
            //   270: astore_1
            //   271: goto +125 -> 396
            //   274: astore 4
            //   276: aconst_null
            //   277: astore_3
            //   278: aload_1
            //   279: astore 8
            //   281: aload_3
            //   282: astore_1
            //   283: goto +61 -> 344
            //   286: aconst_null
            //   287: astore_3
            //   288: goto +142 -> 430
            //   291: astore_3
            //   292: aconst_null
            //   293: astore 4
            //   295: aload 4
            //   297: astore_2
            //   298: aload_1
            //   299: astore 5
            //   301: aload 4
            //   303: astore_1
            //   304: goto +92 -> 396
            //   307: astore 4
            //   309: aconst_null
            //   310: astore_3
            //   311: aload_3
            //   312: astore_2
            //   313: aload_1
            //   314: astore 8
            //   316: aload_3
            //   317: astore_1
            //   318: goto +26 -> 344
            //   321: goto +105 -> 426
            //   324: astore_3
            //   325: aconst_null
            //   326: astore_2
            //   327: aload_2
            //   328: astore_1
            //   329: aload_1
            //   330: astore 5
            //   332: goto +64 -> 396
            //   335: astore 4
            //   337: aconst_null
            //   338: astore_2
            //   339: aload_2
            //   340: astore_1
            //   341: aload_1
            //   342: astore 8
            //   344: aload 8
            //   346: astore 5
            //   348: aload_2
            //   349: astore 6
            //   351: aload_1
            //   352: astore 7
            //   354: aload 4
            //   356: ldc 71
            //   358: ldc 73
            //   360: invokestatic 78	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
            //   363: aload 8
            //   365: ifnull +8 -> 373
            //   368: aload 8
            //   370: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   373: aload_2
            //   374: ifnull +7 -> 381
            //   377: aload_2
            //   378: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   381: aload_1
            //   382: ifnull +6 -> 388
            //   385: goto -139 -> 246
            //   388: return
            //   389: astore_3
            //   390: aload 7
            //   392: astore_1
            //   393: aload 6
            //   395: astore_2
            //   396: aload 5
            //   398: ifnull +8 -> 406
            //   401: aload 5
            //   403: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   406: aload_2
            //   407: ifnull +7 -> 414
            //   410: aload_2
            //   411: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   414: aload_1
            //   415: ifnull +7 -> 422
            //   418: aload_1
            //   419: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   422: aload_3
            //   423: athrow
            //   424: aconst_null
            //   425: astore_1
            //   426: aconst_null
            //   427: astore_2
            //   428: aconst_null
            //   429: astore_3
            //   430: aload_1
            //   431: ifnull +7 -> 438
            //   434: aload_1
            //   435: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   438: aload_2
            //   439: ifnull +7 -> 446
            //   442: aload_2
            //   443: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   446: aload_3
            //   447: ifnull +7 -> 454
            //   450: aload_3
            //   451: invokevirtual 69	com/amap/api/mapcore2d/dk:d	()V
            //   454: return
            //   455: astore_1
            //   456: goto -32 -> 424
            //   459: astore_2
            //   460: goto -139 -> 321
            //   463: astore_3
            //   464: goto -178 -> 286
            //   467: astore 4
            //   469: goto -39 -> 430
            //   472: astore 5
            //   474: goto -313 -> 161
            // Local variable table:
            //   start	length	slot	name	signature
            //   0	477	0	this	3
            //   8	427	1	localObject1	Object
            //   455	1	1	localRejectedExecutionException1	RejectedExecutionException
            //   17	426	2	localObject2	Object
            //   459	1	2	localRejectedExecutionException2	RejectedExecutionException
            //   26	231	3	localDk	dk
            //   261	1	3	localObject3	Object
            //   277	11	3	localObject4	Object
            //   291	1	3	localObject5	Object
            //   310	7	3	localObject6	Object
            //   324	1	3	localObject7	Object
            //   389	34	3	localObject8	Object
            //   429	22	3	localObject9	Object
            //   463	1	3	localRejectedExecutionException3	RejectedExecutionException
            //   122	68	4	localObject10	Object
            //   251	1	4	localThrowable1	Throwable
            //   263	6	4	localObject11	Object
            //   274	1	4	localThrowable2	Throwable
            //   293	9	4	localObject12	Object
            //   307	1	4	localThrowable3	Throwable
            //   335	20	4	localThrowable4	Throwable
            //   467	1	4	localRejectedExecutionException4	RejectedExecutionException
            //   28	374	5	localObject13	Object
            //   472	1	5	localThrowable5	Throwable
            //   31	363	6	localObject14	Object
            //   34	357	7	localObject15	Object
            //   199	170	8	localObject16	Object
            // Exception table:
            //   from	to	target	type
            //   36	44	251	java/lang/Throwable
            //   53	61	251	java/lang/Throwable
            //   70	78	251	java/lang/Throwable
            //   87	94	251	java/lang/Throwable
            //   103	110	251	java/lang/Throwable
            //   119	124	251	java/lang/Throwable
            //   133	143	251	java/lang/Throwable
            //   152	161	251	java/lang/Throwable
            //   170	180	251	java/lang/Throwable
            //   189	201	251	java/lang/Throwable
            //   18	27	261	finally
            //   18	27	274	java/lang/Throwable
            //   9	18	291	finally
            //   9	18	307	java/lang/Throwable
            //   0	9	324	finally
            //   0	9	335	java/lang/Throwable
            //   36	44	389	finally
            //   53	61	389	finally
            //   70	78	389	finally
            //   87	94	389	finally
            //   103	110	389	finally
            //   119	124	389	finally
            //   133	143	389	finally
            //   152	161	389	finally
            //   170	180	389	finally
            //   189	201	389	finally
            //   210	221	389	finally
            //   354	363	389	finally
            //   0	9	455	java/util/concurrent/RejectedExecutionException
            //   9	18	459	java/util/concurrent/RejectedExecutionException
            //   18	27	463	java/util/concurrent/RejectedExecutionException
            //   36	44	467	java/util/concurrent/RejectedExecutionException
            //   53	61	467	java/util/concurrent/RejectedExecutionException
            //   70	78	467	java/util/concurrent/RejectedExecutionException
            //   87	94	467	java/util/concurrent/RejectedExecutionException
            //   103	110	467	java/util/concurrent/RejectedExecutionException
            //   119	124	467	java/util/concurrent/RejectedExecutionException
            //   133	143	467	java/util/concurrent/RejectedExecutionException
            //   152	161	467	java/util/concurrent/RejectedExecutionException
            //   170	180	467	java/util/concurrent/RejectedExecutionException
            //   189	201	467	java/util/concurrent/RejectedExecutionException
            //   210	221	467	java/util/concurrent/RejectedExecutionException
            //   210	221	472	java/lang/Throwable
          }
        });
        return;
      }
      return;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "Log", "processLog");
    }
  }
  
  public static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case 2: 
      return d;
    case 1: 
      return b;
    }
    return c;
  }
}
