package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.concurrent.ExecutorService;

public class fa
{
  static int a = 1000;
  static boolean b = false;
  
  public fa() {}
  
  private static String a(Context paramContext, el paramEl)
  {
    paramEl = a(paramEl);
    if (TextUtils.isEmpty(paramEl)) {
      return null;
    }
    paramContext = d(paramContext);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"pinfo\":\"");
    localStringBuilder.append(paramContext);
    localStringBuilder.append("\",\"els\":[");
    localStringBuilder.append(paramEl);
    localStringBuilder.append("]}");
    return localStringBuilder.toString();
  }
  
  private static String a(el paramEl)
  {
    localStringBuilder = new StringBuilder();
    try
    {
      Object localObject = paramEl.c();
      if ((localObject != null) && (((File)localObject).exists()))
      {
        localObject = ((File)localObject).list();
        int k = localObject.length;
        int j = 0;
        int i = 1;
        while (j < k)
        {
          String str = localObject[j];
          if (str.contains(".0"))
          {
            str = cz.a(fd.a(paramEl, str.split("\\.")[0], false));
            if (i != 0) {
              i = 0;
            } else {
              localStringBuilder.append(",");
            }
            localStringBuilder.append("{\"log\":\"");
            localStringBuilder.append(str);
            localStringBuilder.append("\"}");
          }
          j += 1;
        }
      }
      return localStringBuilder.toString();
    }
    catch (Throwable paramEl)
    {
      dd.a(paramEl, "StatisticsManager", "getContent");
    }
  }
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 5
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_2
    //   9: astore_3
    //   10: aload_0
    //   11: invokestatic 109	com/amap/api/mapcore2d/fa:c	(Landroid/content/Context;)Z
    //   14: ifne +4 -> 18
    //   17: return
    //   18: aload_2
    //   19: astore_3
    //   20: new 59	java/io/File
    //   23: dup
    //   24: aload_0
    //   25: getstatic 115	com/amap/api/mapcore2d/de:h	Ljava/lang/String;
    //   28: invokestatic 118	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   31: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: iconst_1
    //   35: iconst_1
    //   36: ldc2_w 122
    //   39: invokestatic 126	com/amap/api/mapcore2d/el:a	(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;
    //   42: astore_2
    //   43: aload_0
    //   44: aload_2
    //   45: invokestatic 128	com/amap/api/mapcore2d/fa:a	(Landroid/content/Context;Lcom/amap/api/mapcore2d/el;)Ljava/lang/String;
    //   48: astore_0
    //   49: aload_0
    //   50: invokestatic 28	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   53: istore_1
    //   54: iload_1
    //   55: ifeq +25 -> 80
    //   58: aload_2
    //   59: ifnull +20 -> 79
    //   62: aload_2
    //   63: invokevirtual 130	com/amap/api/mapcore2d/el:d	()Z
    //   66: ifne +13 -> 79
    //   69: aload_2
    //   70: invokevirtual 133	com/amap/api/mapcore2d/el:close	()V
    //   73: return
    //   74: astore_0
    //   75: aload_0
    //   76: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   79: return
    //   80: new 138	com/amap/api/mapcore2d/df
    //   83: dup
    //   84: aload_0
    //   85: invokestatic 141	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   88: invokestatic 144	com/amap/api/mapcore2d/cz:c	([B)[B
    //   91: ldc -110
    //   93: invokespecial 149	com/amap/api/mapcore2d/df:<init>	([BLjava/lang/String;)V
    //   96: astore_0
    //   97: new 151	org/json/JSONObject
    //   100: dup
    //   101: new 71	java/lang/String
    //   104: dup
    //   105: invokestatic 156	com/amap/api/mapcore2d/ep:a	()Lcom/amap/api/mapcore2d/ep;
    //   108: aload_0
    //   109: invokevirtual 159	com/amap/api/mapcore2d/ep:a	(Lcom/amap/api/mapcore2d/ev;)[B
    //   112: invokespecial 162	java/lang/String:<init>	([B)V
    //   115: invokespecial 163	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   118: astore_0
    //   119: aload_0
    //   120: ldc -91
    //   122: invokevirtual 169	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   125: ifeq +23 -> 148
    //   128: aload_0
    //   129: ldc -91
    //   131: invokevirtual 173	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   134: iconst_1
    //   135: if_icmpne +13 -> 148
    //   138: aload_2
    //   139: invokestatic 176	com/amap/api/mapcore2d/fa:b	(Lcom/amap/api/mapcore2d/el;)V
    //   142: aload 4
    //   144: astore_2
    //   145: goto +3 -> 148
    //   148: aload_2
    //   149: ifnull +68 -> 217
    //   152: aload_2
    //   153: invokevirtual 130	com/amap/api/mapcore2d/el:d	()Z
    //   156: ifne +61 -> 217
    //   159: aload_2
    //   160: invokevirtual 133	com/amap/api/mapcore2d/el:close	()V
    //   163: return
    //   164: astore_0
    //   165: aload_0
    //   166: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   169: return
    //   170: astore_0
    //   171: goto +47 -> 218
    //   174: astore_3
    //   175: aload_2
    //   176: astore_0
    //   177: aload_3
    //   178: astore_2
    //   179: goto +13 -> 192
    //   182: astore_0
    //   183: aload_3
    //   184: astore_2
    //   185: goto +33 -> 218
    //   188: astore_2
    //   189: aload 5
    //   191: astore_0
    //   192: aload_0
    //   193: astore_3
    //   194: aload_2
    //   195: ldc -78
    //   197: ldc -76
    //   199: invokestatic 105	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   202: aload_0
    //   203: ifnull +14 -> 217
    //   206: aload_0
    //   207: invokevirtual 130	com/amap/api/mapcore2d/el:d	()Z
    //   210: ifne +7 -> 217
    //   213: aload_0
    //   214: invokevirtual 133	com/amap/api/mapcore2d/el:close	()V
    //   217: return
    //   218: aload_2
    //   219: ifnull +22 -> 241
    //   222: aload_2
    //   223: invokevirtual 130	com/amap/api/mapcore2d/el:d	()Z
    //   226: ifne +15 -> 241
    //   229: aload_2
    //   230: invokevirtual 133	com/amap/api/mapcore2d/el:close	()V
    //   233: goto +8 -> 241
    //   236: astore_2
    //   237: aload_2
    //   238: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   241: aload_0
    //   242: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	paramContext	Context
    //   53	2	1	bool	boolean
    //   1	184	2	localObject1	Object
    //   188	42	2	localThrowable1	Throwable
    //   236	2	2	localThrowable2	Throwable
    //   9	11	3	localObject2	Object
    //   174	10	3	localThrowable3	Throwable
    //   193	1	3	localContext	Context
    //   6	137	4	localObject3	Object
    //   3	187	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   62	73	74	java/lang/Throwable
    //   152	163	164	java/lang/Throwable
    //   206	217	164	java/lang/Throwable
    //   43	54	170	finally
    //   80	142	170	finally
    //   43	54	174	java/lang/Throwable
    //   80	142	174	java/lang/Throwable
    //   10	17	182	finally
    //   20	43	182	finally
    //   194	202	182	finally
    //   10	17	188	java/lang/Throwable
    //   20	43	188	java/lang/Throwable
    //   222	233	236	java/lang/Throwable
  }
  
  /* Error */
  private static void a(Context paramContext, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload 4
    //   8: astore_3
    //   9: new 59	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: ldc -73
    //   16: invokestatic 118	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   19: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   22: astore_0
    //   23: aload 4
    //   25: astore_3
    //   26: aload_0
    //   27: invokevirtual 186	java/io/File:getParentFile	()Ljava/io/File;
    //   30: invokevirtual 63	java/io/File:exists	()Z
    //   33: ifne +14 -> 47
    //   36: aload 4
    //   38: astore_3
    //   39: aload_0
    //   40: invokevirtual 186	java/io/File:getParentFile	()Ljava/io/File;
    //   43: invokevirtual 189	java/io/File:mkdirs	()Z
    //   46: pop
    //   47: aload 4
    //   49: astore_3
    //   50: new 191	java/io/FileOutputStream
    //   53: dup
    //   54: aload_0
    //   55: invokespecial 194	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   58: astore_0
    //   59: aload_0
    //   60: lload_1
    //   61: invokestatic 198	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   64: invokestatic 141	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   67: invokevirtual 201	java/io/FileOutputStream:write	([B)V
    //   70: aload_0
    //   71: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   74: return
    //   75: astore_0
    //   76: aload_0
    //   77: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   80: return
    //   81: astore 4
    //   83: aload_0
    //   84: astore_3
    //   85: goto +38 -> 123
    //   88: astore 4
    //   90: goto +13 -> 103
    //   93: astore 4
    //   95: goto +28 -> 123
    //   98: astore 4
    //   100: aload 5
    //   102: astore_0
    //   103: aload_0
    //   104: astore_3
    //   105: aload 4
    //   107: ldc -78
    //   109: ldc -52
    //   111: invokestatic 105	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload_0
    //   115: ifnull +7 -> 122
    //   118: aload_0
    //   119: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   122: return
    //   123: aload_3
    //   124: ifnull +15 -> 139
    //   127: aload_3
    //   128: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   131: goto +8 -> 139
    //   134: astore_0
    //   135: aload_0
    //   136: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   139: aload 4
    //   141: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	paramContext	Context
    //   0	142	1	paramLong	long
    //   8	120	3	localObject1	Object
    //   4	44	4	localObject2	Object
    //   81	1	4	localObject3	Object
    //   88	1	4	localThrowable1	Throwable
    //   93	1	4	localObject4	Object
    //   98	42	4	localThrowable2	Throwable
    //   1	100	5	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   70	74	75	java/lang/Throwable
    //   118	122	75	java/lang/Throwable
    //   59	70	81	finally
    //   59	70	88	java/lang/Throwable
    //   9	23	93	finally
    //   26	36	93	finally
    //   39	47	93	finally
    //   50	59	93	finally
    //   105	114	93	finally
    //   9	23	98	java/lang/Throwable
    //   26	36	98	java/lang/Throwable
    //   39	47	98	java/lang/Throwable
    //   50	59	98	java/lang/Throwable
    //   127	131	134	java/lang/Throwable
  }
  
  public static void a(ez paramEz, final Context paramContext)
  {
    try
    {
      dg.c().submit(new Runnable()
      {
        /* Error */
        public void run()
        {
          // Byte code:
          //   0: ldc 8
          //   2: monitorenter
          //   3: aconst_null
          //   4: astore 4
          //   6: aconst_null
          //   7: astore_2
          //   8: aconst_null
          //   9: astore 6
          //   11: aload_0
          //   12: getfield 17	com/amap/api/mapcore2d/fa$1:a	Lcom/amap/api/mapcore2d/ez;
          //   15: invokevirtual 31	com/amap/api/mapcore2d/ez:a	()[B
          //   18: astore 5
          //   20: new 33	java/io/File
          //   23: dup
          //   24: aload_0
          //   25: getfield 19	com/amap/api/mapcore2d/fa$1:b	Landroid/content/Context;
          //   28: getstatic 39	com/amap/api/mapcore2d/de:h	Ljava/lang/String;
          //   31: invokestatic 42	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
          //   34: invokespecial 45	java/io/File:<init>	(Ljava/lang/String;)V
          //   37: iconst_1
          //   38: iconst_1
          //   39: ldc2_w 46
          //   42: invokestatic 52	com/amap/api/mapcore2d/el:a	(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;
          //   45: astore_1
          //   46: aload 4
          //   48: astore_2
          //   49: aload_1
          //   50: astore_3
          //   51: aload_1
          //   52: getstatic 55	com/amap/api/mapcore2d/fa:a	I
          //   55: invokevirtual 58	com/amap/api/mapcore2d/el:a	(I)V
          //   58: aload 4
          //   60: astore_2
          //   61: aload_1
          //   62: astore_3
          //   63: aload_1
          //   64: invokestatic 64	java/lang/System:currentTimeMillis	()J
          //   67: invokestatic 70	java/lang/Long:toString	(J)Ljava/lang/String;
          //   70: invokevirtual 73	com/amap/api/mapcore2d/el:b	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$a;
          //   73: astore 7
          //   75: aload 4
          //   77: astore_2
          //   78: aload_1
          //   79: astore_3
          //   80: aload 7
          //   82: iconst_0
          //   83: invokevirtual 78	com/amap/api/mapcore2d/el$a:a	(I)Ljava/io/OutputStream;
          //   86: astore 4
          //   88: aload 4
          //   90: aload 5
          //   92: invokevirtual 84	java/io/OutputStream:write	([B)V
          //   95: aload 7
          //   97: invokevirtual 86	com/amap/api/mapcore2d/el$a:a	()V
          //   100: aload_1
          //   101: invokevirtual 89	com/amap/api/mapcore2d/el:e	()V
          //   104: aload 4
          //   106: ifnull +16 -> 122
          //   109: aload 4
          //   111: invokevirtual 92	java/io/OutputStream:close	()V
          //   114: goto +8 -> 122
          //   117: astore_2
          //   118: aload_2
          //   119: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
          //   122: aload_1
          //   123: ifnull +100 -> 223
          //   126: aload_1
          //   127: invokevirtual 96	com/amap/api/mapcore2d/el:close	()V
          //   130: goto +93 -> 223
          //   133: astore_1
          //   134: aload_1
          //   135: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
          //   138: goto +85 -> 223
          //   141: astore_3
          //   142: aload 4
          //   144: astore_2
          //   145: goto +89 -> 234
          //   148: astore 5
          //   150: goto +26 -> 176
          //   153: astore 5
          //   155: aload 6
          //   157: astore 4
          //   159: goto +17 -> 176
          //   162: astore_3
          //   163: aconst_null
          //   164: astore_1
          //   165: goto +69 -> 234
          //   168: astore 5
          //   170: aconst_null
          //   171: astore_1
          //   172: aload 6
          //   174: astore 4
          //   176: aload 4
          //   178: astore_2
          //   179: aload_1
          //   180: astore_3
          //   181: aload 5
          //   183: ldc 98
          //   185: ldc 100
          //   187: invokestatic 105	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
          //   190: aload 4
          //   192: ifnull +16 -> 208
          //   195: aload 4
          //   197: invokevirtual 92	java/io/OutputStream:close	()V
          //   200: goto +8 -> 208
          //   203: astore_2
          //   204: aload_2
          //   205: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
          //   208: aload_1
          //   209: ifnull +14 -> 223
          //   212: aload_1
          //   213: invokevirtual 96	com/amap/api/mapcore2d/el:close	()V
          //   216: goto +7 -> 223
          //   219: astore_1
          //   220: goto -86 -> 134
          //   223: ldc 8
          //   225: monitorexit
          //   226: return
          //   227: astore 4
          //   229: aload_3
          //   230: astore_1
          //   231: aload 4
          //   233: astore_3
          //   234: aload_2
          //   235: ifnull +19 -> 254
          //   238: aload_2
          //   239: invokevirtual 92	java/io/OutputStream:close	()V
          //   242: goto +12 -> 254
          //   245: astore_1
          //   246: goto +26 -> 272
          //   249: astore_2
          //   250: aload_2
          //   251: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
          //   254: aload_1
          //   255: ifnull +15 -> 270
          //   258: aload_1
          //   259: invokevirtual 96	com/amap/api/mapcore2d/el:close	()V
          //   262: goto +8 -> 270
          //   265: astore_1
          //   266: aload_1
          //   267: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
          //   270: aload_3
          //   271: athrow
          //   272: ldc 8
          //   274: monitorexit
          //   275: aload_1
          //   276: athrow
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	277	0	this	1
          //   45	82	1	localEl1	el
          //   133	2	1	localThrowable1	Throwable
          //   164	49	1	localObject1	Object
          //   219	1	1	localThrowable2	Throwable
          //   230	1	1	localObject2	Object
          //   245	14	1	localObject3	Object
          //   265	11	1	localThrowable3	Throwable
          //   7	71	2	localObject4	Object
          //   117	2	2	localThrowable4	Throwable
          //   144	35	2	localObject5	Object
          //   203	36	2	localThrowable5	Throwable
          //   249	2	2	localThrowable6	Throwable
          //   50	30	3	localEl2	el
          //   141	1	3	localObject6	Object
          //   162	1	3	localObject7	Object
          //   180	91	3	localObject8	Object
          //   4	192	4	localObject9	Object
          //   227	5	4	localObject10	Object
          //   18	73	5	arrayOfByte	byte[]
          //   148	1	5	localThrowable7	Throwable
          //   153	1	5	localThrowable8	Throwable
          //   168	14	5	localThrowable9	Throwable
          //   9	164	6	localObject11	Object
          //   73	23	7	localA	el.a
          // Exception table:
          //   from	to	target	type
          //   109	114	117	java/lang/Throwable
          //   126	130	133	java/lang/Throwable
          //   88	104	141	finally
          //   88	104	148	java/lang/Throwable
          //   51	58	153	java/lang/Throwable
          //   63	75	153	java/lang/Throwable
          //   80	88	153	java/lang/Throwable
          //   11	46	162	finally
          //   11	46	168	java/lang/Throwable
          //   195	200	203	java/lang/Throwable
          //   212	216	219	java/lang/Throwable
          //   51	58	227	finally
          //   63	75	227	finally
          //   80	88	227	finally
          //   181	190	227	finally
          //   109	114	245	finally
          //   118	122	245	finally
          //   126	130	245	finally
          //   134	138	245	finally
          //   195	200	245	finally
          //   204	208	245	finally
          //   212	216	245	finally
          //   223	226	245	finally
          //   238	242	245	finally
          //   250	254	245	finally
          //   258	262	245	finally
          //   266	270	245	finally
          //   270	272	245	finally
          //   272	275	245	finally
          //   238	242	249	java/lang/Throwable
          //   258	262	265	java/lang/Throwable
        }
      });
      return;
    }
    finally
    {
      paramEz = finally;
      throw paramEz;
    }
  }
  
  /* Error */
  private static long b(Context paramContext)
  {
    // Byte code:
    //   0: new 59	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: ldc -73
    //   7: invokestatic 118	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   10: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore 5
    //   15: aload 5
    //   17: invokevirtual 63	java/io/File:exists	()Z
    //   20: ifne +5 -> 25
    //   23: lconst_0
    //   24: lreturn
    //   25: new 221	java/io/FileInputStream
    //   28: dup
    //   29: aload 5
    //   31: invokespecial 222	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: astore_3
    //   35: aload_3
    //   36: astore_0
    //   37: aload_3
    //   38: invokevirtual 226	java/io/FileInputStream:available	()I
    //   41: newarray byte
    //   43: astore 4
    //   45: aload_3
    //   46: astore_0
    //   47: aload_3
    //   48: aload 4
    //   50: invokevirtual 230	java/io/FileInputStream:read	([B)I
    //   53: pop
    //   54: aload_3
    //   55: astore_0
    //   56: aload 4
    //   58: invokestatic 90	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   61: invokestatic 236	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   64: lstore_1
    //   65: aload_3
    //   66: invokevirtual 237	java/io/FileInputStream:close	()V
    //   69: lload_1
    //   70: lreturn
    //   71: astore_0
    //   72: aload_0
    //   73: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   76: lload_1
    //   77: lreturn
    //   78: astore 4
    //   80: goto +13 -> 93
    //   83: astore_3
    //   84: aconst_null
    //   85: astore_0
    //   86: goto +69 -> 155
    //   89: astore 4
    //   91: aconst_null
    //   92: astore_3
    //   93: aload_3
    //   94: astore_0
    //   95: aload 4
    //   97: ldc -78
    //   99: ldc -17
    //   101: invokestatic 105	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   104: aload_3
    //   105: astore_0
    //   106: aload 5
    //   108: invokevirtual 63	java/io/File:exists	()Z
    //   111: ifeq +23 -> 134
    //   114: aload_3
    //   115: astore_0
    //   116: aload 5
    //   118: invokevirtual 242	java/io/File:delete	()Z
    //   121: pop
    //   122: goto +12 -> 134
    //   125: astore 4
    //   127: aload_3
    //   128: astore_0
    //   129: aload 4
    //   131: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   134: aload_3
    //   135: ifnull +15 -> 150
    //   138: aload_3
    //   139: invokevirtual 237	java/io/FileInputStream:close	()V
    //   142: goto +8 -> 150
    //   145: astore_0
    //   146: aload_0
    //   147: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   150: invokestatic 248	java/lang/System:currentTimeMillis	()J
    //   153: lreturn
    //   154: astore_3
    //   155: aload_0
    //   156: ifnull +15 -> 171
    //   159: aload_0
    //   160: invokevirtual 237	java/io/FileInputStream:close	()V
    //   163: goto +8 -> 171
    //   166: astore_0
    //   167: aload_0
    //   168: invokevirtual 136	java/lang/Throwable:printStackTrace	()V
    //   171: aload_3
    //   172: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	paramContext	Context
    //   64	13	1	l	long
    //   34	32	3	localFileInputStream	java.io.FileInputStream
    //   83	1	3	localObject1	Object
    //   92	47	3	localObject2	Object
    //   154	18	3	localObject3	Object
    //   43	14	4	arrayOfByte	byte[]
    //   78	1	4	localThrowable1	Throwable
    //   89	7	4	localThrowable2	Throwable
    //   125	5	4	localThrowable3	Throwable
    //   13	104	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   65	69	71	java/lang/Throwable
    //   37	45	78	java/lang/Throwable
    //   47	54	78	java/lang/Throwable
    //   56	65	78	java/lang/Throwable
    //   25	35	83	finally
    //   25	35	89	java/lang/Throwable
    //   106	114	125	java/lang/Throwable
    //   116	122	125	java/lang/Throwable
    //   138	142	145	java/lang/Throwable
    //   37	45	154	finally
    //   47	54	154	finally
    //   56	65	154	finally
    //   95	104	154	finally
    //   106	114	154	finally
    //   116	122	154	finally
    //   129	134	154	finally
    //   159	163	166	java/lang/Throwable
  }
  
  private static void b(el paramEl)
  {
    if (paramEl != null) {
      try
      {
        paramEl.f();
        return;
      }
      catch (Throwable paramEl)
      {
        dd.a(paramEl, "StatisticsManager", "getContent");
      }
    }
  }
  
  /* Error */
  private static boolean c(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 257	com/amap/api/mapcore2d/ct:m	(Landroid/content/Context;)I
    //   7: iconst_1
    //   8: if_icmpeq +9 -> 17
    //   11: getstatic 259	com/amap/api/mapcore2d/fa:b	Z
    //   14: ifeq +53 -> 67
    //   17: aload_0
    //   18: invokestatic 261	com/amap/api/mapcore2d/fa:b	(Landroid/content/Context;)J
    //   21: lstore_1
    //   22: invokestatic 248	java/lang/System:currentTimeMillis	()J
    //   25: lstore_3
    //   26: lload_3
    //   27: lload_1
    //   28: lsub
    //   29: ldc2_w 262
    //   32: lcmp
    //   33: ifge +8 -> 41
    //   36: ldc 2
    //   38: monitorexit
    //   39: iconst_0
    //   40: ireturn
    //   41: aload_0
    //   42: invokestatic 248	java/lang/System:currentTimeMillis	()J
    //   45: invokestatic 265	com/amap/api/mapcore2d/fa:a	(Landroid/content/Context;J)V
    //   48: ldc 2
    //   50: monitorexit
    //   51: iconst_1
    //   52: ireturn
    //   53: astore_0
    //   54: goto +18 -> 72
    //   57: astore_0
    //   58: aload_0
    //   59: ldc 98
    //   61: ldc_w 267
    //   64: invokestatic 105	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   67: ldc 2
    //   69: monitorexit
    //   70: iconst_0
    //   71: ireturn
    //   72: ldc 2
    //   74: monitorexit
    //   75: aload_0
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	paramContext	Context
    //   21	7	1	l1	long
    //   25	2	3	l2	long
    // Exception table:
    //   from	to	target	type
    //   3	17	53	finally
    //   17	26	53	finally
    //   41	48	53	finally
    //   58	67	53	finally
    //   3	17	57	java/lang/Throwable
    //   17	26	57	java/lang/Throwable
    //   41	48	57	java/lang/Throwable
  }
  
  private static String d(Context paramContext)
  {
    return cs.b(paramContext, cz.a(e(paramContext)));
  }
  
  private static String e(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\"key\":\"");
      localStringBuilder.append(cp.f(paramContext));
      localStringBuilder.append("\",\"platform\":\"android\",\"diu\":\"");
      localStringBuilder.append(ct.q(paramContext));
      localStringBuilder.append("\",\"mac\":\"");
      localStringBuilder.append(ct.i(paramContext));
      localStringBuilder.append("\",\"tid\":\"");
      localStringBuilder.append(ct.f(paramContext));
      localStringBuilder.append("\",\"umidt\":\"");
      localStringBuilder.append(ct.a());
      localStringBuilder.append("\",\"manufacture\":\"");
      localStringBuilder.append(Build.MANUFACTURER);
      localStringBuilder.append("\",\"device\":\"");
      localStringBuilder.append(Build.DEVICE);
      localStringBuilder.append("\",\"sim\":\"");
      localStringBuilder.append(ct.r(paramContext));
      localStringBuilder.append("\",\"pkg\":\"");
      localStringBuilder.append(cp.c(paramContext));
      localStringBuilder.append("\",\"model\":\"");
      localStringBuilder.append(Build.MODEL);
      localStringBuilder.append("\",\"appversion\":\"");
      localStringBuilder.append(cp.d(paramContext));
      localStringBuilder.append("\",\"appname\":\"");
      localStringBuilder.append(cp.b(paramContext));
      localStringBuilder.append("\"");
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "CInfo", "getPublicJSONInfo");
    }
    return localStringBuilder.toString();
  }
}
