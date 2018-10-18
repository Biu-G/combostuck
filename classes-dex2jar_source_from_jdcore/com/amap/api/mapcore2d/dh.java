package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Looper;

public class dh
  extends dk
{
  private static boolean b = true;
  private String[] c = new String[10];
  private int d = 0;
  private boolean e = false;
  private int f = 0;
  
  protected dh(int paramInt)
  {
    super(paramInt);
  }
  
  private void c(String paramString)
  {
    try
    {
      if (d > 9) {
        d = 0;
      }
      c[d] = paramString;
      d += 1;
      return;
    }
    catch (Throwable paramString)
    {
      dd.a(paramString, "ANRWriter", "addData");
    }
  }
  
  private String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i;
    try
    {
      i = d;
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "ANRWriter", "getLogInfo");
    }
    localStringBuilder.append(c[i]);
    i += 1;
    for (;;)
    {
      if (i < d)
      {
        localStringBuilder.append(c[i]);
        i += 1;
      }
      else
      {
        return localStringBuilder.toString();
        if ((i < 10) && (i <= 9)) {
          break;
        }
        i = 0;
      }
    }
  }
  
  /* Error */
  protected String a(java.util.List<cy> paramList)
  {
    // Byte code:
    //   0: new 66	java/io/File
    //   3: dup
    //   4: ldc 68
    //   6: invokespecial 70	java/io/File:<init>	(Ljava/lang/String;)V
    //   9: astore 4
    //   11: aload 4
    //   13: invokevirtual 74	java/io/File:exists	()Z
    //   16: ifne +5 -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: new 76	java/io/FileInputStream
    //   24: dup
    //   25: aload 4
    //   27: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   30: astore 4
    //   32: aload 4
    //   34: invokevirtual 85	java/io/InputStream:available	()I
    //   37: istore_2
    //   38: iload_2
    //   39: ldc 86
    //   41: if_icmple +14 -> 55
    //   44: aload 4
    //   46: iload_2
    //   47: ldc 86
    //   49: isub
    //   50: i2l
    //   51: invokevirtual 90	java/io/InputStream:skip	(J)J
    //   54: pop2
    //   55: new 92	com/amap/api/mapcore2d/en
    //   58: dup
    //   59: aload 4
    //   61: getstatic 97	com/amap/api/mapcore2d/eo:a	Ljava/nio/charset/Charset;
    //   64: invokespecial 100	com/amap/api/mapcore2d/en:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   67: astore 7
    //   69: iconst_0
    //   70: istore_2
    //   71: aload 7
    //   73: astore 5
    //   75: aload 4
    //   77: astore 6
    //   79: aload 7
    //   81: invokevirtual 102	com/amap/api/mapcore2d/en:a	()Ljava/lang/String;
    //   84: invokevirtual 105	java/lang/String:trim	()Ljava/lang/String;
    //   87: astore 9
    //   89: iload_2
    //   90: istore_3
    //   91: aload 9
    //   93: astore 8
    //   95: aload 7
    //   97: astore 5
    //   99: aload 4
    //   101: astore 6
    //   103: aload 9
    //   105: ldc 107
    //   107: invokevirtual 111	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   110: ifeq +43 -> 153
    //   113: aload 9
    //   115: astore 8
    //   117: aload 7
    //   119: astore 5
    //   121: aload 4
    //   123: astore 6
    //   125: aload 8
    //   127: ldc 113
    //   129: invokevirtual 117	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   132: ifne +648 -> 780
    //   135: aload 7
    //   137: astore 5
    //   139: aload 4
    //   141: astore 6
    //   143: aload 7
    //   145: invokevirtual 102	com/amap/api/mapcore2d/en:a	()Ljava/lang/String;
    //   148: astore 8
    //   150: goto -33 -> 117
    //   153: aload 7
    //   155: astore 5
    //   157: aload 4
    //   159: astore 6
    //   161: aload 8
    //   163: ldc 119
    //   165: invokevirtual 123	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   168: ifeq +10 -> 178
    //   171: iload_3
    //   172: ifeq +6 -> 178
    //   175: goto +200 -> 375
    //   178: iload_3
    //   179: istore_2
    //   180: iload_3
    //   181: ifeq -110 -> 71
    //   184: aload 7
    //   186: astore 5
    //   188: aload 4
    //   190: astore 6
    //   192: aload_0
    //   193: aload 8
    //   195: invokespecial 125	com/amap/api/mapcore2d/dh:c	(Ljava/lang/String;)V
    //   198: aload 7
    //   200: astore 5
    //   202: aload 4
    //   204: astore 6
    //   206: aload_0
    //   207: getfield 30	com/amap/api/mapcore2d/dh:f	I
    //   210: iconst_5
    //   211: if_icmpne +6 -> 217
    //   214: goto +161 -> 375
    //   217: aload 7
    //   219: astore 5
    //   221: aload 4
    //   223: astore 6
    //   225: aload_0
    //   226: getfield 28	com/amap/api/mapcore2d/dh:e	Z
    //   229: ifne +115 -> 344
    //   232: aload 7
    //   234: astore 5
    //   236: aload 4
    //   238: astore 6
    //   240: aload_1
    //   241: invokeinterface 131 1 0
    //   246: astore 9
    //   248: iload_3
    //   249: istore_2
    //   250: aload 7
    //   252: astore 5
    //   254: aload 4
    //   256: astore 6
    //   258: aload 9
    //   260: invokeinterface 136 1 0
    //   265: ifeq -194 -> 71
    //   268: aload 7
    //   270: astore 5
    //   272: aload 4
    //   274: astore 6
    //   276: aload 9
    //   278: invokeinterface 140 1 0
    //   283: checkcast 142	com/amap/api/mapcore2d/cy
    //   286: astore 10
    //   288: aload 7
    //   290: astore 5
    //   292: aload 4
    //   294: astore 6
    //   296: aload_0
    //   297: aload 10
    //   299: invokevirtual 146	com/amap/api/mapcore2d/cy:g	()[Ljava/lang/String;
    //   302: aload 8
    //   304: invokestatic 149	com/amap/api/mapcore2d/dh:b	([Ljava/lang/String;Ljava/lang/String;)Z
    //   307: putfield 28	com/amap/api/mapcore2d/dh:e	Z
    //   310: aload 7
    //   312: astore 5
    //   314: aload 4
    //   316: astore 6
    //   318: aload_0
    //   319: getfield 28	com/amap/api/mapcore2d/dh:e	Z
    //   322: ifeq -74 -> 248
    //   325: aload 7
    //   327: astore 5
    //   329: aload 4
    //   331: astore 6
    //   333: aload_0
    //   334: aload 10
    //   336: invokevirtual 152	com/amap/api/mapcore2d/dh:a	(Lcom/amap/api/mapcore2d/cy;)V
    //   339: iload_3
    //   340: istore_2
    //   341: goto -270 -> 71
    //   344: aload 7
    //   346: astore 5
    //   348: aload 4
    //   350: astore 6
    //   352: aload_0
    //   353: aload_0
    //   354: getfield 30	com/amap/api/mapcore2d/dh:f	I
    //   357: iconst_1
    //   358: iadd
    //   359: putfield 30	com/amap/api/mapcore2d/dh:f	I
    //   362: iload_3
    //   363: istore_2
    //   364: goto -293 -> 71
    //   367: astore_1
    //   368: goto +114 -> 482
    //   371: astore_1
    //   372: goto +181 -> 553
    //   375: aload 7
    //   377: invokevirtual 155	com/amap/api/mapcore2d/en:close	()V
    //   380: goto +24 -> 404
    //   383: astore_1
    //   384: aload_1
    //   385: ldc 35
    //   387: ldc -99
    //   389: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   392: goto +12 -> 404
    //   395: astore_1
    //   396: aload_1
    //   397: ldc 35
    //   399: ldc -97
    //   401: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   404: aload 4
    //   406: invokevirtual 160	java/io/InputStream:close	()V
    //   409: goto +341 -> 750
    //   412: astore_1
    //   413: aload_1
    //   414: ldc 35
    //   416: ldc -94
    //   418: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   421: goto +329 -> 750
    //   424: astore_1
    //   425: aload_1
    //   426: ldc 35
    //   428: ldc -92
    //   430: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   433: goto +317 -> 750
    //   436: astore_1
    //   437: aconst_null
    //   438: astore 5
    //   440: goto +181 -> 621
    //   443: astore_1
    //   444: aconst_null
    //   445: astore 7
    //   447: goto +35 -> 482
    //   450: astore_1
    //   451: aconst_null
    //   452: astore 7
    //   454: goto +99 -> 553
    //   457: aconst_null
    //   458: astore 7
    //   460: goto +246 -> 706
    //   463: astore_1
    //   464: aconst_null
    //   465: astore 5
    //   467: aload 5
    //   469: astore 4
    //   471: goto +150 -> 621
    //   474: astore_1
    //   475: aconst_null
    //   476: astore 7
    //   478: aload 7
    //   480: astore 4
    //   482: aload 7
    //   484: astore 5
    //   486: aload 4
    //   488: astore 6
    //   490: aload_1
    //   491: ldc 35
    //   493: ldc -90
    //   495: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   498: aload 7
    //   500: ifnull +32 -> 532
    //   503: aload 7
    //   505: invokevirtual 155	com/amap/api/mapcore2d/en:close	()V
    //   508: goto +24 -> 532
    //   511: astore_1
    //   512: aload_1
    //   513: ldc 35
    //   515: ldc -99
    //   517: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   520: goto +12 -> 532
    //   523: astore_1
    //   524: aload_1
    //   525: ldc 35
    //   527: ldc -97
    //   529: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   532: aload 4
    //   534: ifnull +216 -> 750
    //   537: aload 4
    //   539: invokevirtual 160	java/io/InputStream:close	()V
    //   542: goto +208 -> 750
    //   545: astore_1
    //   546: aconst_null
    //   547: astore 7
    //   549: aload 7
    //   551: astore 4
    //   553: aload 7
    //   555: astore 5
    //   557: aload 4
    //   559: astore 6
    //   561: aload_1
    //   562: ldc 35
    //   564: ldc -90
    //   566: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   569: aload 7
    //   571: ifnull +32 -> 603
    //   574: aload 7
    //   576: invokevirtual 155	com/amap/api/mapcore2d/en:close	()V
    //   579: goto +24 -> 603
    //   582: astore_1
    //   583: aload_1
    //   584: ldc 35
    //   586: ldc -99
    //   588: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   591: goto +12 -> 603
    //   594: astore_1
    //   595: aload_1
    //   596: ldc 35
    //   598: ldc -97
    //   600: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   603: aload 4
    //   605: ifnull +145 -> 750
    //   608: aload 4
    //   610: invokevirtual 160	java/io/InputStream:close	()V
    //   613: goto +137 -> 750
    //   616: astore_1
    //   617: aload 6
    //   619: astore 4
    //   621: aload 5
    //   623: ifnull +36 -> 659
    //   626: aload 5
    //   628: invokevirtual 155	com/amap/api/mapcore2d/en:close	()V
    //   631: goto +28 -> 659
    //   634: astore 5
    //   636: aload 5
    //   638: ldc 35
    //   640: ldc -99
    //   642: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   645: goto +14 -> 659
    //   648: astore 5
    //   650: aload 5
    //   652: ldc 35
    //   654: ldc -97
    //   656: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   659: aload 4
    //   661: ifnull +36 -> 697
    //   664: aload 4
    //   666: invokevirtual 160	java/io/InputStream:close	()V
    //   669: goto +28 -> 697
    //   672: astore 4
    //   674: aload 4
    //   676: ldc 35
    //   678: ldc -94
    //   680: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   683: goto +14 -> 697
    //   686: astore 4
    //   688: aload 4
    //   690: ldc 35
    //   692: ldc -92
    //   694: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   697: aload_1
    //   698: athrow
    //   699: aconst_null
    //   700: astore 7
    //   702: aload 7
    //   704: astore 4
    //   706: aload 7
    //   708: ifnull +32 -> 740
    //   711: aload 7
    //   713: invokevirtual 155	com/amap/api/mapcore2d/en:close	()V
    //   716: goto +24 -> 740
    //   719: astore_1
    //   720: aload_1
    //   721: ldc 35
    //   723: ldc -99
    //   725: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   728: goto +12 -> 740
    //   731: astore_1
    //   732: aload_1
    //   733: ldc 35
    //   735: ldc -97
    //   737: invokestatic 43	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   740: aload 4
    //   742: ifnull +8 -> 750
    //   745: aload 4
    //   747: invokevirtual 160	java/io/InputStream:close	()V
    //   750: aload_0
    //   751: getfield 28	com/amap/api/mapcore2d/dh:e	Z
    //   754: ifeq +8 -> 762
    //   757: aload_0
    //   758: invokespecial 168	com/amap/api/mapcore2d/dh:e	()Ljava/lang/String;
    //   761: areturn
    //   762: aconst_null
    //   763: areturn
    //   764: astore_1
    //   765: goto -66 -> 699
    //   768: astore_1
    //   769: goto -312 -> 457
    //   772: astore_1
    //   773: goto -398 -> 375
    //   776: astore_1
    //   777: goto -71 -> 706
    //   780: iconst_1
    //   781: istore_3
    //   782: goto -629 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	785	0	this	dh
    //   0	785	1	paramList	java.util.List<cy>
    //   37	327	2	i	int
    //   90	692	3	j	int
    //   9	656	4	localObject1	Object
    //   672	3	4	localThrowable1	Throwable
    //   686	3	4	localIOException1	java.io.IOException
    //   704	42	4	localObject2	Object
    //   73	554	5	localEn1	en
    //   634	3	5	localThrowable2	Throwable
    //   648	3	5	localIOException2	java.io.IOException
    //   77	541	6	localObject3	Object
    //   67	645	7	localEn2	en
    //   93	210	8	localObject4	Object
    //   87	190	9	localObject5	Object
    //   286	49	10	localCy	cy
    // Exception table:
    //   from	to	target	type
    //   79	89	367	java/lang/Throwable
    //   103	113	367	java/lang/Throwable
    //   125	135	367	java/lang/Throwable
    //   143	150	367	java/lang/Throwable
    //   161	171	367	java/lang/Throwable
    //   192	198	367	java/lang/Throwable
    //   206	214	367	java/lang/Throwable
    //   225	232	367	java/lang/Throwable
    //   240	248	367	java/lang/Throwable
    //   258	268	367	java/lang/Throwable
    //   276	288	367	java/lang/Throwable
    //   296	310	367	java/lang/Throwable
    //   318	325	367	java/lang/Throwable
    //   333	339	367	java/lang/Throwable
    //   352	362	367	java/lang/Throwable
    //   79	89	371	java/io/IOException
    //   103	113	371	java/io/IOException
    //   125	135	371	java/io/IOException
    //   143	150	371	java/io/IOException
    //   161	171	371	java/io/IOException
    //   192	198	371	java/io/IOException
    //   206	214	371	java/io/IOException
    //   225	232	371	java/io/IOException
    //   240	248	371	java/io/IOException
    //   258	268	371	java/io/IOException
    //   276	288	371	java/io/IOException
    //   296	310	371	java/io/IOException
    //   318	325	371	java/io/IOException
    //   333	339	371	java/io/IOException
    //   352	362	371	java/io/IOException
    //   375	380	383	java/lang/Throwable
    //   375	380	395	java/io/IOException
    //   404	409	412	java/lang/Throwable
    //   537	542	412	java/lang/Throwable
    //   608	613	412	java/lang/Throwable
    //   745	750	412	java/lang/Throwable
    //   404	409	424	java/io/IOException
    //   537	542	424	java/io/IOException
    //   608	613	424	java/io/IOException
    //   745	750	424	java/io/IOException
    //   32	38	436	finally
    //   44	55	436	finally
    //   55	69	436	finally
    //   32	38	443	java/lang/Throwable
    //   44	55	443	java/lang/Throwable
    //   55	69	443	java/lang/Throwable
    //   32	38	450	java/io/IOException
    //   44	55	450	java/io/IOException
    //   55	69	450	java/io/IOException
    //   0	19	463	finally
    //   21	32	463	finally
    //   0	19	474	java/lang/Throwable
    //   21	32	474	java/lang/Throwable
    //   503	508	511	java/lang/Throwable
    //   503	508	523	java/io/IOException
    //   0	19	545	java/io/IOException
    //   21	32	545	java/io/IOException
    //   574	579	582	java/lang/Throwable
    //   574	579	594	java/io/IOException
    //   79	89	616	finally
    //   103	113	616	finally
    //   125	135	616	finally
    //   143	150	616	finally
    //   161	171	616	finally
    //   192	198	616	finally
    //   206	214	616	finally
    //   225	232	616	finally
    //   240	248	616	finally
    //   258	268	616	finally
    //   276	288	616	finally
    //   296	310	616	finally
    //   318	325	616	finally
    //   333	339	616	finally
    //   352	362	616	finally
    //   490	498	616	finally
    //   561	569	616	finally
    //   626	631	634	java/lang/Throwable
    //   626	631	648	java/io/IOException
    //   664	669	672	java/lang/Throwable
    //   664	669	686	java/io/IOException
    //   711	716	719	java/lang/Throwable
    //   711	716	731	java/io/IOException
    //   0	19	764	java/io/FileNotFoundException
    //   21	32	764	java/io/FileNotFoundException
    //   32	38	768	java/io/FileNotFoundException
    //   44	55	768	java/io/FileNotFoundException
    //   55	69	768	java/io/FileNotFoundException
    //   79	89	772	java/io/EOFException
    //   103	113	772	java/io/EOFException
    //   125	135	772	java/io/EOFException
    //   143	150	772	java/io/EOFException
    //   161	171	772	java/io/EOFException
    //   192	198	772	java/io/EOFException
    //   206	214	772	java/io/EOFException
    //   225	232	772	java/io/EOFException
    //   240	248	772	java/io/EOFException
    //   258	268	772	java/io/EOFException
    //   276	288	772	java/io/EOFException
    //   296	310	772	java/io/EOFException
    //   318	325	772	java/io/EOFException
    //   333	339	772	java/io/EOFException
    //   352	362	772	java/io/EOFException
    //   79	89	776	java/io/FileNotFoundException
    //   103	113	776	java/io/FileNotFoundException
    //   125	135	776	java/io/FileNotFoundException
    //   143	150	776	java/io/FileNotFoundException
    //   161	171	776	java/io/FileNotFoundException
    //   192	198	776	java/io/FileNotFoundException
    //   206	214	776	java/io/FileNotFoundException
    //   225	232	776	java/io/FileNotFoundException
    //   240	248	776	java/io/FileNotFoundException
    //   258	268	776	java/io/FileNotFoundException
    //   276	288	776	java/io/FileNotFoundException
    //   296	310	776	java/io/FileNotFoundException
    //   318	325	776	java/io/FileNotFoundException
    //   333	339	776	java/io/FileNotFoundException
    //   352	362	776	java/io/FileNotFoundException
  }
  
  protected boolean a(Context paramContext)
  {
    if ((ct.m(paramContext) == 1) && (b))
    {
      b = false;
      synchronized (Looper.getMainLooper())
      {
        paramContext = new dx(paramContext);
        dy localDy = paramContext.a();
        if (localDy == null) {
          return true;
        }
        if (localDy.c())
        {
          localDy.c(false);
          paramContext.a(localDy);
          return true;
        }
        return false;
      }
    }
    return false;
  }
}
