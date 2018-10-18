package com.amap.api.mapcore2d;

import com.amap.api.maps2d.AMapException;
import java.util.ArrayList;
import java.util.Vector;

abstract class f<T, V>
  extends aw
{
  protected bo<T> a;
  private volatile boolean c = true;
  private Vector<Thread> d = null;
  private Runnable e = new Runnable()
  {
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: invokestatic 33	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   3: astore_2
      //   4: aload_2
      //   5: ifnull +9 -> 14
      //   8: aload_2
      //   9: ldc 35
      //   11: invokevirtual 39	java/lang/Thread:setName	(Ljava/lang/String;)V
      //   14: aload_0
      //   15: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   18: invokestatic 42	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;
      //   21: ifnull +363 -> 384
      //   24: aload_0
      //   25: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   28: invokestatic 42	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;
      //   31: aload_2
      //   32: invokevirtual 48	java/util/Vector:add	(Ljava/lang/Object;)Z
      //   35: pop
      //   36: goto +348 -> 384
      //   39: aload_0
      //   40: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   43: invokestatic 52	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   46: ifeq +329 -> 375
      //   49: invokestatic 56	java/lang/Thread:interrupted	()Z
      //   52: ifne +323 -> 375
      //   55: aload_0
      //   56: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   59: getfield 59	com/amap/api/mapcore2d/f:b	Lcom/amap/api/mapcore2d/az;
      //   62: ifnonnull +15 -> 77
      //   65: aload_0
      //   66: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   69: iconst_0
      //   70: invokestatic 62	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;Z)Z
      //   73: pop
      //   74: goto -35 -> 39
      //   77: invokestatic 67	com/amap/api/maps2d/MapsInitializer:getNetworkEnable	()Z
      //   80: istore_1
      //   81: iload_1
      //   82: ifne +45 -> 127
      //   85: invokestatic 56	java/lang/Thread:interrupted	()Z
      //   88: ifne -49 -> 39
      //   91: ldc2_w 68
      //   94: invokestatic 73	java/lang/Thread:sleep	(J)V
      //   97: goto -58 -> 39
      //   100: astore_3
      //   101: aload_3
      //   102: ldc 75
      //   104: ldc 76
      //   106: invokestatic 81	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   109: invokestatic 33	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   112: invokevirtual 84	java/lang/Thread:interrupt	()V
      //   115: goto -76 -> 39
      //   118: invokestatic 33	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   121: invokevirtual 84	java/lang/Thread:interrupt	()V
      //   124: goto -85 -> 39
      //   127: aload 4
      //   129: astore_3
      //   130: aload_0
      //   131: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   134: getfield 87	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   137: ifnull +22 -> 159
      //   140: aload_0
      //   141: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   144: getfield 87	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   147: aload_0
      //   148: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   151: invokevirtual 91	com/amap/api/mapcore2d/f:g	()I
      //   154: iconst_0
      //   155: invokevirtual 96	com/amap/api/mapcore2d/bo:a	(IZ)Ljava/util/ArrayList;
      //   158: astore_3
      //   159: aload_3
      //   160: ifnull +16 -> 176
      //   163: aload_3
      //   164: invokevirtual 101	java/util/ArrayList:size	()I
      //   167: ifne +9 -> 176
      //   170: aload_3
      //   171: astore 4
      //   173: goto -134 -> 39
      //   176: aload_0
      //   177: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   180: invokestatic 52	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   183: ifne +4 -> 187
      //   186: return
      //   187: aload_2
      //   188: astore 5
      //   190: aload_3
      //   191: ifnull +96 -> 287
      //   194: aload_0
      //   195: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   198: invokestatic 52	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   201: ifne +4 -> 205
      //   204: return
      //   205: aload_0
      //   206: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   209: getfield 59	com/amap/api/mapcore2d/f:b	Lcom/amap/api/mapcore2d/az;
      //   212: astore 4
      //   214: aload 4
      //   216: ifnonnull +9 -> 225
      //   219: aload_3
      //   220: astore 4
      //   222: goto -183 -> 39
      //   225: aload_0
      //   226: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   229: aload_3
      //   230: invokevirtual 104	com/amap/api/mapcore2d/f:a	(Ljava/util/ArrayList;)Ljava/util/ArrayList;
      //   233: astore 4
      //   235: aload 4
      //   237: astore_2
      //   238: goto +14 -> 252
      //   241: astore 4
      //   243: aload 4
      //   245: ldc 75
      //   247: ldc 76
      //   249: invokestatic 81	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   252: aload_2
      //   253: astore 5
      //   255: aload_2
      //   256: ifnull +31 -> 287
      //   259: aload_2
      //   260: astore 5
      //   262: aload_0
      //   263: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   266: getfield 87	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   269: ifnull +18 -> 287
      //   272: aload_0
      //   273: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   276: getfield 87	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   279: aload_2
      //   280: iconst_0
      //   281: invokevirtual 107	com/amap/api/mapcore2d/bo:a	(Ljava/util/List;Z)V
      //   284: aload_2
      //   285: astore 5
      //   287: aload_3
      //   288: astore 4
      //   290: aload 5
      //   292: astore_2
      //   293: aload_0
      //   294: getfield 14	com/amap/api/mapcore2d/f$1:a	Lcom/amap/api/mapcore2d/f;
      //   297: invokestatic 52	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   300: iconst_1
      //   301: if_icmpne -262 -> 39
      //   304: invokestatic 56	java/lang/Thread:interrupted	()Z
      //   307: istore_1
      //   308: aload_3
      //   309: astore 4
      //   311: aload 5
      //   313: astore_2
      //   314: iload_1
      //   315: ifne -276 -> 39
      //   318: ldc2_w 108
      //   321: invokestatic 73	java/lang/Thread:sleep	(J)V
      //   324: aload_3
      //   325: astore 4
      //   327: aload 5
      //   329: astore_2
      //   330: goto -291 -> 39
      //   333: astore_2
      //   334: aload_2
      //   335: ldc 75
      //   337: ldc 76
      //   339: invokestatic 81	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   342: aload_3
      //   343: astore 4
      //   345: aload 5
      //   347: astore_2
      //   348: goto -309 -> 39
      //   351: invokestatic 33	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   354: invokevirtual 84	java/lang/Thread:interrupt	()V
      //   357: aload_3
      //   358: astore 4
      //   360: aload 5
      //   362: astore_2
      //   363: goto -324 -> 39
      //   366: astore_2
      //   367: aload_2
      //   368: ldc 75
      //   370: ldc 76
      //   372: invokestatic 81	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   375: return
      //   376: astore_3
      //   377: goto -259 -> 118
      //   380: astore_2
      //   381: goto -30 -> 351
      //   384: aconst_null
      //   385: astore 4
      //   387: aconst_null
      //   388: astore_2
      //   389: goto -350 -> 39
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	392	0	this	1
      //   80	235	1	bool	boolean
      //   3	327	2	localObject1	Object
      //   333	2	2	localException1	Exception
      //   347	16	2	localObject2	Object
      //   366	2	2	localThrowable	Throwable
      //   380	1	2	localInterruptedException1	InterruptedException
      //   388	1	2	localObject3	Object
      //   100	2	3	localException2	Exception
      //   129	229	3	localObject4	Object
      //   376	1	3	localInterruptedException2	InterruptedException
      //   127	109	4	localObject5	Object
      //   241	3	4	localAMapException	AMapException
      //   288	98	4	localObject6	Object
      //   188	173	5	localObject7	Object
      // Exception table:
      //   from	to	target	type
      //   85	97	100	java/lang/Exception
      //   225	235	241	com/amap/api/maps2d/AMapException
      //   318	324	333	java/lang/Exception
      //   14	36	366	java/lang/Throwable
      //   39	74	366	java/lang/Throwable
      //   77	81	366	java/lang/Throwable
      //   85	97	366	java/lang/Throwable
      //   101	115	366	java/lang/Throwable
      //   118	124	366	java/lang/Throwable
      //   130	159	366	java/lang/Throwable
      //   163	170	366	java/lang/Throwable
      //   176	186	366	java/lang/Throwable
      //   194	204	366	java/lang/Throwable
      //   205	214	366	java/lang/Throwable
      //   225	235	366	java/lang/Throwable
      //   243	252	366	java/lang/Throwable
      //   262	284	366	java/lang/Throwable
      //   293	308	366	java/lang/Throwable
      //   318	324	366	java/lang/Throwable
      //   334	342	366	java/lang/Throwable
      //   351	357	366	java/lang/Throwable
      //   85	97	376	java/lang/InterruptedException
      //   318	324	380	java/lang/InterruptedException
    }
  };
  private Runnable f = new Runnable()
  {
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: invokestatic 29	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   3: astore_2
      //   4: aload_2
      //   5: ifnull +9 -> 14
      //   8: aload_2
      //   9: ldc 31
      //   11: invokevirtual 35	java/lang/Thread:setName	(Ljava/lang/String;)V
      //   14: aload_0
      //   15: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   18: invokestatic 38	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;
      //   21: ifnull +279 -> 300
      //   24: aload_2
      //   25: ifnull +275 -> 300
      //   28: aload_0
      //   29: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   32: invokestatic 38	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;)Ljava/util/Vector;
      //   35: aload_2
      //   36: invokevirtual 44	java/util/Vector:add	(Ljava/lang/Object;)Z
      //   39: pop
      //   40: goto +260 -> 300
      //   43: aload_0
      //   44: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   47: invokestatic 48	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   50: ifeq +245 -> 295
      //   53: invokestatic 52	java/lang/Thread:interrupted	()Z
      //   56: ifne +239 -> 295
      //   59: aload_0
      //   60: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   63: getfield 55	com/amap/api/mapcore2d/f:b	Lcom/amap/api/mapcore2d/az;
      //   66: ifnonnull +15 -> 81
      //   69: aload_0
      //   70: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   73: iconst_0
      //   74: invokestatic 58	com/amap/api/mapcore2d/f:a	(Lcom/amap/api/mapcore2d/f;Z)Z
      //   77: pop
      //   78: goto -35 -> 43
      //   81: aload 5
      //   83: astore_2
      //   84: aload_0
      //   85: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   88: getfield 61	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   91: ifnull +22 -> 113
      //   94: aload_0
      //   95: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   98: getfield 61	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   101: aload_0
      //   102: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   105: invokevirtual 65	com/amap/api/mapcore2d/f:g	()I
      //   108: iconst_1
      //   109: invokevirtual 70	com/amap/api/mapcore2d/bo:a	(IZ)Ljava/util/ArrayList;
      //   112: astore_2
      //   113: aload_2
      //   114: ifnull +16 -> 130
      //   117: aload_2
      //   118: invokevirtual 75	java/util/ArrayList:size	()I
      //   121: ifne +9 -> 130
      //   124: aload_2
      //   125: astore 5
      //   127: goto -84 -> 43
      //   130: aload_0
      //   131: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   134: invokestatic 48	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   137: istore_1
      //   138: iload_1
      //   139: ifne +4 -> 143
      //   142: return
      //   143: aload_0
      //   144: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   147: aload_2
      //   148: invokevirtual 78	com/amap/api/mapcore2d/f:b	(Ljava/util/ArrayList;)Ljava/util/ArrayList;
      //   151: astore 4
      //   153: goto +17 -> 170
      //   156: astore 4
      //   158: aload 4
      //   160: ldc 80
      //   162: ldc 81
      //   164: invokestatic 86	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   167: aload_3
      //   168: astore 4
      //   170: aload 4
      //   172: ifnull +35 -> 207
      //   175: aload_0
      //   176: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   179: getfield 61	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   182: ifnull +25 -> 207
      //   185: getstatic 91	com/amap/api/mapcore2d/ar:a	Landroid/content/Context;
      //   188: invokestatic 94	com/amap/api/mapcore2d/cm:a	(Landroid/content/Context;)Z
      //   191: ifeq +16 -> 207
      //   194: aload_0
      //   195: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   198: getfield 61	com/amap/api/mapcore2d/f:a	Lcom/amap/api/mapcore2d/bo;
      //   201: aload 4
      //   203: iconst_0
      //   204: invokevirtual 97	com/amap/api/mapcore2d/bo:a	(Ljava/util/List;Z)V
      //   207: aload_2
      //   208: astore 5
      //   210: aload 4
      //   212: astore_3
      //   213: aload_0
      //   214: getfield 14	com/amap/api/mapcore2d/f$2:a	Lcom/amap/api/mapcore2d/f;
      //   217: invokestatic 48	com/amap/api/mapcore2d/f:b	(Lcom/amap/api/mapcore2d/f;)Z
      //   220: iconst_1
      //   221: if_icmpne -178 -> 43
      //   224: invokestatic 52	java/lang/Thread:interrupted	()Z
      //   227: istore_1
      //   228: aload_2
      //   229: astore 5
      //   231: aload 4
      //   233: astore_3
      //   234: iload_1
      //   235: ifne -192 -> 43
      //   238: ldc2_w 98
      //   241: invokestatic 103	java/lang/Thread:sleep	(J)V
      //   244: aload_2
      //   245: astore 5
      //   247: aload 4
      //   249: astore_3
      //   250: goto -207 -> 43
      //   253: astore_3
      //   254: aload_3
      //   255: ldc 80
      //   257: ldc 81
      //   259: invokestatic 86	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   262: aload_2
      //   263: astore 5
      //   265: aload 4
      //   267: astore_3
      //   268: goto -225 -> 43
      //   271: invokestatic 29	java/lang/Thread:currentThread	()Ljava/lang/Thread;
      //   274: invokevirtual 106	java/lang/Thread:interrupt	()V
      //   277: aload_2
      //   278: astore 5
      //   280: aload 4
      //   282: astore_3
      //   283: goto -240 -> 43
      //   286: astore_2
      //   287: aload_2
      //   288: ldc 80
      //   290: ldc 81
      //   292: invokestatic 86	com/amap/api/mapcore2d/cm:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
      //   295: return
      //   296: astore_3
      //   297: goto -26 -> 271
      //   300: aconst_null
      //   301: astore 5
      //   303: aconst_null
      //   304: astore_3
      //   305: goto -262 -> 43
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	308	0	this	2
      //   137	98	1	bool	boolean
      //   3	275	2	localObject1	Object
      //   286	2	2	localThrowable1	Throwable
      //   167	83	3	localObject2	Object
      //   253	2	3	localThrowable2	Throwable
      //   267	16	3	localObject3	Object
      //   296	1	3	localInterruptedException	InterruptedException
      //   304	1	3	localObject4	Object
      //   151	1	4	localArrayList	ArrayList
      //   156	3	4	localThrowable3	Throwable
      //   168	113	4	localObject5	Object
      //   81	221	5	localObject6	Object
      // Exception table:
      //   from	to	target	type
      //   143	153	156	java/lang/Throwable
      //   238	244	253	java/lang/Throwable
      //   14	24	286	java/lang/Throwable
      //   28	40	286	java/lang/Throwable
      //   43	78	286	java/lang/Throwable
      //   84	113	286	java/lang/Throwable
      //   117	124	286	java/lang/Throwable
      //   130	138	286	java/lang/Throwable
      //   158	167	286	java/lang/Throwable
      //   175	207	286	java/lang/Throwable
      //   213	228	286	java/lang/Throwable
      //   254	262	286	java/lang/Throwable
      //   271	277	286	java/lang/Throwable
      //   238	244	296	java/lang/InterruptedException
    }
  };
  private bq g;
  
  public f(az paramAz)
  {
    super(paramAz);
  }
  
  protected abstract ArrayList<T> a(ArrayList<T> paramArrayList)
    throws AMapException;
  
  protected void a()
  {
    if (d == null) {
      d = new Vector();
    }
    g = new bq(f(), f, e);
    g.a();
  }
  
  protected abstract ArrayList<T> b(ArrayList<T> paramArrayList)
    throws AMapException;
  
  public void b()
  {
    if (a != null) {
      a.a();
    }
    e();
    if (a != null) {
      a.b();
    }
    a = null;
    f = null;
    e = null;
    b = null;
  }
  
  public void c()
  {
    super.c();
    e();
  }
  
  public void d()
  {
    try
    {
      if (c == true) {
        return;
      }
      c = true;
      if (d == null) {
        d = new Vector();
      }
      if (g == null)
      {
        g = new bq(f(), f, e);
        g.a();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cm.a(localThrowable, "AsyncServer", "onResume");
    }
  }
  
  public void e()
  {
    for (;;)
    {
      int i;
      try
      {
        c = false;
        if (d != null)
        {
          int j = d.size();
          i = 0;
          if (i < j)
          {
            Thread localThread = (Thread)d.get(0);
            if (localThread == null) {
              break label94;
            }
            localThread.interrupt();
            d.remove(0);
            break label94;
          }
          d = null;
        }
        if (g != null)
        {
          g.b();
          g = null;
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        cm.a(localThrowable, "AsyncServer", "stopThreads");
      }
      return;
      label94:
      i += 1;
    }
  }
  
  protected abstract int f();
  
  protected abstract int g();
}
