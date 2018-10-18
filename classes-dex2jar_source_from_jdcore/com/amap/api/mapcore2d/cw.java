package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build.VERSION;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.util.List;

public class cw
{
  private static String a()
  {
    Object localObject1;
    try
    {
      String str = android.net.Proxy.getDefaultHost();
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "ProxyUtil", "getDefHost");
      localObject1 = null;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "null";
    }
    return localObject2;
  }
  
  public static String a(String paramString)
  {
    return cz.c(paramString);
  }
  
  public static java.net.Proxy a(Context paramContext)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 11) {
        return a(paramContext, new URI("http://restapi.amap.com"));
      }
      paramContext = b(paramContext);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "ProxyUtil", "getProxy");
    }
    return null;
  }
  
  private static java.net.Proxy a(Context paramContext, URI paramURI)
  {
    boolean bool = c(paramContext);
    Proxy.Type localType = null;
    if (bool) {
      try
      {
        paramURI = ProxySelector.getDefault().select(paramURI);
        paramContext = localType;
        if (paramURI != null)
        {
          paramContext = localType;
          if (!paramURI.isEmpty())
          {
            paramURI = (java.net.Proxy)paramURI.get(0);
            paramContext = localType;
            if (paramURI != null)
            {
              paramContext = paramURI.type();
              localType = Proxy.Type.DIRECT;
              if (paramContext == localType) {
                return null;
              }
              paramContext = paramURI;
            }
          }
        }
        return paramContext;
      }
      catch (Throwable paramContext)
      {
        dd.a(paramContext, "ProxyUtil", "getProxySelectorCfg");
      }
    }
    return null;
  }
  
  private static boolean a(String paramString, int paramInt)
  {
    return (paramString != null) && (paramString.length() > 0) && (paramInt != -1);
  }
  
  private static int b()
  {
    try
    {
      int i = android.net.Proxy.getDefaultPort();
      return i;
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "ProxyUtil", "getDefPort");
    }
    return -1;
  }
  
  /* Error */
  private static java.net.Proxy b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 57	com/amap/api/mapcore2d/cw:c	(Landroid/content/Context;)Z
    //   4: ifeq +879 -> 883
    //   7: ldc 107
    //   9: invokestatic 113	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   12: astore 8
    //   14: aload_0
    //   15: invokevirtual 119	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   18: astore 9
    //   20: iconst_0
    //   21: istore 6
    //   23: iconst_0
    //   24: istore 5
    //   26: bipush 80
    //   28: istore 4
    //   30: aload 9
    //   32: aload 8
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: invokevirtual 125	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   41: astore 8
    //   43: aload 8
    //   45: ifnull +420 -> 465
    //   48: aload 8
    //   50: astore 9
    //   52: aload 8
    //   54: invokeinterface 130 1 0
    //   59: ifeq +406 -> 465
    //   62: aload 8
    //   64: astore 9
    //   66: aload 8
    //   68: aload 8
    //   70: ldc -124
    //   72: invokeinterface 136 2 0
    //   77: invokeinterface 140 2 0
    //   82: astore 11
    //   84: aload 11
    //   86: astore 10
    //   88: aload 11
    //   90: ifnull +17 -> 107
    //   93: aload 8
    //   95: astore 9
    //   97: aload 11
    //   99: getstatic 146	java/util/Locale:US	Ljava/util/Locale;
    //   102: invokevirtual 150	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   105: astore 10
    //   107: aload 10
    //   109: ifnull +194 -> 303
    //   112: aload 8
    //   114: astore 9
    //   116: aload 10
    //   118: ldc -104
    //   120: invokevirtual 156	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   123: ifeq +180 -> 303
    //   126: aload 8
    //   128: astore 9
    //   130: invokestatic 158	com/amap/api/mapcore2d/cw:a	()Ljava/lang/String;
    //   133: astore 10
    //   135: aload 8
    //   137: astore 9
    //   139: invokestatic 160	com/amap/api/mapcore2d/cw:b	()I
    //   142: istore_1
    //   143: iload_1
    //   144: istore_2
    //   145: iload_1
    //   146: istore_3
    //   147: aload 8
    //   149: astore 9
    //   151: aload 10
    //   153: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   156: ifne +34 -> 190
    //   159: iload_1
    //   160: istore_2
    //   161: iload_1
    //   162: istore_3
    //   163: aload 8
    //   165: astore 9
    //   167: aload 10
    //   169: ldc 24
    //   171: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   174: istore 7
    //   176: iload 7
    //   178: ifne +12 -> 190
    //   181: aload 10
    //   183: astore 9
    //   185: iconst_1
    //   186: istore_2
    //   187: goto +8 -> 195
    //   190: aconst_null
    //   191: astore 9
    //   193: iconst_0
    //   194: istore_2
    //   195: iload_2
    //   196: ifne +61 -> 257
    //   199: iload_1
    //   200: istore_2
    //   201: aload 9
    //   203: astore 10
    //   205: iload_1
    //   206: istore_3
    //   207: aload 9
    //   209: astore 11
    //   211: aload 8
    //   213: astore 9
    //   215: ldc -86
    //   217: invokestatic 172	com/amap/api/mapcore2d/cw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   220: astore 12
    //   222: aload 12
    //   224: astore_0
    //   225: goto +35 -> 260
    //   228: astore 9
    //   230: iload_2
    //   231: istore_1
    //   232: aload 10
    //   234: astore_0
    //   235: aload 9
    //   237: astore 10
    //   239: goto +292 -> 531
    //   242: astore 12
    //   244: aload 8
    //   246: astore 10
    //   248: iload_3
    //   249: istore_1
    //   250: aload 11
    //   252: astore 8
    //   254: goto +339 -> 593
    //   257: aload 9
    //   259: astore_0
    //   260: aload_0
    //   261: astore 9
    //   263: iload_1
    //   264: istore_2
    //   265: iload_1
    //   266: iconst_m1
    //   267: if_icmpne +176 -> 443
    //   270: iload 4
    //   272: istore_1
    //   273: goto +196 -> 469
    //   276: astore 10
    //   278: aconst_null
    //   279: astore_0
    //   280: iload_2
    //   281: istore_1
    //   282: goto +249 -> 531
    //   285: astore 12
    //   287: aconst_null
    //   288: astore 9
    //   290: aload 8
    //   292: astore 10
    //   294: iload_3
    //   295: istore_1
    //   296: aload 9
    //   298: astore 8
    //   300: goto +293 -> 593
    //   303: aload 10
    //   305: ifnull +160 -> 465
    //   308: aload 8
    //   310: astore 9
    //   312: aload 10
    //   314: ldc -82
    //   316: invokevirtual 156	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   319: ifeq +146 -> 465
    //   322: aload 8
    //   324: astore 9
    //   326: invokestatic 158	com/amap/api/mapcore2d/cw:a	()Ljava/lang/String;
    //   329: astore 10
    //   331: aload 8
    //   333: astore 9
    //   335: invokestatic 160	com/amap/api/mapcore2d/cw:b	()I
    //   338: istore_1
    //   339: iload_1
    //   340: istore_2
    //   341: iload_1
    //   342: istore_3
    //   343: aload 8
    //   345: astore 9
    //   347: aload 10
    //   349: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   352: ifne +34 -> 386
    //   355: iload_1
    //   356: istore_2
    //   357: iload_1
    //   358: istore_3
    //   359: aload 8
    //   361: astore 9
    //   363: aload 10
    //   365: ldc 24
    //   367: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   370: istore 7
    //   372: iload 7
    //   374: ifne +12 -> 386
    //   377: aload 10
    //   379: astore 9
    //   381: iconst_1
    //   382: istore_2
    //   383: goto +8 -> 391
    //   386: aconst_null
    //   387: astore 9
    //   389: iconst_0
    //   390: istore_2
    //   391: iload_2
    //   392: ifne +32 -> 424
    //   395: iload_1
    //   396: istore_2
    //   397: aload 9
    //   399: astore 10
    //   401: iload_1
    //   402: istore_3
    //   403: aload 9
    //   405: astore 11
    //   407: aload 8
    //   409: astore 9
    //   411: ldc -80
    //   413: invokestatic 172	com/amap/api/mapcore2d/cw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   416: astore 12
    //   418: aload 12
    //   420: astore_0
    //   421: goto +6 -> 427
    //   424: aload 9
    //   426: astore_0
    //   427: aload_0
    //   428: astore 9
    //   430: iload_1
    //   431: istore_2
    //   432: iload_1
    //   433: iconst_m1
    //   434: if_icmpne +9 -> 443
    //   437: iload 4
    //   439: istore_1
    //   440: goto +29 -> 469
    //   443: iload_2
    //   444: istore_1
    //   445: aload 9
    //   447: astore_0
    //   448: goto +21 -> 469
    //   451: astore 10
    //   453: goto +74 -> 527
    //   456: astore 12
    //   458: aload 8
    //   460: astore 10
    //   462: goto +126 -> 588
    //   465: aconst_null
    //   466: astore_0
    //   467: iconst_m1
    //   468: istore_1
    //   469: aload_0
    //   470: astore 9
    //   472: iload_1
    //   473: istore_2
    //   474: aload 8
    //   476: ifnull +330 -> 806
    //   479: aload_0
    //   480: astore 9
    //   482: iload_1
    //   483: istore_2
    //   484: aload 8
    //   486: invokeinterface 180 1 0
    //   491: aload_0
    //   492: astore 9
    //   494: iload_1
    //   495: istore_2
    //   496: goto +310 -> 806
    //   499: astore_0
    //   500: aload_0
    //   501: ldc 15
    //   503: ldc -74
    //   505: invokestatic 22	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   508: aload_0
    //   509: invokevirtual 185	java/lang/Throwable:printStackTrace	()V
    //   512: goto +294 -> 806
    //   515: astore_0
    //   516: aconst_null
    //   517: astore 9
    //   519: goto +331 -> 850
    //   522: astore 10
    //   524: aconst_null
    //   525: astore 8
    //   527: aconst_null
    //   528: astore_0
    //   529: iconst_m1
    //   530: istore_1
    //   531: aload 8
    //   533: astore 9
    //   535: aload 10
    //   537: ldc 15
    //   539: ldc -69
    //   541: invokestatic 22	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   544: aload 8
    //   546: astore 9
    //   548: aload 10
    //   550: invokevirtual 185	java/lang/Throwable:printStackTrace	()V
    //   553: aload_0
    //   554: astore 9
    //   556: iload_1
    //   557: istore_2
    //   558: aload 8
    //   560: ifnull +246 -> 806
    //   563: aload_0
    //   564: astore 9
    //   566: iload_1
    //   567: istore_2
    //   568: aload 8
    //   570: invokeinterface 180 1 0
    //   575: aload_0
    //   576: astore 9
    //   578: iload_1
    //   579: istore_2
    //   580: goto +226 -> 806
    //   583: astore 12
    //   585: aconst_null
    //   586: astore 10
    //   588: aconst_null
    //   589: astore 8
    //   591: iconst_m1
    //   592: istore_1
    //   593: aload 10
    //   595: astore 9
    //   597: aload 12
    //   599: ldc 15
    //   601: ldc -67
    //   603: invokestatic 22	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   606: aload 10
    //   608: astore 9
    //   610: aload_0
    //   611: invokestatic 195	com/amap/api/mapcore2d/ct:o	(Landroid/content/Context;)Ljava/lang/String;
    //   614: astore_0
    //   615: aload_0
    //   616: ifnull +160 -> 776
    //   619: aload 10
    //   621: astore 9
    //   623: aload_0
    //   624: getstatic 146	java/util/Locale:US	Ljava/util/Locale;
    //   627: invokevirtual 150	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   630: astore 11
    //   632: aload 10
    //   634: astore 9
    //   636: invokestatic 158	com/amap/api/mapcore2d/cw:a	()Ljava/lang/String;
    //   639: astore_0
    //   640: aload 10
    //   642: astore 9
    //   644: invokestatic 160	com/amap/api/mapcore2d/cw:b	()I
    //   647: istore_1
    //   648: aload 10
    //   650: astore 9
    //   652: aload 11
    //   654: ldc -104
    //   656: invokevirtual 198	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   659: iconst_m1
    //   660: if_icmpeq +49 -> 709
    //   663: aload 10
    //   665: astore 9
    //   667: aload_0
    //   668: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   671: ifne +214 -> 885
    //   674: aload 10
    //   676: astore 9
    //   678: aload_0
    //   679: ldc 24
    //   681: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   684: ifne +201 -> 885
    //   687: iconst_1
    //   688: istore_2
    //   689: goto +3 -> 692
    //   692: iload_2
    //   693: ifne +201 -> 894
    //   696: aload 10
    //   698: astore 9
    //   700: ldc -86
    //   702: invokestatic 172	com/amap/api/mapcore2d/cw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   705: astore_0
    //   706: goto +188 -> 894
    //   709: aload 10
    //   711: astore 9
    //   713: aload 11
    //   715: ldc -82
    //   717: invokevirtual 198	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   720: iconst_m1
    //   721: if_icmpeq +55 -> 776
    //   724: aload 10
    //   726: astore 9
    //   728: aload_0
    //   729: invokestatic 164	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   732: ifne +176 -> 908
    //   735: aload 10
    //   737: astore 9
    //   739: aload_0
    //   740: ldc 24
    //   742: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   745: ifne +163 -> 908
    //   748: iconst_1
    //   749: istore_2
    //   750: goto +3 -> 753
    //   753: iload 4
    //   755: istore_1
    //   756: iload_2
    //   757: ifne +22 -> 779
    //   760: aload 10
    //   762: astore 9
    //   764: ldc -80
    //   766: invokestatic 172	com/amap/api/mapcore2d/cw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   769: astore_0
    //   770: iload 4
    //   772: istore_1
    //   773: goto +6 -> 779
    //   776: aload 8
    //   778: astore_0
    //   779: aload_0
    //   780: astore 9
    //   782: iload_1
    //   783: istore_2
    //   784: aload 10
    //   786: ifnull +20 -> 806
    //   789: aload_0
    //   790: astore 9
    //   792: iload_1
    //   793: istore_2
    //   794: aload 10
    //   796: invokeinterface 180 1 0
    //   801: iload_1
    //   802: istore_2
    //   803: aload_0
    //   804: astore 9
    //   806: aload 9
    //   808: iload_2
    //   809: invokestatic 200	com/amap/api/mapcore2d/cw:a	(Ljava/lang/String;I)Z
    //   812: ifeq +71 -> 883
    //   815: new 79	java/net/Proxy
    //   818: dup
    //   819: getstatic 203	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   822: aload 9
    //   824: iload_2
    //   825: invokestatic 209	java/net/InetSocketAddress:createUnresolved	(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    //   828: invokespecial 212	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   831: astore_0
    //   832: aload_0
    //   833: areturn
    //   834: astore_0
    //   835: aload_0
    //   836: ldc 15
    //   838: ldc -74
    //   840: invokestatic 22	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   843: aload_0
    //   844: invokevirtual 185	java/lang/Throwable:printStackTrace	()V
    //   847: aconst_null
    //   848: areturn
    //   849: astore_0
    //   850: aload 9
    //   852: ifnull +29 -> 881
    //   855: aload 9
    //   857: invokeinterface 180 1 0
    //   862: goto +19 -> 881
    //   865: astore 8
    //   867: aload 8
    //   869: ldc 15
    //   871: ldc -74
    //   873: invokestatic 22	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   876: aload 8
    //   878: invokevirtual 185	java/lang/Throwable:printStackTrace	()V
    //   881: aload_0
    //   882: athrow
    //   883: aconst_null
    //   884: areturn
    //   885: aload 8
    //   887: astore_0
    //   888: iload 5
    //   890: istore_2
    //   891: goto -199 -> 692
    //   894: iload_1
    //   895: iconst_m1
    //   896: if_icmpne +9 -> 905
    //   899: iload 4
    //   901: istore_1
    //   902: goto -123 -> 779
    //   905: goto -126 -> 779
    //   908: aload 8
    //   910: astore_0
    //   911: iload 6
    //   913: istore_2
    //   914: goto -161 -> 753
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	917	0	paramContext	Context
    //   142	760	1	i	int
    //   144	770	2	j	int
    //   146	257	3	k	int
    //   28	872	4	m	int
    //   24	865	5	n	int
    //   21	891	6	i1	int
    //   174	199	7	bool	boolean
    //   12	765	8	localObject1	Object
    //   865	44	8	localThrowable1	Throwable
    //   18	196	9	localObject2	Object
    //   228	30	9	localThrowable2	Throwable
    //   261	595	9	localObject3	Object
    //   86	161	10	localObject4	Object
    //   276	1	10	localThrowable3	Throwable
    //   292	108	10	localObject5	Object
    //   451	1	10	localThrowable4	Throwable
    //   460	1	10	localObject6	Object
    //   522	27	10	localThrowable5	Throwable
    //   586	209	10	localObject7	Object
    //   82	632	11	localObject8	Object
    //   220	3	12	str1	String
    //   242	1	12	localSecurityException1	SecurityException
    //   285	1	12	localSecurityException2	SecurityException
    //   416	3	12	str2	String
    //   456	1	12	localSecurityException3	SecurityException
    //   583	15	12	localSecurityException4	SecurityException
    // Exception table:
    //   from	to	target	type
    //   215	222	228	java/lang/Throwable
    //   411	418	228	java/lang/Throwable
    //   215	222	242	java/lang/SecurityException
    //   411	418	242	java/lang/SecurityException
    //   151	159	276	java/lang/Throwable
    //   167	176	276	java/lang/Throwable
    //   347	355	276	java/lang/Throwable
    //   363	372	276	java/lang/Throwable
    //   151	159	285	java/lang/SecurityException
    //   167	176	285	java/lang/SecurityException
    //   347	355	285	java/lang/SecurityException
    //   363	372	285	java/lang/SecurityException
    //   52	62	451	java/lang/Throwable
    //   66	84	451	java/lang/Throwable
    //   97	107	451	java/lang/Throwable
    //   116	126	451	java/lang/Throwable
    //   130	135	451	java/lang/Throwable
    //   139	143	451	java/lang/Throwable
    //   312	322	451	java/lang/Throwable
    //   326	331	451	java/lang/Throwable
    //   335	339	451	java/lang/Throwable
    //   52	62	456	java/lang/SecurityException
    //   66	84	456	java/lang/SecurityException
    //   97	107	456	java/lang/SecurityException
    //   116	126	456	java/lang/SecurityException
    //   130	135	456	java/lang/SecurityException
    //   139	143	456	java/lang/SecurityException
    //   312	322	456	java/lang/SecurityException
    //   326	331	456	java/lang/SecurityException
    //   335	339	456	java/lang/SecurityException
    //   484	491	499	java/lang/Throwable
    //   568	575	499	java/lang/Throwable
    //   794	801	499	java/lang/Throwable
    //   30	43	515	finally
    //   30	43	522	java/lang/Throwable
    //   30	43	583	java/lang/SecurityException
    //   806	832	834	java/lang/Throwable
    //   52	62	849	finally
    //   66	84	849	finally
    //   97	107	849	finally
    //   116	126	849	finally
    //   130	135	849	finally
    //   139	143	849	finally
    //   151	159	849	finally
    //   167	176	849	finally
    //   215	222	849	finally
    //   312	322	849	finally
    //   326	331	849	finally
    //   335	339	849	finally
    //   347	355	849	finally
    //   363	372	849	finally
    //   411	418	849	finally
    //   535	544	849	finally
    //   548	553	849	finally
    //   597	606	849	finally
    //   610	615	849	finally
    //   623	632	849	finally
    //   636	640	849	finally
    //   644	648	849	finally
    //   652	663	849	finally
    //   667	674	849	finally
    //   678	687	849	finally
    //   700	706	849	finally
    //   713	724	849	finally
    //   728	735	849	finally
    //   739	748	849	finally
    //   764	770	849	finally
    //   855	862	865	java/lang/Throwable
  }
  
  private static boolean c(Context paramContext)
  {
    return ct.m(paramContext) == 0;
  }
}
