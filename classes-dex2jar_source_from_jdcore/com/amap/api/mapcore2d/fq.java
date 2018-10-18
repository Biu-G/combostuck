package com.amap.api.mapcore2d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.autonavi.amap.mapcore2d.Inner_3dMap_location;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption;
import com.autonavi.amap.mapcore2d.Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationProtocol;

public final class fq
{
  Context a = null;
  boolean b = false;
  String c = null;
  long d = 0L;
  WifiInfo e = null;
  boolean f = true;
  int g = 12;
  private fx h = null;
  private fw i = null;
  private a j = null;
  private fz k = null;
  private ConnectivityManager l = null;
  private gb m = null;
  private StringBuilder n = new StringBuilder();
  private Inner_3dMap_locationOption o = null;
  private fi p = null;
  private String q = "00:00:00:00:00:00";
  
  public fq(Context paramContext)
  {
    try
    {
      a = paramContext.getApplicationContext();
      gf.b(a);
      a(a);
      o = new Inner_3dMap_locationOption();
      if (h == null)
      {
        paramContext = (WifiManager)gf.a(a, "wifi");
        h = new fx(a, paramContext);
        h.a(b);
      }
      if (i == null) {
        i = new fw(a);
      }
      if (k == null) {
        k = fz.a(a);
      }
      if (l == null) {
        l = ((ConnectivityManager)gf.a(a, "connectivity"));
      }
      m = new gb();
      c();
      return;
    }
    catch (Throwable paramContext)
    {
      gc.a(paramContext, "NetLocation", "<init>");
    }
  }
  
  private static fi a(fi paramFi, String... paramVarArgs)
  {
    if ((paramVarArgs != null) && (paramVarArgs.length != 0))
    {
      if (paramVarArgs[0].equals("shake")) {
        return fl.a().a(paramFi);
      }
      fi localFi = paramFi;
      if (paramVarArgs[0].equals("fusion"))
      {
        fl.a();
        localFi = fl.b(paramFi);
      }
      return localFi;
    }
    return fl.a().a(paramFi);
  }
  
  private void a(Context paramContext)
  {
    try
    {
      if (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") == 0) {
        b = true;
      }
      return;
    }
    catch (Throwable paramContext) {}
  }
  
  private boolean a(long paramLong)
  {
    if (gf.b() - paramLong < 800L)
    {
      paramLong = 0L;
      if (fs.a(p)) {
        paramLong = gf.a() - p.getTime();
      }
      if (paramLong <= 10000L) {
        return true;
      }
    }
    return false;
  }
  
