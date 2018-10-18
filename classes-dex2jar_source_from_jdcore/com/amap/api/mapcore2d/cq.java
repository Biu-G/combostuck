package com.amap.api.mapcore2d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class cq
{
  public static int a = -1;
  public static String b = "";
  
  /* Error */
  public static a a(Context paramContext, cy paramCy, String paramString, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: new 6	com/amap/api/mapcore2d/cq$a
    //   3: dup
    //   4: invokespecial 38	com/amap/api/mapcore2d/cq$a:<init>	()V
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 7
    //   12: new 40	com/amap/api/mapcore2d/ep
    //   15: dup
    //   16: invokespecial 41	com/amap/api/mapcore2d/ep:<init>	()V
    //   19: astore 6
    //   21: new 20	com/amap/api/mapcore2d/cq$b
    //   24: dup
    //   25: aload_0
    //   26: aload_1
    //   27: aload_2
    //   28: aload_3
    //   29: invokespecial 44	com/amap/api/mapcore2d/cq$b:<init>	(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/util/Map;)V
    //   32: astore_2
    //   33: aload 6
    //   35: aload_2
    //   36: aload_2
    //   37: invokevirtual 47	com/amap/api/mapcore2d/cq$b:a	()Z
    //   40: invokevirtual 50	com/amap/api/mapcore2d/ep:a	(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;
    //   43: astore_3
    //   44: aload_3
    //   45: ifnull +34 -> 79
    //   48: aload_3
    //   49: getfield 55	com/amap/api/mapcore2d/ex:a	[B
    //   52: astore_2
    //   53: goto +28 -> 81
    //   56: astore 6
    //   58: aconst_null
    //   59: astore_2
    //   60: goto +142 -> 202
    //   63: aconst_null
    //   64: astore_2
    //   65: aload 7
    //   67: astore 6
    //   69: goto +188 -> 257
    //   72: astore 6
    //   74: aconst_null
    //   75: astore_2
    //   76: goto +159 -> 235
    //   79: aconst_null
    //   80: astore_2
    //   81: bipush 16
    //   83: newarray byte
    //   85: astore 9
    //   87: aload_2
    //   88: arraylength
    //   89: bipush 16
    //   91: isub
    //   92: newarray byte
    //   94: astore 6
    //   96: aload_2
    //   97: iconst_0
    //   98: aload 9
    //   100: iconst_0
    //   101: bipush 16
    //   103: invokestatic 61	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   106: aload_2
    //   107: bipush 16
    //   109: aload 6
    //   111: iconst_0
    //   112: aload_2
    //   113: arraylength
    //   114: bipush 16
    //   116: isub
    //   117: invokestatic 61	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   120: new 63	javax/crypto/spec/SecretKeySpec
    //   123: dup
    //   124: aload 9
    //   126: ldc 65
    //   128: invokespecial 68	javax/crypto/spec/SecretKeySpec:<init>	([BLjava/lang/String;)V
    //   131: astore 9
    //   133: ldc 70
    //   135: invokestatic 76	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   138: astore 10
    //   140: aload 10
    //   142: iconst_2
    //   143: aload 9
    //   145: new 78	javax/crypto/spec/IvParameterSpec
    //   148: dup
    //   149: invokestatic 83	com/amap/api/mapcore2d/cz:b	()[B
    //   152: invokespecial 86	javax/crypto/spec/IvParameterSpec:<init>	([B)V
    //   155: invokevirtual 90	javax/crypto/Cipher:init	(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    //   158: aload 10
    //   160: aload 6
    //   162: invokevirtual 94	javax/crypto/Cipher:doFinal	([B)[B
    //   165: invokestatic 97	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   168: astore 6
    //   170: goto +87 -> 257
    //   173: astore 6
    //   175: goto +27 -> 202
    //   178: astore 6
    //   180: goto +55 -> 235
    //   183: new 31	com/amap/api/mapcore2d/co
    //   186: dup
    //   187: ldc 99
    //   189: invokespecial 102	com/amap/api/mapcore2d/co:<init>	(Ljava/lang/String;)V
    //   192: athrow
    //   193: astore_2
    //   194: aload_2
    //   195: athrow
    //   196: astore 6
    //   198: aconst_null
    //   199: astore_3
    //   200: aload_3
    //   201: astore_2
    //   202: aload 6
    //   204: ldc 104
    //   206: ldc 106
    //   208: invokestatic 111	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   211: aload 7
    //   213: astore 6
    //   215: goto +42 -> 257
    //   218: aconst_null
    //   219: astore_3
    //   220: aload_3
    //   221: astore_2
    //   222: aload 7
    //   224: astore 6
    //   226: goto +31 -> 257
    //   229: astore 6
    //   231: aconst_null
    //   232: astore_3
    //   233: aload_3
    //   234: astore_2
    //   235: aload 8
    //   237: aload 6
    //   239: invokevirtual 114	com/amap/api/mapcore2d/co:a	()Ljava/lang/String;
    //   242: putfield 116	com/amap/api/mapcore2d/cq$a:a	Ljava/lang/String;
    //   245: aload_1
    //   246: ldc 118
    //   248: aload 6
    //   250: invokestatic 123	com/amap/api/mapcore2d/dg:a	(Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Lcom/amap/api/mapcore2d/co;)V
    //   253: aload 7
    //   255: astore 6
    //   257: aload_2
    //   258: ifnonnull +6 -> 264
    //   261: aload 8
    //   263: areturn
    //   264: aload 6
    //   266: astore 7
    //   268: aload 6
    //   270: invokestatic 129	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   273: ifeq +9 -> 282
    //   276: aload_2
    //   277: invokestatic 97	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   280: astore 7
    //   282: new 131	org/json/JSONObject
    //   285: dup
    //   286: aload 7
    //   288: invokespecial 132	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   291: astore 7
    //   293: aload 7
    //   295: ldc -122
    //   297: invokevirtual 138	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   300: ifeq +887 -> 1187
    //   303: aload 7
    //   305: ldc -122
    //   307: invokevirtual 142	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   310: istore 4
    //   312: iload 4
    //   314: iconst_1
    //   315: if_icmpne +10 -> 325
    //   318: iconst_1
    //   319: putstatic 144	com/amap/api/mapcore2d/cq:a	I
    //   322: goto +112 -> 434
    //   325: iload 4
    //   327: ifne +107 -> 434
    //   330: ldc -110
    //   332: astore 6
    //   334: ldc -108
    //   336: astore_2
    //   337: aload_3
    //   338: ifnull +14 -> 352
    //   341: aload_3
    //   342: getfield 150	com/amap/api/mapcore2d/ex:c	Ljava/lang/String;
    //   345: astore 6
    //   347: aload_3
    //   348: getfield 152	com/amap/api/mapcore2d/ex:d	Ljava/lang/String;
    //   351: astore_2
    //   352: aload_0
    //   353: aload 6
    //   355: aload_2
    //   356: aload 7
    //   358: invokestatic 155	com/amap/api/mapcore2d/cz:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    //   361: iconst_0
    //   362: putstatic 144	com/amap/api/mapcore2d/cq:a	I
    //   365: aload 7
    //   367: ldc -99
    //   369: invokevirtual 138	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   372: ifeq +13 -> 385
    //   375: aload 7
    //   377: ldc -99
    //   379: invokevirtual 161	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   382: putstatic 163	com/amap/api/mapcore2d/cq:b	Ljava/lang/String;
    //   385: ldc 25
    //   387: astore_0
    //   388: aload 7
    //   390: ldc -91
    //   392: invokevirtual 138	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   395: ifeq +11 -> 406
    //   398: aload 7
    //   400: ldc -91
    //   402: invokevirtual 161	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   405: astore_0
    //   406: aload_1
    //   407: ldc 118
    //   409: getstatic 163	com/amap/api/mapcore2d/cq:b	Ljava/lang/String;
    //   412: aload_2
    //   413: aload_0
    //   414: invokestatic 168	com/amap/api/mapcore2d/dg:a	(Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   417: getstatic 144	com/amap/api/mapcore2d/cq:a	I
    //   420: ifne +14 -> 434
    //   423: aload 8
    //   425: getstatic 163	com/amap/api/mapcore2d/cq:b	Ljava/lang/String;
    //   428: putfield 116	com/amap/api/mapcore2d/cq$a:a	Ljava/lang/String;
    //   431: aload 8
    //   433: areturn
    //   434: aload 7
    //   436: ldc -86
    //   438: invokevirtual 138	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   441: ifeq +27 -> 468
    //   444: aload 8
    //   446: aload 7
    //   448: ldc -86
    //   450: invokevirtual 142	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   453: putfield 172	com/amap/api/mapcore2d/cq$a:b	I
    //   456: goto +12 -> 468
    //   459: astore_0
    //   460: aload_0
    //   461: ldc -82
    //   463: ldc -80
    //   465: invokestatic 111	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   468: aload 7
    //   470: ldc -78
    //   472: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   475: ifeq +700 -> 1175
    //   478: new 9	com/amap/api/mapcore2d/cq$a$a
    //   481: dup
    //   482: invokespecial 182	com/amap/api/mapcore2d/cq$a$a:<init>	()V
    //   485: astore_1
    //   486: aload_1
    //   487: iconst_0
    //   488: putfield 185	com/amap/api/mapcore2d/cq$a$a:a	Z
    //   491: aload_1
    //   492: iconst_0
    //   493: putfield 187	com/amap/api/mapcore2d/cq$a$a:b	Z
    //   496: aload 8
    //   498: aload_1
    //   499: putfield 191	com/amap/api/mapcore2d/cq$a:u	Lcom/amap/api/mapcore2d/cq$a$a;
    //   502: aload 7
    //   504: ldc -78
    //   506: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   509: astore_0
    //   510: aload_0
    //   511: ldc -59
    //   513: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   516: istore 5
    //   518: iload 5
    //   520: ifeq +55 -> 575
    //   523: aload_0
    //   524: ldc -59
    //   526: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   529: astore_2
    //   530: aload_1
    //   531: aload_2
    //   532: ldc -57
    //   534: invokevirtual 161	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   537: iconst_0
    //   538: invokestatic 202	com/amap/api/mapcore2d/cq:a	(Ljava/lang/String;Z)Z
    //   541: putfield 185	com/amap/api/mapcore2d/cq$a$a:a	Z
    //   544: aload_2
    //   545: ldc -52
    //   547: invokevirtual 138	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   550: ifeq +25 -> 575
    //   553: aload_1
    //   554: aload_2
    //   555: ldc -52
    //   557: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   560: putfield 207	com/amap/api/mapcore2d/cq$a$a:c	Lorg/json/JSONObject;
    //   563: goto +12 -> 575
    //   566: astore_1
    //   567: aload_1
    //   568: ldc -82
    //   570: ldc -47
    //   572: invokestatic 111	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   575: aload_0
    //   576: ldc -45
    //   578: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   581: ifeq +14 -> 595
    //   584: aload 8
    //   586: aload_0
    //   587: ldc -45
    //   589: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   592: putfield 214	com/amap/api/mapcore2d/cq$a:h	Lorg/json/JSONObject;
    //   595: aload_0
    //   596: ldc -40
    //   598: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   601: ifeq +14 -> 615
    //   604: aload 8
    //   606: aload_0
    //   607: ldc -40
    //   609: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   612: putfield 219	com/amap/api/mapcore2d/cq$a:k	Lorg/json/JSONObject;
    //   615: aload_0
    //   616: ldc -35
    //   618: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   621: ifeq +14 -> 635
    //   624: aload 8
    //   626: aload_0
    //   627: ldc -35
    //   629: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   632: putfield 224	com/amap/api/mapcore2d/cq$a:l	Lorg/json/JSONObject;
    //   635: aload_0
    //   636: ldc -30
    //   638: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   641: ifeq +14 -> 655
    //   644: aload 8
    //   646: aload_0
    //   647: ldc -30
    //   649: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   652: putfield 229	com/amap/api/mapcore2d/cq$a:m	Lorg/json/JSONObject;
    //   655: aload_0
    //   656: ldc -25
    //   658: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   661: ifeq +14 -> 675
    //   664: aload 8
    //   666: aload_0
    //   667: ldc -25
    //   669: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   672: putfield 234	com/amap/api/mapcore2d/cq$a:n	Lorg/json/JSONObject;
    //   675: aload_0
    //   676: ldc -20
    //   678: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   681: ifeq +14 -> 695
    //   684: aload 8
    //   686: aload_0
    //   687: ldc -20
    //   689: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   692: putfield 239	com/amap/api/mapcore2d/cq$a:o	Lorg/json/JSONObject;
    //   695: aload_0
    //   696: ldc -15
    //   698: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   701: ifeq +14 -> 715
    //   704: aload 8
    //   706: aload_0
    //   707: ldc -15
    //   709: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   712: putfield 244	com/amap/api/mapcore2d/cq$a:q	Lorg/json/JSONObject;
    //   715: aload_0
    //   716: ldc -10
    //   718: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   721: ifeq +14 -> 735
    //   724: aload 8
    //   726: aload_0
    //   727: ldc -10
    //   729: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   732: putfield 249	com/amap/api/mapcore2d/cq$a:i	Lorg/json/JSONObject;
    //   735: aload_0
    //   736: ldc -5
    //   738: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   741: ifeq +14 -> 755
    //   744: aload 8
    //   746: aload_0
    //   747: ldc -5
    //   749: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   752: putfield 254	com/amap/api/mapcore2d/cq$a:p	Lorg/json/JSONObject;
    //   755: aload_0
    //   756: ldc_w 256
    //   759: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   762: ifeq +30 -> 792
    //   765: aload_0
    //   766: ldc_w 256
    //   769: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   772: astore_1
    //   773: new 17	com/amap/api/mapcore2d/cq$a$d
    //   776: dup
    //   777: invokespecial 257	com/amap/api/mapcore2d/cq$a$d:<init>	()V
    //   780: astore_2
    //   781: aload_1
    //   782: aload_2
    //   783: invokestatic 260	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$d;)V
    //   786: aload 8
    //   788: aload_2
    //   789: putfield 264	com/amap/api/mapcore2d/cq$a:v	Lcom/amap/api/mapcore2d/cq$a$d;
    //   792: aload_0
    //   793: ldc_w 266
    //   796: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   799: ifeq +30 -> 829
    //   802: aload_0
    //   803: ldc_w 266
    //   806: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   809: astore_1
    //   810: new 14	com/amap/api/mapcore2d/cq$a$c
    //   813: dup
    //   814: invokespecial 267	com/amap/api/mapcore2d/cq$a$c:<init>	()V
    //   817: astore_2
    //   818: aload_1
    //   819: aload_2
    //   820: invokestatic 270	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$c;)V
    //   823: aload 8
    //   825: aload_2
    //   826: putfield 274	com/amap/api/mapcore2d/cq$a:w	Lcom/amap/api/mapcore2d/cq$a$c;
    //   829: aload_0
    //   830: ldc_w 276
    //   833: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   836: ifeq +15 -> 851
    //   839: aload 8
    //   841: aload_0
    //   842: ldc_w 276
    //   845: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   848: putfield 279	com/amap/api/mapcore2d/cq$a:r	Lorg/json/JSONObject;
    //   851: aload_0
    //   852: ldc_w 281
    //   855: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   858: ifeq +15 -> 873
    //   861: aload 8
    //   863: aload_0
    //   864: ldc_w 281
    //   867: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   870: putfield 284	com/amap/api/mapcore2d/cq$a:s	Lorg/json/JSONObject;
    //   873: aload_0
    //   874: ldc_w 286
    //   877: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   880: ifeq +30 -> 910
    //   883: aload_0
    //   884: ldc_w 286
    //   887: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   890: astore_1
    //   891: new 11	com/amap/api/mapcore2d/cq$a$b
    //   894: dup
    //   895: invokespecial 287	com/amap/api/mapcore2d/cq$a$b:<init>	()V
    //   898: astore_2
    //   899: aload_1
    //   900: aload_2
    //   901: invokestatic 290	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V
    //   904: aload 8
    //   906: aload_2
    //   907: putfield 294	com/amap/api/mapcore2d/cq$a:x	Lcom/amap/api/mapcore2d/cq$a$b;
    //   910: aload_0
    //   911: ldc_w 296
    //   914: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   917: ifeq +15 -> 932
    //   920: aload 8
    //   922: aload_0
    //   923: ldc_w 296
    //   926: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   929: putfield 299	com/amap/api/mapcore2d/cq$a:j	Lorg/json/JSONObject;
    //   932: aload_0
    //   933: ldc_w 301
    //   936: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   939: ifeq +15 -> 954
    //   942: aload 8
    //   944: aload_0
    //   945: ldc_w 301
    //   948: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   951: putfield 304	com/amap/api/mapcore2d/cq$a:g	Lorg/json/JSONObject;
    //   954: aload_0
    //   955: ldc_w 306
    //   958: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   961: ifeq +30 -> 991
    //   964: aload_0
    //   965: ldc_w 306
    //   968: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   971: astore_1
    //   972: new 11	com/amap/api/mapcore2d/cq$a$b
    //   975: dup
    //   976: invokespecial 287	com/amap/api/mapcore2d/cq$a$b:<init>	()V
    //   979: astore_2
    //   980: aload_1
    //   981: aload_2
    //   982: invokestatic 290	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V
    //   985: aload 8
    //   987: aload_2
    //   988: putfield 309	com/amap/api/mapcore2d/cq$a:y	Lcom/amap/api/mapcore2d/cq$a$b;
    //   991: aload_0
    //   992: ldc_w 311
    //   995: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   998: ifeq +30 -> 1028
    //   1001: aload_0
    //   1002: ldc_w 311
    //   1005: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1008: astore_1
    //   1009: new 11	com/amap/api/mapcore2d/cq$a$b
    //   1012: dup
    //   1013: invokespecial 287	com/amap/api/mapcore2d/cq$a$b:<init>	()V
    //   1016: astore_2
    //   1017: aload_1
    //   1018: aload_2
    //   1019: invokestatic 290	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V
    //   1022: aload 8
    //   1024: aload_2
    //   1025: putfield 314	com/amap/api/mapcore2d/cq$a:z	Lcom/amap/api/mapcore2d/cq$a$b;
    //   1028: aload_0
    //   1029: ldc_w 316
    //   1032: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1035: ifeq +30 -> 1065
    //   1038: aload_0
    //   1039: ldc_w 316
    //   1042: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1045: astore_1
    //   1046: new 11	com/amap/api/mapcore2d/cq$a$b
    //   1049: dup
    //   1050: invokespecial 287	com/amap/api/mapcore2d/cq$a$b:<init>	()V
    //   1053: astore_2
    //   1054: aload_1
    //   1055: aload_2
    //   1056: invokestatic 290	com/amap/api/mapcore2d/cq:a	(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V
    //   1059: aload 8
    //   1061: aload_2
    //   1062: putfield 319	com/amap/api/mapcore2d/cq$a:A	Lcom/amap/api/mapcore2d/cq$a$b;
    //   1065: aload_0
    //   1066: ldc_w 321
    //   1069: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1072: ifeq +15 -> 1087
    //   1075: aload 8
    //   1077: aload_0
    //   1078: ldc_w 321
    //   1081: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1084: putfield 322	com/amap/api/mapcore2d/cq$a:c	Lorg/json/JSONObject;
    //   1087: aload_0
    //   1088: ldc_w 324
    //   1091: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1094: ifeq +15 -> 1109
    //   1097: aload 8
    //   1099: aload_0
    //   1100: ldc_w 324
    //   1103: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1106: putfield 326	com/amap/api/mapcore2d/cq$a:d	Lorg/json/JSONObject;
    //   1109: aload_0
    //   1110: ldc_w 328
    //   1113: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1116: ifeq +15 -> 1131
    //   1119: aload 8
    //   1121: aload_0
    //   1122: ldc_w 328
    //   1125: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1128: putfield 331	com/amap/api/mapcore2d/cq$a:e	Lorg/json/JSONObject;
    //   1131: aload_0
    //   1132: ldc_w 333
    //   1135: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1138: ifeq +15 -> 1153
    //   1141: aload 8
    //   1143: aload_0
    //   1144: ldc_w 333
    //   1147: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1150: putfield 336	com/amap/api/mapcore2d/cq$a:f	Lorg/json/JSONObject;
    //   1153: aload_0
    //   1154: ldc_w 338
    //   1157: invokestatic 181	com/amap/api/mapcore2d/cz:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1160: ifeq +15 -> 1175
    //   1163: aload 8
    //   1165: aload_0
    //   1166: ldc_w 338
    //   1169: invokevirtual 195	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   1172: putfield 341	com/amap/api/mapcore2d/cq$a:t	Lorg/json/JSONObject;
    //   1175: aload 8
    //   1177: areturn
    //   1178: astore_0
    //   1179: aload_0
    //   1180: ldc -82
    //   1182: ldc 106
    //   1184: invokestatic 111	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   1187: aload 8
    //   1189: areturn
    //   1190: astore_2
    //   1191: goto -973 -> 218
    //   1194: astore_2
    //   1195: goto -1012 -> 183
    //   1198: astore_2
    //   1199: goto -1136 -> 63
    //   1202: astore 6
    //   1204: aload 7
    //   1206: astore 6
    //   1208: goto -951 -> 257
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1211	0	paramContext	Context
    //   0	1211	1	paramCy	cy
    //   0	1211	2	paramString	String
    //   0	1211	3	paramMap	Map<String, String>
    //   310	16	4	i	int
    //   516	3	5	bool	boolean
    //   19	15	6	localEp	ep
    //   56	1	6	localThrowable1	Throwable
    //   67	1	6	localObject1	Object
    //   72	1	6	localCo1	co
    //   94	75	6	localObject2	Object
    //   173	1	6	localThrowable2	Throwable
    //   178	1	6	localCo2	co
    //   196	7	6	localThrowable3	Throwable
    //   213	12	6	localObject3	Object
    //   229	20	6	localCo3	co
    //   255	99	6	localObject4	Object
    //   1202	1	6	localIllegalBlockSizeException	javax.crypto.IllegalBlockSizeException
    //   1206	1	6	localObject5	Object
    //   10	1195	7	localObject6	Object
    //   7	1181	8	localA	a
    //   85	59	9	localObject7	Object
    //   138	21	10	localCipher	javax.crypto.Cipher
    // Exception table:
    //   from	to	target	type
    //   48	53	56	java/lang/Throwable
    //   48	53	72	com/amap/api/mapcore2d/co
    //   81	170	173	java/lang/Throwable
    //   81	170	178	com/amap/api/mapcore2d/co
    //   21	44	193	com/amap/api/mapcore2d/co
    //   12	21	196	java/lang/Throwable
    //   183	193	196	java/lang/Throwable
    //   194	196	196	java/lang/Throwable
    //   12	21	229	com/amap/api/mapcore2d/co
    //   183	193	229	com/amap/api/mapcore2d/co
    //   194	196	229	com/amap/api/mapcore2d/co
    //   434	456	459	java/lang/Throwable
    //   523	563	566	java/lang/Throwable
    //   282	312	1178	java/lang/Throwable
    //   318	322	1178	java/lang/Throwable
    //   341	352	1178	java/lang/Throwable
    //   352	385	1178	java/lang/Throwable
    //   388	406	1178	java/lang/Throwable
    //   406	431	1178	java/lang/Throwable
    //   460	468	1178	java/lang/Throwable
    //   468	518	1178	java/lang/Throwable
    //   567	575	1178	java/lang/Throwable
    //   575	595	1178	java/lang/Throwable
    //   595	615	1178	java/lang/Throwable
    //   615	635	1178	java/lang/Throwable
    //   635	655	1178	java/lang/Throwable
    //   655	675	1178	java/lang/Throwable
    //   675	695	1178	java/lang/Throwable
    //   695	715	1178	java/lang/Throwable
    //   715	735	1178	java/lang/Throwable
    //   735	755	1178	java/lang/Throwable
    //   755	792	1178	java/lang/Throwable
    //   792	829	1178	java/lang/Throwable
    //   829	851	1178	java/lang/Throwable
    //   851	873	1178	java/lang/Throwable
    //   873	910	1178	java/lang/Throwable
    //   910	932	1178	java/lang/Throwable
    //   932	954	1178	java/lang/Throwable
    //   954	991	1178	java/lang/Throwable
    //   991	1028	1178	java/lang/Throwable
    //   1028	1065	1178	java/lang/Throwable
    //   1065	1087	1178	java/lang/Throwable
    //   1087	1109	1178	java/lang/Throwable
    //   1109	1131	1178	java/lang/Throwable
    //   1131	1153	1178	java/lang/Throwable
    //   1153	1175	1178	java/lang/Throwable
    //   12	21	1190	javax/crypto/IllegalBlockSizeException
    //   21	44	1190	javax/crypto/IllegalBlockSizeException
    //   183	193	1190	javax/crypto/IllegalBlockSizeException
    //   194	196	1190	javax/crypto/IllegalBlockSizeException
    //   21	44	1194	java/lang/Throwable
    //   48	53	1198	javax/crypto/IllegalBlockSizeException
    //   81	170	1202	javax/crypto/IllegalBlockSizeException
  }
  
  public static String a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (paramJSONObject == null) {
      return "";
    }
    String str2 = "";
    String str1 = str2;
    if (paramJSONObject.has(paramString))
    {
      str1 = str2;
      if (!paramJSONObject.getString(paramString).equals("[]")) {
        str1 = paramJSONObject.optString(paramString);
      }
    }
    return str1;
  }
  
  private static void a(JSONObject paramJSONObject, cq.a.b paramB)
  {
    if (paramB != null) {
      try
      {
        String str1 = a(paramJSONObject, "m");
        String str2 = a(paramJSONObject, "u");
        String str3 = a(paramJSONObject, "v");
        paramJSONObject = a(paramJSONObject, "able");
        c = str1;
        b = str2;
        d = str3;
        a = a(paramJSONObject, false);
        return;
      }
      catch (Throwable paramJSONObject)
      {
        dd.a(paramJSONObject, "ConfigManager", "parsePluginEntity");
      }
    }
  }
  
  private static void a(JSONObject paramJSONObject, cq.a.c paramC)
  {
    if (paramJSONObject != null) {
      try
      {
        String str = a(paramJSONObject, "md5");
        paramJSONObject = a(paramJSONObject, "url");
        b = str;
        a = paramJSONObject;
        return;
      }
      catch (Throwable paramJSONObject)
      {
        dd.a(paramJSONObject, "ConfigManager", "parseSDKCoordinate");
      }
    }
  }
  
  private static void a(JSONObject paramJSONObject, cq.a.d paramD)
  {
    if (paramJSONObject != null) {
      try
      {
        String str1 = a(paramJSONObject, "md5");
        String str2 = a(paramJSONObject, "url");
        paramJSONObject = a(paramJSONObject, "sdkversion");
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
        {
          if (TextUtils.isEmpty(paramJSONObject)) {
            return;
          }
          a = str2;
          b = str1;
          c = paramJSONObject;
          return;
        }
      }
      catch (Throwable paramJSONObject)
      {
        dd.a(paramJSONObject, "ConfigManager", "parseSDKUpdate");
      }
    }
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = URLDecoder.decode(paramString).split("/");
      int i = paramString[(paramString.length - 1)].charAt(4);
      return i % 2 == 1;
    }
    catch (Throwable paramString) {}
    return paramBoolean;
  }
  
  public static class a
  {
    public b A;
    public String a;
    public int b = -1;
    public JSONObject c;
    public JSONObject d;
    public JSONObject e;
    public JSONObject f;
    public JSONObject g;
    public JSONObject h;
    public JSONObject i;
    public JSONObject j;
    public JSONObject k;
    public JSONObject l;
    public JSONObject m;
    public JSONObject n;
    public JSONObject o;
    public JSONObject p;
    public JSONObject q;
    public JSONObject r;
    public JSONObject s;
    public JSONObject t;
    public a u;
    public d v;
    public c w;
    public b x;
    public b y;
    public b z;
    
    public a() {}
    
    public static class a
    {
      public boolean a;
      public boolean b;
      public JSONObject c;
      
      public a() {}
    }
    
    public static class b
    {
      public boolean a;
      public String b;
      public String c;
      public String d;
      
      public b() {}
    }
    
    public static class c
    {
      public String a;
      public String b;
      
      public c() {}
    }
    
    public static class d
    {
      public String a;
      public String b;
      public String c;
      
      public d() {}
    }
  }
  
  static class b
    extends eq
  {
    private String f;
    private Map<String, String> g;
    private boolean h;
    
    b(Context paramContext, cy paramCy, String paramString, Map<String, String> paramMap)
    {
      super(paramCy);
      f = paramString;
      g = paramMap;
      boolean bool;
      if (Build.VERSION.SDK_INT != 19) {
        bool = true;
      } else {
        bool = false;
      }
      h = bool;
    }
    
    private Map<String, String> n()
    {
      Object localObject3 = ct.q(a);
      Object localObject1 = localObject3;
      if (!TextUtils.isEmpty((CharSequence)localObject3)) {
        localObject1 = cv.b(new StringBuilder((String)localObject3).reverse().toString());
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("authkey", f);
      localHashMap.put("plattype", "android");
      localHashMap.put("product", b.a());
      localHashMap.put("version", b.b());
      localHashMap.put("output", "json");
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append(Build.VERSION.SDK_INT);
      ((StringBuilder)localObject3).append("");
      localHashMap.put("androidversion", ((StringBuilder)localObject3).toString());
      localHashMap.put("deviceId", localObject1);
      if ((g != null) && (!g.isEmpty())) {
        localHashMap.putAll(g);
      }
      localObject3 = null;
      localObject1 = localObject3;
      Object localObject2;
      if (Build.VERSION.SDK_INT >= 21) {
        try
        {
          localObject1 = a.getApplicationInfo();
          Field localField = Class.forName(ApplicationInfo.class.getName()).getDeclaredField("primaryCpuAbi");
          localField.setAccessible(true);
          localObject1 = (String)localField.get(localObject1);
        }
        catch (Throwable localThrowable)
        {
          dd.a(localThrowable, "ConfigManager", "getcpu");
          localObject2 = localObject3;
        }
      }
      localObject3 = localObject2;
      if (TextUtils.isEmpty(localObject2)) {
        localObject3 = Build.CPU_ABI;
      }
      localHashMap.put("abitype", localObject3);
      localHashMap.put("ext", b.e());
      return localHashMap;
    }
    
    public boolean a()
    {
      return h;
    }
    
    public byte[] b()
    {
      return null;
    }
    
    public byte[] c()
    {
      return cz.a(cz.a(n()));
    }
    
    protected String d()
    {
      return "3.0";
    }
    
    public Map<String, String> e()
    {
      return null;
    }
    
    public String g()
    {
      if (h) {
        return "https://restapi.amap.com/v3/iasdkauth";
      }
      return "http://restapi.amap.com/v3/iasdkauth";
    }
  }
}
