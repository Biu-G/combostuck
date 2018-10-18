package com.amap.api.mapcore2d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public class ej
{
  private static final ej a = new ej();
  private final Map<String, ec> b = new HashMap();
  
  private ej() {}
  
  public static ej a()
  {
    return a;
  }
  
  private boolean a(cy paramCy)
  {
    return (paramCy != null) && (!TextUtils.isEmpty(paramCy.b())) && (!TextUtils.isEmpty(paramCy.a()));
  }
  
  /* Error */
  ec a(android.content.Context paramContext, cy paramCy)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: invokespecial 45	com/amap/api/mapcore2d/ej:a	(Lcom/amap/api/mapcore2d/cy;)Z
    //   7: ifeq +77 -> 84
    //   10: aload_1
    //   11: ifnonnull +6 -> 17
    //   14: goto +70 -> 84
    //   17: aload_2
    //   18: invokevirtual 38	com/amap/api/mapcore2d/cy:a	()Ljava/lang/String;
    //   21: astore 5
    //   23: aload_0
    //   24: getfield 23	com/amap/api/mapcore2d/ej:b	Ljava/util/Map;
    //   27: aload 5
    //   29: invokeinterface 51 2 0
    //   34: checkcast 53	com/amap/api/mapcore2d/ec
    //   37: astore 4
    //   39: aload 4
    //   41: astore_3
    //   42: aload 4
    //   44: ifnonnull +36 -> 80
    //   47: new 55	com/amap/api/mapcore2d/eh
    //   50: dup
    //   51: aload_1
    //   52: invokevirtual 61	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   55: aload_2
    //   56: iconst_1
    //   57: invokespecial 64	com/amap/api/mapcore2d/eh:<init>	(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Z)V
    //   60: astore_3
    //   61: aload_0
    //   62: getfield 23	com/amap/api/mapcore2d/ej:b	Ljava/util/Map;
    //   65: aload 5
    //   67: aload_3
    //   68: invokeinterface 68 3 0
    //   73: pop
    //   74: aload_1
    //   75: aload_2
    //   76: invokestatic 73	com/amap/api/mapcore2d/ef:a	(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)Lcom/amap/api/mapcore2d/ef;
    //   79: pop
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_3
    //   83: areturn
    //   84: aload_0
    //   85: monitorexit
    //   86: aconst_null
    //   87: areturn
    //   88: astore_1
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_1
    //   92: athrow
    //   93: astore_1
    //   94: aload 4
    //   96: astore_3
    //   97: goto -17 -> 80
    //   100: astore_1
    //   101: goto -21 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	ej
    //   0	104	1	paramContext	android.content.Context
    //   0	104	2	paramCy	cy
    //   41	56	3	localObject	Object
    //   37	58	4	localEc	ec
    //   21	45	5	str	String
    // Exception table:
    //   from	to	target	type
    //   2	10	88	finally
    //   17	39	88	finally
    //   47	61	88	finally
    //   61	80	88	finally
    //   47	61	93	java/lang/Throwable
    //   61	80	100	java/lang/Throwable
  }
}
