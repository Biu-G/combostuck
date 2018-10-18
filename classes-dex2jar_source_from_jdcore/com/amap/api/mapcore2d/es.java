package com.amap.api.mapcore2d;

import android.os.Build.VERSION;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;

public class es
{
  private static et a;
  private int b;
  private int c;
  private boolean d;
  private SSLContext e;
  private Proxy f;
  private volatile boolean g = false;
  private long h = -1L;
  private long i = 0L;
  private String j;
  private ep.a k;
  private HostnameVerifier l = new HostnameVerifier()
  {
    public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      paramAnonymousString = HttpsURLConnection.getDefaultHostnameVerifier();
      return (paramAnonymousString.verify("*.amap.com", paramAnonymousSSLSession)) || (paramAnonymousString.verify("*.apilocate.amap.com", paramAnonymousSSLSession));
    }
  };
  
  es(int paramInt1, int paramInt2, Proxy paramProxy)
  {
    this(paramInt1, paramInt2, paramProxy, false);
  }
  
  es(int paramInt1, int paramInt2, Proxy paramProxy, boolean paramBoolean)
  {
    this(paramInt1, paramInt2, paramProxy, paramBoolean, null);
  }
  
  es(int paramInt1, int paramInt2, Proxy paramProxy, boolean paramBoolean, ep.a paramA)
  {
    b = paramInt1;
    c = paramInt2;
    f = paramProxy;
    d = paramBoolean;
    k = paramA;
    a();
    if (paramBoolean) {
      try
      {
        paramProxy = SSLContext.getInstance("TLS");
        paramProxy.init(null, null, null);
        e = paramProxy;
        return;
      }
      catch (Throwable paramProxy)
      {
        dd.a(paramProxy, "HttpUtil", "HttpUtil");
      }
    }
  }
  
  /* Error */
  private ex a(HttpURLConnection paramHttpURLConnection)
    throws co, IOException
  {
    // Byte code:
    //   0: ldc 94
    //   2: astore 4
    //   4: aconst_null
    //   5: astore 7
    //   7: aconst_null
    //   8: astore 8
    //   10: aconst_null
    //   11: astore 10
    //   13: aconst_null
    //   14: astore 9
    //   16: aload 4
    //   18: astore 5
    //   20: aload_1
    //   21: invokevirtual 99	java/net/HttpURLConnection:connect	()V
    //   24: aload 4
    //   26: astore 5
    //   28: aload_1
    //   29: invokevirtual 103	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   32: astore 11
    //   34: aload 4
    //   36: astore 5
    //   38: aload_1
    //   39: invokevirtual 107	java/net/HttpURLConnection:getResponseCode	()I
    //   42: istore_2
    //   43: aload 4
    //   45: astore_3
    //   46: aload 11
    //   48: ifnull +62 -> 110
    //   51: aload 4
    //   53: astore 5
    //   55: aload 11
    //   57: ldc 109
    //   59: invokeinterface 115 2 0
    //   64: checkcast 117	java/util/List
    //   67: astore 6
    //   69: aload 4
    //   71: astore_3
    //   72: aload 6
    //   74: ifnull +36 -> 110
    //   77: aload 4
    //   79: astore_3
    //   80: aload 4
    //   82: astore 5
    //   84: aload 6
    //   86: invokeinterface 120 1 0
    //   91: ifle +19 -> 110
    //   94: aload 4
    //   96: astore 5
    //   98: aload 6
    //   100: iconst_0
    //   101: invokeinterface 123 2 0
    //   106: checkcast 125	java/lang/String
    //   109: astore_3
    //   110: iload_2
    //   111: sipush 200
    //   114: if_icmpne +413 -> 527
    //   117: aload_3
    //   118: astore 5
    //   120: new 127	java/io/ByteArrayOutputStream
    //   123: dup
    //   124: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   127: astore 4
    //   129: aload_1
    //   130: invokevirtual 132	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   133: astore 5
    //   135: new 134	java/io/PushbackInputStream
    //   138: dup
    //   139: aload 5
    //   141: iconst_2
    //   142: invokespecial 137	java/io/PushbackInputStream:<init>	(Ljava/io/InputStream;I)V
    //   145: astore 6
    //   147: aload 9
    //   149: astore 7
    //   151: aload 10
    //   153: astore 8
    //   155: iconst_2
    //   156: newarray byte
    //   158: astore_1
    //   159: aload 9
    //   161: astore 7
    //   163: aload 10
    //   165: astore 8
    //   167: aload 6
    //   169: aload_1
    //   170: invokevirtual 141	java/io/PushbackInputStream:read	([B)I
    //   173: pop
    //   174: aload 9
    //   176: astore 7
    //   178: aload 10
    //   180: astore 8
    //   182: aload 6
    //   184: aload_1
    //   185: invokevirtual 145	java/io/PushbackInputStream:unread	([B)V
    //   188: aload_1
    //   189: iconst_0
    //   190: baload
    //   191: bipush 31
    //   193: if_icmpne +622 -> 815
    //   196: aload_1
    //   197: iconst_1
    //   198: baload
    //   199: bipush -117
    //   201: if_icmpne +614 -> 815
    //   204: aload 9
    //   206: astore 7
    //   208: aload 10
    //   210: astore 8
    //   212: new 147	java/util/zip/GZIPInputStream
    //   215: dup
    //   216: aload 6
    //   218: invokespecial 150	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   221: astore_1
    //   222: goto +3 -> 225
    //   225: aload_1
    //   226: astore 7
    //   228: aload_1
    //   229: astore 8
    //   231: sipush 1024
    //   234: newarray byte
    //   236: astore 9
    //   238: aload_1
    //   239: astore 7
    //   241: aload_1
    //   242: astore 8
    //   244: aload_1
    //   245: aload 9
    //   247: invokevirtual 153	java/io/InputStream:read	([B)I
    //   250: istore_2
    //   251: iload_2
    //   252: iconst_m1
    //   253: if_icmpeq +21 -> 274
    //   256: aload_1
    //   257: astore 7
    //   259: aload_1
    //   260: astore 8
    //   262: aload 4
    //   264: aload 9
    //   266: iconst_0
    //   267: iload_2
    //   268: invokevirtual 157	java/io/ByteArrayOutputStream:write	([BII)V
    //   271: goto -33 -> 238
    //   274: aload_1
    //   275: astore 7
    //   277: aload_1
    //   278: astore 8
    //   280: getstatic 159	com/amap/api/mapcore2d/es:a	Lcom/amap/api/mapcore2d/et;
    //   283: ifnull +17 -> 300
    //   286: aload_1
    //   287: astore 7
    //   289: aload_1
    //   290: astore 8
    //   292: getstatic 159	com/amap/api/mapcore2d/es:a	Lcom/amap/api/mapcore2d/et;
    //   295: invokeinterface 162 1 0
    //   300: aload_1
    //   301: astore 7
    //   303: aload_1
    //   304: astore 8
    //   306: new 164	com/amap/api/mapcore2d/ex
    //   309: dup
    //   310: invokespecial 165	com/amap/api/mapcore2d/ex:<init>	()V
    //   313: astore 9
    //   315: aload_1
    //   316: astore 7
    //   318: aload_1
    //   319: astore 8
    //   321: aload 9
    //   323: aload 4
    //   325: invokevirtual 169	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   328: putfield 172	com/amap/api/mapcore2d/ex:a	[B
    //   331: aload_1
    //   332: astore 7
    //   334: aload_1
    //   335: astore 8
    //   337: aload 9
    //   339: aload 11
    //   341: putfield 175	com/amap/api/mapcore2d/ex:b	Ljava/util/Map;
    //   344: aload_1
    //   345: astore 7
    //   347: aload_1
    //   348: astore 8
    //   350: aload 9
    //   352: aload_0
    //   353: getfield 177	com/amap/api/mapcore2d/es:j	Ljava/lang/String;
    //   356: putfield 179	com/amap/api/mapcore2d/ex:c	Ljava/lang/String;
    //   359: aload_1
    //   360: astore 7
    //   362: aload_1
    //   363: astore 8
    //   365: aload 9
    //   367: aload_3
    //   368: putfield 181	com/amap/api/mapcore2d/ex:d	Ljava/lang/String;
    //   371: aload 4
    //   373: invokevirtual 184	java/io/ByteArrayOutputStream:close	()V
    //   376: goto +12 -> 388
    //   379: astore_3
    //   380: aload_3
    //   381: ldc -70
    //   383: ldc -68
    //   385: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   388: aload 5
    //   390: ifnull +20 -> 410
    //   393: aload 5
    //   395: invokevirtual 189	java/io/InputStream:close	()V
    //   398: goto +12 -> 410
    //   401: astore_3
    //   402: aload_3
    //   403: ldc -70
    //   405: ldc -68
    //   407: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   410: aload 6
    //   412: invokevirtual 190	java/io/PushbackInputStream:close	()V
    //   415: goto +12 -> 427
    //   418: astore_3
    //   419: aload_3
    //   420: ldc -70
    //   422: ldc -68
    //   424: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   427: aload_1
    //   428: invokevirtual 189	java/io/InputStream:close	()V
    //   431: aload 9
    //   433: areturn
    //   434: astore_1
    //   435: aload_1
    //   436: ldc -70
    //   438: ldc -68
    //   440: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   443: aload 9
    //   445: areturn
    //   446: astore_1
    //   447: aload 7
    //   449: astore_3
    //   450: goto +16 -> 466
    //   453: aload 8
    //   455: astore 7
    //   457: goto +54 -> 511
    //   460: astore_1
    //   461: aconst_null
    //   462: astore_3
    //   463: aload_3
    //   464: astore 6
    //   466: aload 4
    //   468: astore 7
    //   470: aload_1
    //   471: astore 4
    //   473: aload 7
    //   475: astore_1
    //   476: goto +224 -> 700
    //   479: goto +26 -> 505
    //   482: astore 7
    //   484: aconst_null
    //   485: astore_1
    //   486: aload_1
    //   487: astore_3
    //   488: aload_3
    //   489: astore 6
    //   491: aload 4
    //   493: astore 5
    //   495: aload 7
    //   497: astore 4
    //   499: goto +211 -> 710
    //   502: aconst_null
    //   503: astore 5
    //   505: aconst_null
    //   506: astore 7
    //   508: aconst_null
    //   509: astore 6
    //   511: aload 4
    //   513: astore_1
    //   514: aload_3
    //   515: astore 8
    //   517: aload 7
    //   519: astore_3
    //   520: aload 5
    //   522: astore 4
    //   524: goto +154 -> 678
    //   527: aload_3
    //   528: astore 5
    //   530: new 192	java/lang/StringBuilder
    //   533: dup
    //   534: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   537: astore 4
    //   539: aload_3
    //   540: astore 5
    //   542: aload 4
    //   544: ldc -61
    //   546: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: pop
    //   550: aload_3
    //   551: astore 5
    //   553: aload 4
    //   555: aload_1
    //   556: invokevirtual 203	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   559: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: pop
    //   563: aload_3
    //   564: astore 5
    //   566: aload 4
    //   568: ldc -51
    //   570: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   573: pop
    //   574: aload_3
    //   575: astore 5
    //   577: aload 4
    //   579: iload_2
    //   580: invokevirtual 208	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   583: pop
    //   584: aload_3
    //   585: astore 5
    //   587: aload 4
    //   589: ldc -46
    //   591: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: pop
    //   595: aload_3
    //   596: astore 5
    //   598: aload 4
    //   600: aload_3
    //   601: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   604: pop
    //   605: aload_3
    //   606: astore 5
    //   608: aload 4
    //   610: ldc -44
    //   612: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: pop
    //   616: aload_3
    //   617: astore 5
    //   619: aload 4
    //   621: aload_0
    //   622: getfield 177	com/amap/api/mapcore2d/es:j	Ljava/lang/String;
    //   625: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   628: pop
    //   629: aload_3
    //   630: astore 5
    //   632: new 90	com/amap/api/mapcore2d/co
    //   635: dup
    //   636: aload 4
    //   638: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   641: aload_3
    //   642: invokespecial 218	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   645: athrow
    //   646: astore 4
    //   648: aconst_null
    //   649: astore_1
    //   650: aload_1
    //   651: astore_3
    //   652: aload_3
    //   653: astore 6
    //   655: aload 8
    //   657: astore 5
    //   659: goto +51 -> 710
    //   662: aconst_null
    //   663: astore 4
    //   665: aload 4
    //   667: astore_3
    //   668: aload_3
    //   669: astore 6
    //   671: aload 7
    //   673: astore_1
    //   674: aload 5
    //   676: astore 8
    //   678: new 90	com/amap/api/mapcore2d/co
    //   681: dup
    //   682: ldc -36
    //   684: aload 8
    //   686: invokespecial 218	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   689: athrow
    //   690: astore 7
    //   692: aload 4
    //   694: astore 5
    //   696: aload 7
    //   698: astore 4
    //   700: aload 5
    //   702: astore 7
    //   704: aload_1
    //   705: astore 5
    //   707: aload 7
    //   709: astore_1
    //   710: aload 5
    //   712: ifnull +22 -> 734
    //   715: aload 5
    //   717: invokevirtual 184	java/io/ByteArrayOutputStream:close	()V
    //   720: goto +14 -> 734
    //   723: astore 5
    //   725: aload 5
    //   727: ldc -70
    //   729: ldc -68
    //   731: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   734: aload_1
    //   735: ifnull +19 -> 754
    //   738: aload_1
    //   739: invokevirtual 189	java/io/InputStream:close	()V
    //   742: goto +12 -> 754
    //   745: astore_1
    //   746: aload_1
    //   747: ldc -70
    //   749: ldc -68
    //   751: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   754: aload 6
    //   756: ifnull +20 -> 776
    //   759: aload 6
    //   761: invokevirtual 190	java/io/PushbackInputStream:close	()V
    //   764: goto +12 -> 776
    //   767: astore_1
    //   768: aload_1
    //   769: ldc -70
    //   771: ldc -68
    //   773: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   776: aload_3
    //   777: ifnull +19 -> 796
    //   780: aload_3
    //   781: invokevirtual 189	java/io/InputStream:close	()V
    //   784: goto +12 -> 796
    //   787: astore_1
    //   788: aload_1
    //   789: ldc -70
    //   791: ldc -68
    //   793: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   796: aload 4
    //   798: athrow
    //   799: astore_1
    //   800: goto -138 -> 662
    //   803: astore_1
    //   804: goto -302 -> 502
    //   807: astore_1
    //   808: goto -329 -> 479
    //   811: astore_1
    //   812: goto -359 -> 453
    //   815: aload 6
    //   817: astore_1
    //   818: goto -593 -> 225
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	821	0	this	es
    //   0	821	1	paramHttpURLConnection	HttpURLConnection
    //   42	538	2	m	int
    //   45	323	3	localObject1	Object
    //   379	2	3	localThrowable1	Throwable
    //   401	2	3	localThrowable2	Throwable
    //   418	2	3	localThrowable3	Throwable
    //   449	332	3	localObject2	Object
    //   2	635	4	localObject3	Object
    //   646	1	4	localObject4	Object
    //   663	134	4	localObject5	Object
    //   18	698	5	localObject6	Object
    //   723	3	5	localThrowable4	Throwable
    //   67	749	6	localObject7	Object
    //   5	469	7	localObject8	Object
    //   482	14	7	localObject9	Object
    //   506	166	7	localObject10	Object
    //   690	7	7	localObject11	Object
    //   702	6	7	localObject12	Object
    //   8	677	8	localObject13	Object
    //   14	430	9	localObject14	Object
    //   11	198	10	localObject15	Object
    //   32	308	11	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   371	376	379	java/lang/Throwable
    //   393	398	401	java/lang/Throwable
    //   410	415	418	java/lang/Throwable
    //   427	431	434	java/lang/Throwable
    //   155	159	446	finally
    //   167	174	446	finally
    //   182	188	446	finally
    //   212	222	446	finally
    //   231	238	446	finally
    //   244	251	446	finally
    //   262	271	446	finally
    //   280	286	446	finally
    //   292	300	446	finally
    //   306	315	446	finally
    //   321	331	446	finally
    //   337	344	446	finally
    //   350	359	446	finally
    //   365	371	446	finally
    //   135	147	460	finally
    //   129	135	482	finally
    //   20	24	646	finally
    //   28	34	646	finally
    //   38	43	646	finally
    //   55	69	646	finally
    //   84	94	646	finally
    //   98	110	646	finally
    //   120	129	646	finally
    //   530	539	646	finally
    //   542	550	646	finally
    //   553	563	646	finally
    //   566	574	646	finally
    //   577	584	646	finally
    //   587	595	646	finally
    //   598	605	646	finally
    //   608	616	646	finally
    //   619	629	646	finally
    //   632	646	646	finally
    //   678	690	690	finally
    //   715	720	723	java/lang/Throwable
    //   738	742	745	java/lang/Throwable
    //   759	764	767	java/lang/Throwable
    //   780	784	787	java/lang/Throwable
    //   20	24	799	java/io/IOException
    //   28	34	799	java/io/IOException
    //   38	43	799	java/io/IOException
    //   55	69	799	java/io/IOException
    //   84	94	799	java/io/IOException
    //   98	110	799	java/io/IOException
    //   120	129	799	java/io/IOException
    //   530	539	799	java/io/IOException
    //   542	550	799	java/io/IOException
    //   553	563	799	java/io/IOException
    //   566	574	799	java/io/IOException
    //   577	584	799	java/io/IOException
    //   587	595	799	java/io/IOException
    //   598	605	799	java/io/IOException
    //   608	616	799	java/io/IOException
    //   619	629	799	java/io/IOException
    //   632	646	799	java/io/IOException
    //   129	135	803	java/io/IOException
    //   135	147	807	java/io/IOException
    //   155	159	811	java/io/IOException
    //   167	174	811	java/io/IOException
    //   182	188	811	java/io/IOException
    //   212	222	811	java/io/IOException
    //   231	238	811	java/io/IOException
    //   244	251	811	java/io/IOException
    //   262	271	811	java/io/IOException
    //   280	286	811	java/io/IOException
    //   292	300	811	java/io/IOException
    //   306	315	811	java/io/IOException
    //   321	331	811	java/io/IOException
    //   337	344	811	java/io/IOException
    //   350	359	811	java/io/IOException
    //   365	371	811	java/io/IOException
  }
  
  static String a(Map<String, String> paramMap)
  {
    if (paramMap != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        String str2 = (String)paramMap.getKey();
        String str1 = (String)paramMap.getValue();
        paramMap = str1;
        if (str1 == null) {
          paramMap = "";
        }
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append(URLEncoder.encode(str2));
        localStringBuilder.append("=");
        localStringBuilder.append(URLEncoder.encode(paramMap));
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  private void a()
  {
    try
    {
      j = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
      return;
    }
    catch (Throwable localThrowable)
    {
      dd.a(localThrowable, "HttpUrlUtil", "initCSID");
    }
  }
  
  public static void a(et paramEt)
  {
    a = paramEt;
  }
  
  private void a(Map<String, String> paramMap, HttpURLConnection paramHttpURLConnection)
  {
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramHttpURLConnection.addRequestProperty(str, (String)paramMap.get(str));
      }
    }
    try
    {
      paramHttpURLConnection.addRequestProperty("csid", j);
    }
    catch (Throwable paramMap)
    {
      dd.a(paramMap, "HttpUrlUtil", "addHeaders");
    }
    paramHttpURLConnection.setConnectTimeout(b);
    paramHttpURLConnection.setReadTimeout(c);
  }
  
  /* Error */
  ex a(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws co
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 9
    //   15: aconst_null
    //   16: astore 10
    //   18: aconst_null
    //   19: astore 11
    //   21: aconst_null
    //   22: astore 12
    //   24: aconst_null
    //   25: astore 13
    //   27: aconst_null
    //   28: astore 14
    //   30: aload 14
    //   32: astore 4
    //   34: aload_3
    //   35: invokestatic 318	com/amap/api/mapcore2d/es:a	(Ljava/util/Map;)Ljava/lang/String;
    //   38: astore_3
    //   39: aload 14
    //   41: astore 4
    //   43: new 320	java/lang/StringBuffer
    //   46: dup
    //   47: invokespecial 321	java/lang/StringBuffer:<init>	()V
    //   50: astore 15
    //   52: aload 14
    //   54: astore 4
    //   56: aload 15
    //   58: aload_1
    //   59: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   62: pop
    //   63: aload_3
    //   64: ifnull +27 -> 91
    //   67: aload 14
    //   69: astore 4
    //   71: aload 15
    //   73: ldc_w 326
    //   76: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   79: pop
    //   80: aload 14
    //   82: astore 4
    //   84: aload 15
    //   86: aload_3
    //   87: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   90: pop
    //   91: aload 14
    //   93: astore 4
    //   95: aload_0
    //   96: aload 15
    //   98: invokevirtual 327	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   101: aload_2
    //   102: iconst_0
    //   103: invokevirtual 330	com/amap/api/mapcore2d/es:a	(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    //   106: astore_1
    //   107: aload_0
    //   108: aload_1
    //   109: invokespecial 332	com/amap/api/mapcore2d/es:a	(Ljava/net/HttpURLConnection;)Lcom/amap/api/mapcore2d/ex;
    //   112: astore_2
    //   113: aload_1
    //   114: ifnull +19 -> 133
    //   117: aload_1
    //   118: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   121: aload_2
    //   122: areturn
    //   123: astore_1
    //   124: aload_1
    //   125: ldc -70
    //   127: ldc_w 337
    //   130: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   133: aload_2
    //   134: areturn
    //   135: astore_2
    //   136: aload_1
    //   137: astore 4
    //   139: goto +163 -> 302
    //   142: astore_2
    //   143: goto +60 -> 203
    //   146: astore_2
    //   147: aload_1
    //   148: astore 4
    //   150: goto +74 -> 224
    //   153: aload_1
    //   154: astore 4
    //   156: goto +70 -> 226
    //   159: aload_1
    //   160: astore 4
    //   162: goto +74 -> 236
    //   165: aload_1
    //   166: astore 4
    //   168: goto +79 -> 247
    //   171: aload_1
    //   172: astore 4
    //   174: goto +84 -> 258
    //   177: aload_1
    //   178: astore 4
    //   180: goto +89 -> 269
    //   183: aload_1
    //   184: astore 4
    //   186: goto +94 -> 280
    //   189: aload_1
    //   190: astore 4
    //   192: goto +99 -> 291
    //   195: astore_2
    //   196: goto +106 -> 302
    //   199: astore_2
    //   200: aload 5
    //   202: astore_1
    //   203: aload_1
    //   204: astore 4
    //   206: aload_2
    //   207: invokevirtual 340	java/lang/Throwable:printStackTrace	()V
    //   210: aload_1
    //   211: astore 4
    //   213: new 90	com/amap/api/mapcore2d/co
    //   216: dup
    //   217: ldc_w 342
    //   220: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: aload_2
    //   225: athrow
    //   226: new 90	com/amap/api/mapcore2d/co
    //   229: dup
    //   230: ldc -36
    //   232: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   235: athrow
    //   236: new 90	com/amap/api/mapcore2d/co
    //   239: dup
    //   240: ldc_w 342
    //   243: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   246: athrow
    //   247: new 90	com/amap/api/mapcore2d/co
    //   250: dup
    //   251: ldc_w 347
    //   254: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   257: athrow
    //   258: new 90	com/amap/api/mapcore2d/co
    //   261: dup
    //   262: ldc_w 349
    //   265: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   268: athrow
    //   269: new 90	com/amap/api/mapcore2d/co
    //   272: dup
    //   273: ldc_w 351
    //   276: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   279: athrow
    //   280: new 90	com/amap/api/mapcore2d/co
    //   283: dup
    //   284: ldc_w 353
    //   287: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   290: athrow
    //   291: new 90	com/amap/api/mapcore2d/co
    //   294: dup
    //   295: ldc_w 355
    //   298: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   301: athrow
    //   302: aload 4
    //   304: ifnull +21 -> 325
    //   307: aload 4
    //   309: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   312: goto +13 -> 325
    //   315: astore_1
    //   316: aload_1
    //   317: ldc -70
    //   319: ldc_w 337
    //   322: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   325: aload_2
    //   326: athrow
    //   327: astore_1
    //   328: aload 13
    //   330: astore 4
    //   332: goto -41 -> 291
    //   335: astore_1
    //   336: aload 12
    //   338: astore 4
    //   340: goto -60 -> 280
    //   343: astore_1
    //   344: aload 11
    //   346: astore 4
    //   348: goto -79 -> 269
    //   351: astore_1
    //   352: aload 10
    //   354: astore 4
    //   356: goto -98 -> 258
    //   359: astore_1
    //   360: aload 9
    //   362: astore 4
    //   364: goto -117 -> 247
    //   367: astore_1
    //   368: aload 8
    //   370: astore 4
    //   372: goto -136 -> 236
    //   375: astore_1
    //   376: aload 7
    //   378: astore 4
    //   380: goto -154 -> 226
    //   383: astore_2
    //   384: goto -195 -> 189
    //   387: astore_2
    //   388: goto -205 -> 183
    //   391: astore_2
    //   392: goto -215 -> 177
    //   395: astore_2
    //   396: goto -225 -> 171
    //   399: astore_2
    //   400: goto -235 -> 165
    //   403: astore_2
    //   404: goto -245 -> 159
    //   407: astore_2
    //   408: goto -255 -> 153
    //   411: astore_2
    //   412: aload 6
    //   414: astore 4
    //   416: goto -192 -> 224
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	es
    //   0	419	1	paramString	String
    //   0	419	2	paramMap1	Map<String, String>
    //   0	419	3	paramMap2	Map<String, String>
    //   32	383	4	localObject1	Object
    //   1	200	5	localObject2	Object
    //   4	409	6	localObject3	Object
    //   7	370	7	localObject4	Object
    //   10	359	8	localObject5	Object
    //   13	348	9	localObject6	Object
    //   16	337	10	localObject7	Object
    //   19	326	11	localObject8	Object
    //   22	315	12	localObject9	Object
    //   25	304	13	localObject10	Object
    //   28	64	14	localObject11	Object
    //   50	47	15	localStringBuffer	StringBuffer
    // Exception table:
    //   from	to	target	type
    //   117	121	123	java/lang/Throwable
    //   107	113	135	finally
    //   107	113	142	java/lang/Throwable
    //   107	113	146	com/amap/api/mapcore2d/co
    //   34	39	195	finally
    //   43	52	195	finally
    //   56	63	195	finally
    //   71	80	195	finally
    //   84	91	195	finally
    //   95	107	195	finally
    //   206	210	195	finally
    //   213	224	195	finally
    //   224	226	195	finally
    //   226	236	195	finally
    //   236	247	195	finally
    //   247	258	195	finally
    //   258	269	195	finally
    //   269	280	195	finally
    //   280	291	195	finally
    //   291	302	195	finally
    //   34	39	199	java/lang/Throwable
    //   43	52	199	java/lang/Throwable
    //   56	63	199	java/lang/Throwable
    //   71	80	199	java/lang/Throwable
    //   84	91	199	java/lang/Throwable
    //   95	107	199	java/lang/Throwable
    //   307	312	315	java/lang/Throwable
    //   34	39	327	java/net/ConnectException
    //   43	52	327	java/net/ConnectException
    //   56	63	327	java/net/ConnectException
    //   71	80	327	java/net/ConnectException
    //   84	91	327	java/net/ConnectException
    //   95	107	327	java/net/ConnectException
    //   34	39	335	java/net/MalformedURLException
    //   43	52	335	java/net/MalformedURLException
    //   56	63	335	java/net/MalformedURLException
    //   71	80	335	java/net/MalformedURLException
    //   84	91	335	java/net/MalformedURLException
    //   95	107	335	java/net/MalformedURLException
    //   34	39	343	java/net/UnknownHostException
    //   43	52	343	java/net/UnknownHostException
    //   56	63	343	java/net/UnknownHostException
    //   71	80	343	java/net/UnknownHostException
    //   84	91	343	java/net/UnknownHostException
    //   95	107	343	java/net/UnknownHostException
    //   34	39	351	java/net/SocketException
    //   43	52	351	java/net/SocketException
    //   56	63	351	java/net/SocketException
    //   71	80	351	java/net/SocketException
    //   84	91	351	java/net/SocketException
    //   95	107	351	java/net/SocketException
    //   34	39	359	java/net/SocketTimeoutException
    //   43	52	359	java/net/SocketTimeoutException
    //   56	63	359	java/net/SocketTimeoutException
    //   71	80	359	java/net/SocketTimeoutException
    //   84	91	359	java/net/SocketTimeoutException
    //   95	107	359	java/net/SocketTimeoutException
    //   34	39	367	java/io/InterruptedIOException
    //   43	52	367	java/io/InterruptedIOException
    //   56	63	367	java/io/InterruptedIOException
    //   71	80	367	java/io/InterruptedIOException
    //   84	91	367	java/io/InterruptedIOException
    //   95	107	367	java/io/InterruptedIOException
    //   34	39	375	java/io/IOException
    //   43	52	375	java/io/IOException
    //   56	63	375	java/io/IOException
    //   71	80	375	java/io/IOException
    //   84	91	375	java/io/IOException
    //   95	107	375	java/io/IOException
    //   107	113	383	java/net/ConnectException
    //   107	113	387	java/net/MalformedURLException
    //   107	113	391	java/net/UnknownHostException
    //   107	113	395	java/net/SocketException
    //   107	113	399	java/net/SocketTimeoutException
    //   107	113	403	java/io/InterruptedIOException
    //   107	113	407	java/io/IOException
    //   34	39	411	com/amap/api/mapcore2d/co
    //   43	52	411	com/amap/api/mapcore2d/co
    //   56	63	411	com/amap/api/mapcore2d/co
    //   71	80	411	com/amap/api/mapcore2d/co
    //   84	91	411	com/amap/api/mapcore2d/co
    //   95	107	411	com/amap/api/mapcore2d/co
  }
  
  /* Error */
  ex a(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
    throws co
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 9
    //   15: aconst_null
    //   16: astore 10
    //   18: aconst_null
    //   19: astore 11
    //   21: aconst_null
    //   22: astore 12
    //   24: aconst_null
    //   25: astore 13
    //   27: aconst_null
    //   28: astore 4
    //   30: aload_0
    //   31: aload_1
    //   32: aload_2
    //   33: iconst_1
    //   34: invokevirtual 330	com/amap/api/mapcore2d/es:a	(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    //   37: astore_1
    //   38: aload_3
    //   39: ifnull +32 -> 71
    //   42: aload_3
    //   43: arraylength
    //   44: ifle +27 -> 71
    //   47: new 359	java/io/DataOutputStream
    //   50: dup
    //   51: aload_1
    //   52: invokevirtual 363	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   55: invokespecial 366	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   58: astore_2
    //   59: aload_2
    //   60: aload_3
    //   61: invokevirtual 368	java/io/DataOutputStream:write	([B)V
    //   64: aload_2
    //   65: invokevirtual 369	java/io/DataOutputStream:close	()V
    //   68: goto +3 -> 71
    //   71: aload_0
    //   72: aload_1
    //   73: invokespecial 332	com/amap/api/mapcore2d/es:a	(Ljava/net/HttpURLConnection;)Lcom/amap/api/mapcore2d/ex;
    //   76: astore_2
    //   77: aload_1
    //   78: ifnull +19 -> 97
    //   81: aload_1
    //   82: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   85: aload_2
    //   86: areturn
    //   87: astore_1
    //   88: aload_1
    //   89: ldc -70
    //   91: ldc_w 371
    //   94: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload_2
    //   98: areturn
    //   99: astore_1
    //   100: goto +186 -> 286
    //   103: astore_2
    //   104: aload 5
    //   106: astore_1
    //   107: aload_1
    //   108: astore 4
    //   110: aload_2
    //   111: ldc -70
    //   113: ldc_w 371
    //   116: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_1
    //   120: astore 4
    //   122: new 90	com/amap/api/mapcore2d/co
    //   125: dup
    //   126: ldc_w 342
    //   129: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   132: athrow
    //   133: aload_1
    //   134: astore 4
    //   136: aload_2
    //   137: ldc -70
    //   139: ldc_w 371
    //   142: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   145: aload_1
    //   146: astore 4
    //   148: aload_2
    //   149: athrow
    //   150: aload_1
    //   151: astore 4
    //   153: aload_2
    //   154: invokevirtual 372	java/io/IOException:printStackTrace	()V
    //   157: aload_1
    //   158: astore 4
    //   160: new 90	com/amap/api/mapcore2d/co
    //   163: dup
    //   164: ldc -36
    //   166: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   169: athrow
    //   170: new 90	com/amap/api/mapcore2d/co
    //   173: dup
    //   174: ldc_w 342
    //   177: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   180: athrow
    //   181: aload_1
    //   182: astore 4
    //   184: aload_2
    //   185: invokevirtual 373	java/net/SocketTimeoutException:printStackTrace	()V
    //   188: aload_1
    //   189: astore 4
    //   191: new 90	com/amap/api/mapcore2d/co
    //   194: dup
    //   195: ldc_w 347
    //   198: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   201: athrow
    //   202: aload_1
    //   203: astore 4
    //   205: aload_2
    //   206: invokevirtual 374	java/net/SocketException:printStackTrace	()V
    //   209: aload_1
    //   210: astore 4
    //   212: new 90	com/amap/api/mapcore2d/co
    //   215: dup
    //   216: ldc_w 349
    //   219: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   222: athrow
    //   223: aload_1
    //   224: astore 4
    //   226: aload_2
    //   227: invokevirtual 375	java/net/UnknownHostException:printStackTrace	()V
    //   230: aload_1
    //   231: astore 4
    //   233: new 90	com/amap/api/mapcore2d/co
    //   236: dup
    //   237: ldc_w 351
    //   240: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   243: athrow
    //   244: aload_1
    //   245: astore 4
    //   247: aload_2
    //   248: invokevirtual 376	java/net/MalformedURLException:printStackTrace	()V
    //   251: aload_1
    //   252: astore 4
    //   254: new 90	com/amap/api/mapcore2d/co
    //   257: dup
    //   258: ldc_w 353
    //   261: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   264: athrow
    //   265: aload_1
    //   266: astore 4
    //   268: aload_2
    //   269: invokevirtual 377	java/net/ConnectException:printStackTrace	()V
    //   272: aload_1
    //   273: astore 4
    //   275: new 90	com/amap/api/mapcore2d/co
    //   278: dup
    //   279: ldc_w 355
    //   282: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   285: athrow
    //   286: aload 4
    //   288: ifnull +21 -> 309
    //   291: aload 4
    //   293: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   296: goto +13 -> 309
    //   299: astore_2
    //   300: aload_2
    //   301: ldc -70
    //   303: ldc_w 371
    //   306: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   309: aload_1
    //   310: athrow
    //   311: astore_1
    //   312: aload 8
    //   314: astore 4
    //   316: goto -146 -> 170
    //   319: astore_2
    //   320: goto +24 -> 344
    //   323: astore_2
    //   324: aload_1
    //   325: astore 4
    //   327: aload_2
    //   328: astore_1
    //   329: goto -43 -> 286
    //   332: astore_2
    //   333: goto -226 -> 107
    //   336: astore_2
    //   337: goto -204 -> 133
    //   340: astore_2
    //   341: goto -191 -> 150
    //   344: aload_1
    //   345: astore 4
    //   347: goto -177 -> 170
    //   350: astore_2
    //   351: goto -170 -> 181
    //   354: astore_2
    //   355: goto -153 -> 202
    //   358: astore_2
    //   359: goto -136 -> 223
    //   362: astore_2
    //   363: goto -119 -> 244
    //   366: astore_2
    //   367: goto -102 -> 265
    //   370: astore_2
    //   371: aload 6
    //   373: astore_1
    //   374: goto -241 -> 133
    //   377: astore_2
    //   378: aload 7
    //   380: astore_1
    //   381: goto -231 -> 150
    //   384: astore_2
    //   385: aload 9
    //   387: astore_1
    //   388: goto -207 -> 181
    //   391: astore_2
    //   392: aload 10
    //   394: astore_1
    //   395: goto -193 -> 202
    //   398: astore_2
    //   399: aload 11
    //   401: astore_1
    //   402: goto -179 -> 223
    //   405: astore_2
    //   406: aload 12
    //   408: astore_1
    //   409: goto -165 -> 244
    //   412: astore_2
    //   413: aload 13
    //   415: astore_1
    //   416: goto -151 -> 265
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	es
    //   0	419	1	paramString	String
    //   0	419	2	paramMap	Map<String, String>
    //   0	419	3	paramArrayOfByte	byte[]
    //   28	318	4	localObject1	Object
    //   1	104	5	localObject2	Object
    //   4	368	6	localObject3	Object
    //   7	372	7	localObject4	Object
    //   10	303	8	localObject5	Object
    //   13	373	9	localObject6	Object
    //   16	377	10	localObject7	Object
    //   19	381	11	localObject8	Object
    //   22	385	12	localObject9	Object
    //   25	389	13	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   81	85	87	java/lang/Throwable
    //   30	38	99	finally
    //   110	119	99	finally
    //   122	133	99	finally
    //   136	145	99	finally
    //   148	150	99	finally
    //   153	157	99	finally
    //   160	170	99	finally
    //   170	181	99	finally
    //   184	188	99	finally
    //   191	202	99	finally
    //   205	209	99	finally
    //   212	223	99	finally
    //   226	230	99	finally
    //   233	244	99	finally
    //   247	251	99	finally
    //   254	265	99	finally
    //   268	272	99	finally
    //   275	286	99	finally
    //   30	38	103	java/lang/Throwable
    //   291	296	299	java/lang/Throwable
    //   30	38	311	java/io/InterruptedIOException
    //   42	68	319	java/io/InterruptedIOException
    //   71	77	319	java/io/InterruptedIOException
    //   42	68	323	finally
    //   71	77	323	finally
    //   42	68	332	java/lang/Throwable
    //   71	77	332	java/lang/Throwable
    //   42	68	336	com/amap/api/mapcore2d/co
    //   71	77	336	com/amap/api/mapcore2d/co
    //   42	68	340	java/io/IOException
    //   71	77	340	java/io/IOException
    //   42	68	350	java/net/SocketTimeoutException
    //   71	77	350	java/net/SocketTimeoutException
    //   42	68	354	java/net/SocketException
    //   71	77	354	java/net/SocketException
    //   42	68	358	java/net/UnknownHostException
    //   71	77	358	java/net/UnknownHostException
    //   42	68	362	java/net/MalformedURLException
    //   71	77	362	java/net/MalformedURLException
    //   42	68	366	java/net/ConnectException
    //   71	77	366	java/net/ConnectException
    //   30	38	370	com/amap/api/mapcore2d/co
    //   30	38	377	java/io/IOException
    //   30	38	384	java/net/SocketTimeoutException
    //   30	38	391	java/net/SocketException
    //   30	38	398	java/net/UnknownHostException
    //   30	38	405	java/net/MalformedURLException
    //   30	38	412	java/net/ConnectException
  }
  
  HttpURLConnection a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
    throws IOException
  {
    ct.b();
    URL localURL = new URL(paramString);
    if (k != null) {
      paramString = k.a(f, localURL);
    } else {
      paramString = null;
    }
    Object localObject = paramString;
    if (paramString == null) {
      if (f != null) {
        localObject = localURL.openConnection(f);
      } else {
        localObject = localURL.openConnection();
      }
    }
    if (d)
    {
      paramString = (HttpsURLConnection)localObject;
      localObject = (HttpsURLConnection)paramString;
      ((HttpsURLConnection)localObject).setSSLSocketFactory(e.getSocketFactory());
      ((HttpsURLConnection)localObject).setHostnameVerifier(l);
    }
    else
    {
      paramString = (HttpURLConnection)localObject;
    }
    if ((Build.VERSION.SDK != null) && (Build.VERSION.SDK_INT > 13)) {
      paramString.setRequestProperty("Connection", "close");
    }
    a(paramMap, paramString);
    if (paramBoolean)
    {
      paramString.setRequestMethod("POST");
      paramString.setUseCaches(false);
      paramString.setDoInput(true);
      paramString.setDoOutput(true);
      return paramString;
    }
    paramString.setRequestMethod("GET");
    paramString.setDoInput(true);
    return paramString;
  }
  
  void a(long paramLong)
  {
    i = paramLong;
  }
  
  /* Error */
  void a(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, er.a paramA)
  {
    // Byte code:
    //   0: aload 4
    //   2: ifnonnull +4 -> 6
    //   5: return
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 9
    //   12: aconst_null
    //   13: astore 10
    //   15: aload_3
    //   16: invokestatic 318	com/amap/api/mapcore2d/es:a	(Ljava/util/Map;)Ljava/lang/String;
    //   19: astore_3
    //   20: new 320	java/lang/StringBuffer
    //   23: dup
    //   24: invokespecial 321	java/lang/StringBuffer:<init>	()V
    //   27: astore 11
    //   29: aload 11
    //   31: aload_1
    //   32: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   35: pop
    //   36: aload_3
    //   37: ifnull +19 -> 56
    //   40: aload 11
    //   42: ldc_w 326
    //   45: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   48: pop
    //   49: aload 11
    //   51: aload_3
    //   52: invokevirtual 324	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   55: pop
    //   56: aload_0
    //   57: aload 11
    //   59: invokevirtual 327	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   62: aload_2
    //   63: iconst_0
    //   64: invokevirtual 330	com/amap/api/mapcore2d/es:a	(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    //   67: astore_1
    //   68: aload 8
    //   70: astore_2
    //   71: aload_1
    //   72: astore_3
    //   73: new 192	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   80: astore 9
    //   82: aload 8
    //   84: astore_2
    //   85: aload_1
    //   86: astore_3
    //   87: aload 9
    //   89: ldc_w 449
    //   92: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: pop
    //   96: aload 8
    //   98: astore_2
    //   99: aload_1
    //   100: astore_3
    //   101: aload 9
    //   103: aload_0
    //   104: getfield 49	com/amap/api/mapcore2d/es:i	J
    //   107: invokevirtual 452	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: aload 8
    //   113: astore_2
    //   114: aload_1
    //   115: astore_3
    //   116: aload 9
    //   118: ldc_w 274
    //   121: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload 8
    //   127: astore_2
    //   128: aload_1
    //   129: astore_3
    //   130: aload_1
    //   131: ldc_w 454
    //   134: aload 9
    //   136: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokevirtual 425	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   142: aload 8
    //   144: astore_2
    //   145: aload_1
    //   146: astore_3
    //   147: aload_1
    //   148: invokevirtual 99	java/net/HttpURLConnection:connect	()V
    //   151: aload 8
    //   153: astore_2
    //   154: aload_1
    //   155: astore_3
    //   156: aload_1
    //   157: invokevirtual 107	java/net/HttpURLConnection:getResponseCode	()I
    //   160: istore 7
    //   162: iconst_1
    //   163: istore 6
    //   165: iload 7
    //   167: sipush 200
    //   170: if_icmpeq +484 -> 654
    //   173: iconst_1
    //   174: istore 5
    //   176: goto +481 -> 657
    //   179: iload 5
    //   181: iload 6
    //   183: iand
    //   184: ifeq +95 -> 279
    //   187: aload 8
    //   189: astore_2
    //   190: aload_1
    //   191: astore_3
    //   192: new 192	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 193	java/lang/StringBuilder:<init>	()V
    //   199: astore 9
    //   201: aload 8
    //   203: astore_2
    //   204: aload_1
    //   205: astore_3
    //   206: aload 9
    //   208: ldc -61
    //   210: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: pop
    //   214: aload 8
    //   216: astore_2
    //   217: aload_1
    //   218: astore_3
    //   219: aload 9
    //   221: aload_1
    //   222: invokevirtual 203	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   225: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: pop
    //   229: aload 8
    //   231: astore_2
    //   232: aload_1
    //   233: astore_3
    //   234: aload 9
    //   236: ldc -51
    //   238: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: pop
    //   242: aload 8
    //   244: astore_2
    //   245: aload_1
    //   246: astore_3
    //   247: aload 9
    //   249: iload 7
    //   251: invokevirtual 208	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   254: pop
    //   255: aload 8
    //   257: astore_2
    //   258: aload_1
    //   259: astore_3
    //   260: aload 4
    //   262: new 90	com/amap/api/mapcore2d/co
    //   265: dup
    //   266: aload 9
    //   268: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokespecial 345	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   274: invokeinterface 459 2 0
    //   279: aload 8
    //   281: astore_2
    //   282: aload_1
    //   283: astore_3
    //   284: aload_1
    //   285: invokevirtual 132	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   288: astore 8
    //   290: sipush 1024
    //   293: newarray byte
    //   295: astore_2
    //   296: invokestatic 464	java/lang/Thread:interrupted	()Z
    //   299: ifne +114 -> 413
    //   302: aload_0
    //   303: getfield 43	com/amap/api/mapcore2d/es:g	Z
    //   306: ifne +107 -> 413
    //   309: aload 8
    //   311: aload_2
    //   312: iconst_0
    //   313: sipush 1024
    //   316: invokevirtual 467	java/io/InputStream:read	([BII)I
    //   319: istore 5
    //   321: iload 5
    //   323: ifle +90 -> 413
    //   326: aload_0
    //   327: getfield 47	com/amap/api/mapcore2d/es:h	J
    //   330: ldc2_w 44
    //   333: lcmp
    //   334: ifeq +15 -> 349
    //   337: aload_0
    //   338: getfield 49	com/amap/api/mapcore2d/es:i	J
    //   341: aload_0
    //   342: getfield 47	com/amap/api/mapcore2d/es:h	J
    //   345: lcmp
    //   346: ifge +67 -> 413
    //   349: iload 5
    //   351: sipush 1024
    //   354: if_icmpne +18 -> 372
    //   357: aload 4
    //   359: aload_2
    //   360: aload_0
    //   361: getfield 49	com/amap/api/mapcore2d/es:i	J
    //   364: invokeinterface 470 4 0
    //   369: goto +29 -> 398
    //   372: iload 5
    //   374: newarray byte
    //   376: astore_3
    //   377: aload_2
    //   378: iconst_0
    //   379: aload_3
    //   380: iconst_0
    //   381: iload 5
    //   383: invokestatic 476	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   386: aload 4
    //   388: aload_3
    //   389: aload_0
    //   390: getfield 49	com/amap/api/mapcore2d/es:i	J
    //   393: invokeinterface 470 4 0
    //   398: aload_0
    //   399: aload_0
    //   400: getfield 49	com/amap/api/mapcore2d/es:i	J
    //   403: iload 5
    //   405: i2l
    //   406: ladd
    //   407: putfield 49	com/amap/api/mapcore2d/es:i	J
    //   410: goto -114 -> 296
    //   413: aload_0
    //   414: getfield 43	com/amap/api/mapcore2d/es:g	Z
    //   417: ifeq +13 -> 430
    //   420: aload 4
    //   422: invokeinterface 477 1 0
    //   427: goto +10 -> 437
    //   430: aload 4
    //   432: invokeinterface 479 1 0
    //   437: aload 8
    //   439: ifnull +34 -> 473
    //   442: aload 8
    //   444: invokevirtual 189	java/io/InputStream:close	()V
    //   447: goto +26 -> 473
    //   450: astore_2
    //   451: aload_2
    //   452: ldc -70
    //   454: ldc_w 481
    //   457: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   460: goto +13 -> 473
    //   463: astore_2
    //   464: aload_2
    //   465: ldc -70
    //   467: ldc_w 481
    //   470: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   473: aload_1
    //   474: ifnull +117 -> 591
    //   477: aload_1
    //   478: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   481: return
    //   482: astore 4
    //   484: aload 8
    //   486: astore_2
    //   487: goto +109 -> 596
    //   490: astore 9
    //   492: goto +30 -> 522
    //   495: astore 9
    //   497: aload 10
    //   499: astore 8
    //   501: goto +21 -> 522
    //   504: astore 4
    //   506: aconst_null
    //   507: astore_1
    //   508: aload 9
    //   510: astore_2
    //   511: goto +85 -> 596
    //   514: astore 9
    //   516: aconst_null
    //   517: astore_1
    //   518: aload 10
    //   520: astore 8
    //   522: aload 8
    //   524: astore_2
    //   525: aload_1
    //   526: astore_3
    //   527: aload 4
    //   529: aload 9
    //   531: invokeinterface 459 2 0
    //   536: aload 8
    //   538: ifnull +34 -> 572
    //   541: aload 8
    //   543: invokevirtual 189	java/io/InputStream:close	()V
    //   546: goto +26 -> 572
    //   549: astore_2
    //   550: aload_2
    //   551: ldc -70
    //   553: ldc_w 481
    //   556: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   559: goto +13 -> 572
    //   562: astore_2
    //   563: aload_2
    //   564: ldc -70
    //   566: ldc_w 481
    //   569: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   572: aload_1
    //   573: ifnull +18 -> 591
    //   576: aload_1
    //   577: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   580: return
    //   581: astore_1
    //   582: aload_1
    //   583: ldc -70
    //   585: ldc_w 481
    //   588: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   591: return
    //   592: astore 4
    //   594: aload_3
    //   595: astore_1
    //   596: aload_2
    //   597: ifnull +33 -> 630
    //   600: aload_2
    //   601: invokevirtual 189	java/io/InputStream:close	()V
    //   604: goto +26 -> 630
    //   607: astore_2
    //   608: aload_2
    //   609: ldc -70
    //   611: ldc_w 481
    //   614: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   617: goto +13 -> 630
    //   620: astore_2
    //   621: aload_2
    //   622: ldc -70
    //   624: ldc_w 481
    //   627: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   630: aload_1
    //   631: ifnull +20 -> 651
    //   634: aload_1
    //   635: invokevirtual 335	java/net/HttpURLConnection:disconnect	()V
    //   638: goto +13 -> 651
    //   641: astore_1
    //   642: aload_1
    //   643: ldc -70
    //   645: ldc_w 481
    //   648: invokestatic 87	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   651: aload 4
    //   653: athrow
    //   654: iconst_0
    //   655: istore 5
    //   657: iload 7
    //   659: sipush 206
    //   662: if_icmpeq +6 -> 668
    //   665: goto -486 -> 179
    //   668: iconst_0
    //   669: istore 6
    //   671: goto -492 -> 179
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	674	0	this	es
    //   0	674	1	paramString	String
    //   0	674	2	paramMap1	Map<String, String>
    //   0	674	3	paramMap2	Map<String, String>
    //   0	674	4	paramA	er.a
    //   174	482	5	m	int
    //   163	507	6	n	int
    //   160	503	7	i1	int
    //   7	535	8	localObject1	Object
    //   10	257	9	localStringBuilder	StringBuilder
    //   490	1	9	localThrowable1	Throwable
    //   495	14	9	localThrowable2	Throwable
    //   514	16	9	localThrowable3	Throwable
    //   13	506	10	localObject2	Object
    //   27	31	11	localStringBuffer	StringBuffer
    // Exception table:
    //   from	to	target	type
    //   442	447	450	java/lang/Throwable
    //   442	447	463	java/io/IOException
    //   290	296	482	finally
    //   296	321	482	finally
    //   326	349	482	finally
    //   357	369	482	finally
    //   372	398	482	finally
    //   398	410	482	finally
    //   413	427	482	finally
    //   430	437	482	finally
    //   290	296	490	java/lang/Throwable
    //   296	321	490	java/lang/Throwable
    //   326	349	490	java/lang/Throwable
    //   357	369	490	java/lang/Throwable
    //   372	398	490	java/lang/Throwable
    //   398	410	490	java/lang/Throwable
    //   413	427	490	java/lang/Throwable
    //   430	437	490	java/lang/Throwable
    //   73	82	495	java/lang/Throwable
    //   87	96	495	java/lang/Throwable
    //   101	111	495	java/lang/Throwable
    //   116	125	495	java/lang/Throwable
    //   130	142	495	java/lang/Throwable
    //   147	151	495	java/lang/Throwable
    //   156	162	495	java/lang/Throwable
    //   192	201	495	java/lang/Throwable
    //   206	214	495	java/lang/Throwable
    //   219	229	495	java/lang/Throwable
    //   234	242	495	java/lang/Throwable
    //   247	255	495	java/lang/Throwable
    //   260	279	495	java/lang/Throwable
    //   284	290	495	java/lang/Throwable
    //   15	36	504	finally
    //   40	56	504	finally
    //   56	68	504	finally
    //   15	36	514	java/lang/Throwable
    //   40	56	514	java/lang/Throwable
    //   56	68	514	java/lang/Throwable
    //   541	546	549	java/lang/Throwable
    //   541	546	562	java/io/IOException
    //   477	481	581	java/lang/Throwable
    //   576	580	581	java/lang/Throwable
    //   73	82	592	finally
    //   87	96	592	finally
    //   101	111	592	finally
    //   116	125	592	finally
    //   130	142	592	finally
    //   147	151	592	finally
    //   156	162	592	finally
    //   192	201	592	finally
    //   206	214	592	finally
    //   219	229	592	finally
    //   234	242	592	finally
    //   247	255	592	finally
    //   260	279	592	finally
    //   284	290	592	finally
    //   527	536	592	finally
    //   600	604	607	java/lang/Throwable
    //   600	604	620	java/io/IOException
    //   634	638	641	java/lang/Throwable
  }
  
  void b(long paramLong)
  {
    h = paramLong;
  }
}