  private void c()
  {
    try
    {
      if (j == null) {
        j = new a((byte)0);
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
      localIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
      a.registerReceiver(j, localIntentFilter);
      h.b(false);
      i.f();
      return;
    }
    catch (Throwable localThrowable)
    {
      gc.a(localThrowable, "NetLocation", "initBroadcastListener");
    }
  }
  
  /* Error */
  private fi d()
    throws java.lang.Exception
  {
    // Byte code:
    //   0: new 185	com/amap/api/mapcore2d/fi
    //   3: dup
    //   4: ldc -37
    //   6: invokespecial 221	com/amap/api/mapcore2d/fi:<init>	(Ljava/lang/String;)V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   15: invokevirtual 224	com/amap/api/mapcore2d/fx:g	()Z
    //   18: ifeq +13 -> 31
    //   21: aload 4
    //   23: bipush 15
    //   25: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   28: aload 4
    //   30: areturn
    //   31: aload_0
    //   32: getfield 59	com/amap/api/mapcore2d/fq:m	Lcom/amap/api/mapcore2d/gb;
    //   35: ifnonnull +14 -> 49
    //   38: aload_0
    //   39: new 130	com/amap/api/mapcore2d/gb
    //   42: dup
    //   43: invokespecial 131	com/amap/api/mapcore2d/gb:<init>	()V
    //   46: putfield 59	com/amap/api/mapcore2d/fq:m	Lcom/amap/api/mapcore2d/gb;
    //   49: aload_0
    //   50: getfield 59	com/amap/api/mapcore2d/fq:m	Lcom/amap/api/mapcore2d/gb;
    //   53: aload_0
    //   54: getfield 47	com/amap/api/mapcore2d/fq:a	Landroid/content/Context;
    //   57: aload_0
    //   58: getfield 68	com/amap/api/mapcore2d/fq:o	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   61: invokevirtual 231	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:isNeedAddress	()Z
    //   64: aload_0
    //   65: getfield 68	com/amap/api/mapcore2d/fq:o	Lcom/autonavi/amap/mapcore2d/Inner_3dMap_locationOption;
    //   68: invokevirtual 234	com/autonavi/amap/mapcore2d/Inner_3dMap_locationOption:isOffset	()Z
    //   71: aload_0
    //   72: getfield 51	com/amap/api/mapcore2d/fq:i	Lcom/amap/api/mapcore2d/fw;
    //   75: aload_0
    //   76: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   79: aload_0
    //   80: getfield 57	com/amap/api/mapcore2d/fq:l	Landroid/net/ConnectivityManager;
    //   83: aload_0
    //   84: getfield 82	com/amap/api/mapcore2d/fq:q	Ljava/lang/String;
    //   87: aload_0
    //   88: getfield 70	com/amap/api/mapcore2d/fq:c	Ljava/lang/String;
    //   91: invokevirtual 237	com/amap/api/mapcore2d/gb:a	(Landroid/content/Context;ZZLcom/amap/api/mapcore2d/fw;Lcom/amap/api/mapcore2d/fx;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    //   94: new 239	com/amap/api/mapcore2d/fr
    //   97: dup
    //   98: invokespecial 240	com/amap/api/mapcore2d/fr:<init>	()V
    //   101: astore_3
    //   102: aconst_null
    //   103: astore_2
    //   104: ldc -37
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 59	com/amap/api/mapcore2d/fq:m	Lcom/amap/api/mapcore2d/gb;
    //   111: invokevirtual 243	com/amap/api/mapcore2d/gb:a	()[B
    //   114: astore 5
    //   116: aload_0
    //   117: getfield 55	com/amap/api/mapcore2d/fq:k	Lcom/amap/api/mapcore2d/fz;
    //   120: aload_0
    //   121: getfield 47	com/amap/api/mapcore2d/fq:a	Landroid/content/Context;
    //   124: aload 5
    //   126: invokestatic 246	com/amap/api/mapcore2d/gc:a	()Ljava/lang/String;
    //   129: invokevirtual 249	com/amap/api/mapcore2d/fz:a	(Landroid/content/Context;[BLjava/lang/String;)Lcom/amap/api/mapcore2d/ga;
    //   132: astore 5
    //   134: aload_0
    //   135: getfield 55	com/amap/api/mapcore2d/fq:k	Lcom/amap/api/mapcore2d/fz;
    //   138: aload 5
    //   140: invokevirtual 252	com/amap/api/mapcore2d/fz:a	(Lcom/amap/api/mapcore2d/ga;)Lcom/amap/api/mapcore2d/ex;
    //   143: astore 5
    //   145: aload 5
    //   147: ifnull +15 -> 162
    //   150: aload 5
    //   152: getfield 257	com/amap/api/mapcore2d/ex:a	[B
    //   155: astore_2
    //   156: aload 5
    //   158: getfield 258	com/amap/api/mapcore2d/ex:c	Ljava/lang/String;
    //   161: astore_1
    //   162: aload_2
    //   163: ifnull +716 -> 879
    //   166: aload_2
    //   167: arraylength
    //   168: ifne +6 -> 174
    //   171: goto +708 -> 879
    //   174: new 147	java/lang/String
    //   177: dup
    //   178: aload_2
    //   179: ldc_w 260
    //   182: invokespecial 263	java/lang/String:<init>	([BLjava/lang/String;)V
    //   185: astore 6
    //   187: aload 6
    //   189: ldc_w 265
    //   192: invokevirtual 269	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   195: ifeq +16 -> 211
    //   198: aload_3
    //   199: aload 6
    //   201: aload_0
    //   202: getfield 47	com/amap/api/mapcore2d/fq:a	Landroid/content/Context;
    //   205: aload 5
    //   207: invokevirtual 272	com/amap/api/mapcore2d/fr:a	(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore2d/ex;)Lcom/amap/api/mapcore2d/fi;
    //   210: areturn
    //   211: aload 6
    //   213: ldc_w 274
    //   216: invokevirtual 269	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   219: ifeq +110 -> 329
    //   222: aload 4
    //   224: iconst_5
    //   225: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   228: aload_0
    //   229: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   232: ifnull +29 -> 261
    //   235: aload_0
    //   236: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   239: aload_0
    //   240: getfield 57	com/amap/api/mapcore2d/fq:l	Landroid/net/ConnectivityManager;
    //   243: invokevirtual 277	com/amap/api/mapcore2d/fx:a	(Landroid/net/ConnectivityManager;)Z
    //   246: ifeq +15 -> 261
    //   249: aload_0
    //   250: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   253: astore_2
    //   254: ldc_w 279
    //   257: astore_3
    //   258: goto +12 -> 270
    //   261: aload_0
    //   262: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   265: astore_2
    //   266: ldc_w 281
    //   269: astore_3
    //   270: aload_2
    //   271: aload_3
    //   272: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: aload_1
    //   277: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   280: ifne +34 -> 314
    //   283: aload_0
    //   284: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   287: astore_2
    //   288: new 63	java/lang/StringBuilder
    //   291: dup
    //   292: ldc_w 292
    //   295: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: astore_3
    //   299: aload_3
    //   300: aload_1
    //   301: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: pop
    //   305: aload_2
    //   306: aload_3
    //   307: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: pop
    //   314: aload 4
    //   316: aload_0
    //   317: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   320: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   323: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   326: aload 4
    //   328: areturn
    //   329: aload_2
    //   330: invokestatic 304	com/amap/api/mapcore2d/fy:a	([B)[B
    //   333: astore_2
    //   334: aload_2
    //   335: ifnonnull +73 -> 408
    //   338: aload 4
    //   340: iconst_5
    //   341: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   344: aload_0
    //   345: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   348: ldc_w 306
    //   351: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: pop
    //   355: aload_1
    //   356: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   359: ifne +34 -> 393
    //   362: aload_0
    //   363: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   366: astore_2
    //   367: new 63	java/lang/StringBuilder
    //   370: dup
    //   371: ldc_w 292
    //   374: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   377: astore_3
    //   378: aload_3
    //   379: aload_1
    //   380: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: pop
    //   384: aload_2
    //   385: aload_3
    //   386: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: pop
    //   393: aload 4
    //   395: aload_0
    //   396: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   399: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   405: aload 4
    //   407: areturn
    //   408: aload_3
    //   409: aload_2
    //   410: invokevirtual 309	com/amap/api/mapcore2d/fr:a	([B)Lcom/amap/api/mapcore2d/fi;
    //   413: astore_3
    //   414: aload_3
    //   415: ifnonnull +83 -> 498
    //   418: new 185	com/amap/api/mapcore2d/fi
    //   421: dup
    //   422: ldc -37
    //   424: invokespecial 221	com/amap/api/mapcore2d/fi:<init>	(Ljava/lang/String;)V
    //   427: astore_2
    //   428: aload_2
    //   429: iconst_5
    //   430: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   433: aload_0
    //   434: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   437: ldc_w 311
    //   440: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: pop
    //   444: aload_1
    //   445: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   448: ifne +37 -> 485
    //   451: aload_0
    //   452: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   455: astore_3
    //   456: new 63	java/lang/StringBuilder
    //   459: dup
    //   460: ldc_w 292
    //   463: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   466: astore 4
    //   468: aload 4
    //   470: aload_1
    //   471: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: pop
    //   475: aload_3
    //   476: aload 4
    //   478: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   481: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: pop
    //   485: aload_2
    //   486: aload_0
    //   487: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   490: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   496: aload_2
    //   497: areturn
    //   498: aload_0
    //   499: aload_3
    //   500: invokevirtual 312	com/amap/api/mapcore2d/fi:a	()Ljava/lang/String;
    //   503: putfield 70	com/amap/api/mapcore2d/fq:c	Ljava/lang/String;
    //   506: aload_3
    //   507: invokevirtual 316	com/amap/api/mapcore2d/fi:getErrorCode	()I
    //   510: ifeq +51 -> 561
    //   513: aload_1
    //   514: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   517: ifne +42 -> 559
    //   520: new 63	java/lang/StringBuilder
    //   523: dup
    //   524: invokespecial 64	java/lang/StringBuilder:<init>	()V
    //   527: astore_2
    //   528: aload_2
    //   529: aload_3
    //   530: invokevirtual 319	com/amap/api/mapcore2d/fi:getLocationDetail	()Ljava/lang/String;
    //   533: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: pop
    //   537: aload_2
    //   538: ldc_w 292
    //   541: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: pop
    //   545: aload_2
    //   546: aload_1
    //   547: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   550: pop
    //   551: aload_3
    //   552: aload_2
    //   553: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   556: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   559: aload_3
    //   560: areturn
    //   561: aload_3
    //   562: invokestatic 181	com/amap/api/mapcore2d/fs:a	(Lcom/amap/api/mapcore2d/fi;)Z
    //   565: ifeq +183 -> 748
    //   568: aload_3
    //   569: invokevirtual 322	com/amap/api/mapcore2d/fi:e	()Lorg/json/JSONObject;
    //   572: pop
    //   573: aload_3
    //   574: invokevirtual 316	com/amap/api/mapcore2d/fi:getErrorCode	()I
    //   577: ifne +169 -> 746
    //   580: aload_3
    //   581: invokevirtual 325	com/amap/api/mapcore2d/fi:getLocationType	()I
    //   584: ifne +162 -> 746
    //   587: ldc_w 327
    //   590: aload_3
    //   591: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   594: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   597: ifne +80 -> 677
    //   600: ldc_w 331
    //   603: aload_3
    //   604: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   607: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   610: ifne +67 -> 677
    //   613: ldc_w 333
    //   616: aload_3
    //   617: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   620: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   623: ifne +54 -> 677
    //   626: ldc_w 335
    //   629: aload_3
    //   630: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   633: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   636: ifne +41 -> 677
    //   639: ldc_w 337
    //   642: aload_3
    //   643: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   646: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   649: ifne +28 -> 677
    //   652: ldc_w 339
    //   655: aload_3
    //   656: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   659: invokevirtual 151	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   662: ifeq +6 -> 668
    //   665: goto +12 -> 677
    //   668: aload_3
    //   669: bipush 6
    //   671: invokevirtual 342	com/amap/api/mapcore2d/fi:setLocationType	(I)V
    //   674: goto +8 -> 682
    //   677: aload_3
    //   678: iconst_5
    //   679: invokevirtual 342	com/amap/api/mapcore2d/fi:setLocationType	(I)V
    //   682: aload_0
    //   683: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   686: aload_3
    //   687: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   690: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   693: pop
    //   694: aload_1
    //   695: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   698: ifne +37 -> 735
    //   701: aload_0
    //   702: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   705: astore_2
    //   706: new 63	java/lang/StringBuilder
    //   709: dup
    //   710: ldc_w 292
    //   713: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   716: astore 4
    //   718: aload 4
    //   720: aload_1
    //   721: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   724: pop
    //   725: aload_2
    //   726: aload 4
    //   728: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   731: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   734: pop
    //   735: aload_3
    //   736: aload_0
    //   737: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   740: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   743: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   746: aload_3
    //   747: areturn
    //   748: aload_3
    //   749: invokevirtual 344	com/amap/api/mapcore2d/fi:b	()Ljava/lang/String;
    //   752: astore_2
    //   753: aload_3
    //   754: bipush 6
    //   756: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   759: aload_0
    //   760: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   763: astore 4
    //   765: new 63	java/lang/StringBuilder
    //   768: dup
    //   769: ldc_w 346
    //   772: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   775: astore 5
    //   777: aload 5
    //   779: aload_3
    //   780: invokevirtual 329	com/amap/api/mapcore2d/fi:d	()Ljava/lang/String;
    //   783: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: pop
    //   787: aload 5
    //   789: ldc_w 348
    //   792: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   795: pop
    //   796: aload_2
    //   797: ifnull +6 -> 803
    //   800: goto +7 -> 807
    //   803: ldc_w 350
    //   806: astore_2
    //   807: aload 5
    //   809: aload_2
    //   810: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   813: pop
    //   814: aload 4
    //   816: aload 5
    //   818: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   821: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   824: pop
    //   825: aload_1
    //   826: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   829: ifne +37 -> 866
    //   832: aload_0
    //   833: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   836: astore_2
    //   837: new 63	java/lang/StringBuilder
    //   840: dup
    //   841: ldc_w 292
    //   844: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   847: astore 4
    //   849: aload 4
    //   851: aload_1
    //   852: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: pop
    //   856: aload_2
    //   857: aload 4
    //   859: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   862: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: pop
    //   866: aload_3
    //   867: aload_0
    //   868: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   871: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   874: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   877: aload_3
    //   878: areturn
    //   879: aload 4
    //   881: iconst_4
    //   882: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   885: aload_0
    //   886: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   889: ldc_w 352
    //   892: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: pop
    //   896: aload_1
    //   897: invokestatic 290	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   900: ifne +34 -> 934
    //   903: aload_0
    //   904: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   907: astore_2
    //   908: new 63	java/lang/StringBuilder
    //   911: dup
    //   912: ldc_w 292
    //   915: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   918: astore_3
    //   919: aload_3
    //   920: aload_1
    //   921: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   924: pop
    //   925: aload_2
    //   926: aload_3
    //   927: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   930: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   933: pop
    //   934: aload 4
    //   936: aload_0
    //   937: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   940: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   943: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   946: aload 4
    //   948: areturn
    //   949: astore_1
    //   950: aload_1
    //   951: ldc -121
    //   953: ldc_w 354
    //   956: invokestatic 141	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   959: aload 4
    //   961: iconst_4
    //   962: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   965: aload_0
    //   966: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   969: ldc_w 352
    //   972: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   975: pop
    //   976: aload 4
    //   978: aload_0
    //   979: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   982: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   985: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   988: aload 4
    //   990: areturn
    //   991: astore_1
    //   992: aload_1
    //   993: ldc -121
    //   995: ldc_w 356
    //   998: invokestatic 141	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   1001: aload 4
    //   1003: iconst_3
    //   1004: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   1007: aload_0
    //   1008: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   1011: astore_2
    //   1012: new 63	java/lang/StringBuilder
    //   1015: dup
    //   1016: ldc_w 358
    //   1019: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1022: astore_3
    //   1023: aload_3
    //   1024: aload_1
    //   1025: invokevirtual 361	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1028: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1031: pop
    //   1032: aload_2
    //   1033: aload_3
    //   1034: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1037: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1040: pop
    //   1041: aload 4
    //   1043: aload_0
    //   1044: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   1047: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1050: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   1053: aload 4
    //   1055: areturn
    //   1056: astore_1
    //   1057: aload_1
    //   1058: ldc -121
    //   1060: ldc_w 363
    //   1063: invokestatic 141	com/amap/api/mapcore2d/gc:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   1066: aload_0
    //   1067: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   1070: astore_2
    //   1071: new 63	java/lang/StringBuilder
    //   1074: dup
    //   1075: ldc_w 365
    //   1078: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1081: astore_3
    //   1082: aload_3
    //   1083: aload_1
    //   1084: invokevirtual 361	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1087: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1090: pop
    //   1091: aload_2
    //   1092: aload_3
    //   1093: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1096: invokevirtual 285	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1099: pop
    //   1100: aload 4
    //   1102: iconst_3
    //   1103: invokevirtual 228	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   1106: aload 4
    //   1108: aload_0
    //   1109: getfield 66	com/amap/api/mapcore2d/fq:n	Ljava/lang/StringBuilder;
    //   1112: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1115: invokevirtual 299	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   1118: aload 4
    //   1120: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1121	0	this	fq
    //   106	815	1	str1	String
    //   949	2	1	localThrowable1	Throwable
    //   991	34	1	localThrowable2	Throwable
    //   1056	28	1	localThrowable3	Throwable
    //   103	989	2	localObject1	Object
    //   101	992	3	localObject2	Object
    //   9	1110	4	localObject3	Object
    //   114	703	5	localObject4	Object
    //   185	27	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   116	145	949	java/lang/Throwable
    //   150	162	949	java/lang/Throwable
    //   107	116	991	java/lang/Throwable
    //   31	49	1056	java/lang/Throwable
    //   49	94	1056	java/lang/Throwable
  }
  
  public final Inner_3dMap_location a()
  {
    if (n.length() > 0) {
      n.delete(0, n.length());
    }
    if ((a(d)) && (fs.a(p))) {
      return p;
    }
    d = gf.b();
    if (a == null)
    {
      n.append("context is null");
      Inner_3dMap_location localInner_3dMap_location = new Inner_3dMap_location("");
      localInner_3dMap_location.setErrorCode(1);
      localInner_3dMap_location.setLocationDetail(n.toString());
      return localInner_3dMap_location;
    }
    try
    {
      i.f();
    }
    catch (Throwable localThrowable1)
    {
      gc.a(localThrowable1, "NetLocation", "getLocation getCgiListParam");
    }
    try
    {
      h.b(true);
    }
    catch (Throwable localThrowable2)
    {
      gc.a(localThrowable2, "NetLocation", "getLocation getScanResultsParam");
    }
    try
    {
      p = d();
      p = a(p, new String[0]);
    }
    catch (Throwable localThrowable3)
    {
      gc.a(localThrowable3, "NetLocation", "getLocation getScanResultsParam");
    }
    return p;
  }
  
  public final void a(Inner_3dMap_locationOption paramInner_3dMap_locationOption)
  {
    o = paramInner_3dMap_locationOption;
    if (o == null) {
      o = new Inner_3dMap_locationOption();
    }
    try
    {
      paramInner_3dMap_locationOption = h;
      o.isWifiActiveScan();
      paramInner_3dMap_locationOption.c(o.isWifiScan());
    }
    catch (Throwable paramInner_3dMap_locationOption)
    {
      for (;;)
      {
        try
        {
          k.a(o.getHttpTimeOut(), o.getLocationProtocol().equals(Inner_3dMap_locationOption.Inner_3dMap_Enum_LocationProtocol.HTTPS));
          return;
        }
        catch (Throwable paramInner_3dMap_locationOption) {}
        paramInner_3dMap_locationOption = paramInner_3dMap_locationOption;
      }
    }
  }
  
  /* Error */
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 61	com/amap/api/mapcore2d/fq:b	Z
    //   5: aload_0
    //   6: aconst_null
    //   7: putfield 70	com/amap/api/mapcore2d/fq:c	Ljava/lang/String;
    //   10: aload_0
    //   11: getfield 47	com/amap/api/mapcore2d/fq:a	Landroid/content/Context;
    //   14: ifnull +21 -> 35
    //   17: aload_0
    //   18: getfield 53	com/amap/api/mapcore2d/fq:j	Lcom/amap/api/mapcore2d/fq$a;
    //   21: ifnull +14 -> 35
    //   24: aload_0
    //   25: getfield 47	com/amap/api/mapcore2d/fq:a	Landroid/content/Context;
    //   28: aload_0
    //   29: getfield 53	com/amap/api/mapcore2d/fq:j	Lcom/amap/api/mapcore2d/fq$a;
    //   32: invokevirtual 421	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   35: aload_0
    //   36: getfield 51	com/amap/api/mapcore2d/fq:i	Lcom/amap/api/mapcore2d/fw;
    //   39: ifnull +10 -> 49
    //   42: aload_0
    //   43: getfield 51	com/amap/api/mapcore2d/fq:i	Lcom/amap/api/mapcore2d/fw;
    //   46: invokevirtual 423	com/amap/api/mapcore2d/fw:g	()V
    //   49: aload_0
    //   50: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   53: ifnull +10 -> 63
    //   56: aload_0
    //   57: getfield 49	com/amap/api/mapcore2d/fq:h	Lcom/amap/api/mapcore2d/fx;
    //   60: invokevirtual 425	com/amap/api/mapcore2d/fx:h	()V
    //   63: aload_0
    //   64: aconst_null
    //   65: putfield 53	com/amap/api/mapcore2d/fq:j	Lcom/amap/api/mapcore2d/fq$a;
    //   68: return
    //   69: astore_1
    //   70: aload_0
    //   71: aconst_null
    //   72: putfield 53	com/amap/api/mapcore2d/fq:j	Lcom/amap/api/mapcore2d/fq$a;
    //   75: aload_1
    //   76: athrow
    //   77: aload_0
    //   78: aconst_null
    //   79: putfield 53	com/amap/api/mapcore2d/fq:j	Lcom/amap/api/mapcore2d/fq$a;
    //   82: return
    //   83: astore_1
    //   84: goto -7 -> 77
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	fq
    //   69	7	1	localObject	Object
    //   83	1	1	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   10	35	69	finally
    //   35	49	69	finally
    //   49	63	69	finally
    //   10	35	83	java/lang/Throwable
    //   35	49	83	java/lang/Throwable
    //   49	63	83	java/lang/Throwable
  }
  
  private final class a
    extends BroadcastReceiver
  {
    private a() {}
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramContext != null)
      {
        if (paramIntent == null) {
          return;
        }
        try
        {
          paramContext = paramIntent.getAction();
          if (TextUtils.isEmpty(paramContext)) {
            return;
          }
          if (paramContext.equals("android.net.wifi.SCAN_RESULTS"))
          {
            if (fq.a(fq.this) != null) {
              fq.a(fq.this).c();
            }
          }
          else if ((paramContext.equals("android.net.wifi.WIFI_STATE_CHANGED")) && (fq.a(fq.this) != null)) {
            fq.a(fq.this).d();
          }
          return;
        }
        catch (Throwable paramContext)
        {
          gc.a(paramContext, "NetLocation", "onReceive");
        }
      }
    }
  }
}
