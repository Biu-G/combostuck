package com.amap.api.mapcore2d;

import android.content.Context;
import android.text.TextUtils;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class fr
{
  private StringBuilder a = new StringBuilder();
  
  public fr() {}
  
  public final fi a(String paramString, Context paramContext, ex paramEx)
  {
    fi localFi = new fi("");
    localFi.setErrorCode(7);
    try
    {
      localObject1 = new JSONObject(paramString);
      if ((!((JSONObject)localObject1).has("status")) || (!((JSONObject)localObject1).has("info")))
      {
        localObject2 = a;
        StringBuilder localStringBuilder = new StringBuilder("json is error ");
        localStringBuilder.append(paramString);
        ((StringBuilder)localObject2).append(localStringBuilder.toString());
      }
      localObject2 = ((JSONObject)localObject1).getString("status");
      paramString = ((JSONObject)localObject1).getString("info");
      if (((String)localObject2).equals("0"))
      {
        localObject1 = a;
        localObject2 = new StringBuilder("auth fail:");
        ((StringBuilder)localObject2).append(paramString);
        ((StringBuilder)localObject1).append(((StringBuilder)localObject2).toString());
      }
    }
    catch (Throwable paramString)
    {
      Object localObject1 = a;
      Object localObject2 = new StringBuilder("json exception error:");
      ((StringBuilder)localObject2).append(paramString.getMessage());
      ((StringBuilder)localObject1).append(((StringBuilder)localObject2).toString());
      gc.a(paramString, "parser", "paseAuthFailurJson");
    }
    try
    {
      paramString = a;
      paramString.append("#SHA1AndPackage#");
      paramString.append(cp.e(paramContext));
      paramString = (String)((List)b.get("gsid")).get(0);
      if (!TextUtils.isEmpty(paramString))
      {
        paramContext = a;
        paramContext.append(" #gsid#");
        paramContext.append(paramString);
      }
      paramString = c;
      if (!TextUtils.isEmpty(paramString))
      {
        paramContext = a;
        paramEx = new StringBuilder(" #csid#");
        paramEx.append(paramString);
        paramContext.append(paramEx.toString());
      }
    }
    catch (Throwable paramString)
    {
      for (;;) {}
    }
    localFi.setLocationDetail(a.toString());
    if (a.length() > 0) {
      a.delete(0, a.length());
    }
    return localFi;
  }
  
  /* Error */
  public final fi a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 21	com/amap/api/mapcore2d/fi
    //   3: dup
    //   4: ldc 23
    //   6: invokespecial 26	com/amap/api/mapcore2d/fi:<init>	(Ljava/lang/String;)V
    //   9: astore_3
    //   10: aload_1
    //   11: ifnonnull +47 -> 58
    //   14: aload_3
    //   15: iconst_5
    //   16: invokevirtual 30	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   19: aload_0
    //   20: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   23: ldc -121
    //   25: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: pop
    //   29: aload_3
    //   30: aload_0
    //   31: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   34: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokevirtual 124	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   40: aload_0
    //   41: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   44: iconst_0
    //   45: aload_0
    //   46: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   49: invokevirtual 128	java/lang/StringBuilder:length	()I
    //   52: invokevirtual 132	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: aload_3
    //   57: areturn
    //   58: aload_1
    //   59: invokestatic 141	java/nio/ByteBuffer:wrap	([B)Ljava/nio/ByteBuffer;
    //   62: astore_1
    //   63: aload_1
    //   64: astore_2
    //   65: aload_1
    //   66: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   69: ifne +34 -> 103
    //   72: aload_1
    //   73: astore_2
    //   74: aload_3
    //   75: aload_1
    //   76: invokevirtual 148	java/nio/ByteBuffer:getShort	()S
    //   79: invokestatic 152	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   82: invokevirtual 154	com/amap/api/mapcore2d/fi:b	(Ljava/lang/String;)V
    //   85: aload_1
    //   86: astore_2
    //   87: aload_1
    //   88: invokevirtual 158	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   91: pop
    //   92: aload_1
    //   93: ifnull +8 -> 101
    //   96: aload_1
    //   97: invokevirtual 158	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   100: pop
    //   101: aload_3
    //   102: areturn
    //   103: aload_1
    //   104: astore_2
    //   105: aload_3
    //   106: aload_1
    //   107: invokevirtual 161	java/nio/ByteBuffer:getInt	()I
    //   110: i2d
    //   111: ldc2_w 162
    //   114: ddiv
    //   115: invokestatic 168	com/amap/api/mapcore2d/gf:a	(D)D
    //   118: invokevirtual 172	com/amap/api/mapcore2d/fi:setLongitude	(D)V
    //   121: aload_1
    //   122: astore_2
    //   123: aload_3
    //   124: aload_1
    //   125: invokevirtual 161	java/nio/ByteBuffer:getInt	()I
    //   128: i2d
    //   129: ldc2_w 162
    //   132: ddiv
    //   133: invokestatic 168	com/amap/api/mapcore2d/gf:a	(D)D
    //   136: invokevirtual 175	com/amap/api/mapcore2d/fi:setLatitude	(D)V
    //   139: aload_1
    //   140: astore_2
    //   141: aload_3
    //   142: aload_1
    //   143: invokevirtual 148	java/nio/ByteBuffer:getShort	()S
    //   146: i2f
    //   147: invokevirtual 179	com/amap/api/mapcore2d/fi:setAccuracy	(F)V
    //   150: aload_1
    //   151: astore_2
    //   152: aload_3
    //   153: aload_1
    //   154: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   157: invokestatic 152	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   160: invokevirtual 181	com/amap/api/mapcore2d/fi:c	(Ljava/lang/String;)V
    //   163: aload_1
    //   164: astore_2
    //   165: aload_3
    //   166: aload_1
    //   167: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   170: invokestatic 152	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   173: invokevirtual 184	com/amap/api/mapcore2d/fi:d	(Ljava/lang/String;)V
    //   176: aload_1
    //   177: astore_2
    //   178: aload_1
    //   179: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   182: iconst_1
    //   183: if_icmpne +829 -> 1012
    //   186: aload_1
    //   187: astore_2
    //   188: aload_1
    //   189: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   192: sipush 255
    //   195: iand
    //   196: newarray byte
    //   198: astore 4
    //   200: aload_1
    //   201: astore_2
    //   202: aload_1
    //   203: aload 4
    //   205: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   208: pop
    //   209: aload_1
    //   210: astore_2
    //   211: aload_3
    //   212: new 60	java/lang/String
    //   215: dup
    //   216: aload 4
    //   218: ldc -68
    //   220: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   223: invokevirtual 194	com/amap/api/mapcore2d/fi:setCountry	(Ljava/lang/String;)V
    //   226: aload_1
    //   227: astore_2
    //   228: aload_1
    //   229: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   232: sipush 255
    //   235: iand
    //   236: newarray byte
    //   238: astore 4
    //   240: aload_1
    //   241: astore_2
    //   242: aload_1
    //   243: aload 4
    //   245: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   248: pop
    //   249: aload_1
    //   250: astore_2
    //   251: new 60	java/lang/String
    //   254: dup
    //   255: aload 4
    //   257: ldc -68
    //   259: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   262: astore 4
    //   264: aload_1
    //   265: astore_2
    //   266: aload_3
    //   267: aload 4
    //   269: invokevirtual 197	com/amap/api/mapcore2d/fi:setProvince	(Ljava/lang/String;)V
    //   272: goto +7 -> 279
    //   275: ldc 23
    //   277: astore 4
    //   279: aload_1
    //   280: astore_2
    //   281: aload_1
    //   282: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   285: sipush 255
    //   288: iand
    //   289: newarray byte
    //   291: astore 5
    //   293: aload_1
    //   294: astore_2
    //   295: aload_1
    //   296: aload 5
    //   298: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   301: pop
    //   302: aload_1
    //   303: astore_2
    //   304: new 60	java/lang/String
    //   307: dup
    //   308: aload 5
    //   310: ldc -68
    //   312: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   315: astore 5
    //   317: aload_1
    //   318: astore_2
    //   319: aload_3
    //   320: aload 5
    //   322: invokevirtual 200	com/amap/api/mapcore2d/fi:setCity	(Ljava/lang/String;)V
    //   325: goto +7 -> 332
    //   328: ldc 23
    //   330: astore 5
    //   332: aload_1
    //   333: astore_2
    //   334: aload_1
    //   335: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   338: sipush 255
    //   341: iand
    //   342: newarray byte
    //   344: astore 6
    //   346: aload_1
    //   347: astore_2
    //   348: aload_1
    //   349: aload 6
    //   351: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   354: pop
    //   355: aload_1
    //   356: astore_2
    //   357: new 60	java/lang/String
    //   360: dup
    //   361: aload 6
    //   363: ldc -68
    //   365: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   368: astore 6
    //   370: aload_1
    //   371: astore_2
    //   372: aload_3
    //   373: aload 6
    //   375: invokevirtual 203	com/amap/api/mapcore2d/fi:setDistrict	(Ljava/lang/String;)V
    //   378: goto +7 -> 385
    //   381: ldc 23
    //   383: astore 6
    //   385: aload_1
    //   386: astore_2
    //   387: aload_1
    //   388: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   391: sipush 255
    //   394: iand
    //   395: newarray byte
    //   397: astore 7
    //   399: aload_1
    //   400: astore_2
    //   401: aload_1
    //   402: aload 7
    //   404: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   407: pop
    //   408: aload_1
    //   409: astore_2
    //   410: new 60	java/lang/String
    //   413: dup
    //   414: aload 7
    //   416: ldc -68
    //   418: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   421: astore 7
    //   423: aload_1
    //   424: astore_2
    //   425: aload_3
    //   426: aload 7
    //   428: invokevirtual 206	com/amap/api/mapcore2d/fi:setStreet	(Ljava/lang/String;)V
    //   431: aload_1
    //   432: astore_2
    //   433: aload_3
    //   434: aload 7
    //   436: invokevirtual 209	com/amap/api/mapcore2d/fi:setRoad	(Ljava/lang/String;)V
    //   439: goto +7 -> 446
    //   442: ldc 23
    //   444: astore 7
    //   446: aload_1
    //   447: astore_2
    //   448: aload_1
    //   449: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   452: sipush 255
    //   455: iand
    //   456: newarray byte
    //   458: astore 8
    //   460: aload_1
    //   461: astore_2
    //   462: aload_1
    //   463: aload 8
    //   465: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   468: pop
    //   469: aload_1
    //   470: astore_2
    //   471: aload_3
    //   472: new 60	java/lang/String
    //   475: dup
    //   476: aload 8
    //   478: ldc -68
    //   480: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   483: invokevirtual 212	com/amap/api/mapcore2d/fi:setNumber	(Ljava/lang/String;)V
    //   486: aload_1
    //   487: astore_2
    //   488: aload_1
    //   489: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   492: sipush 255
    //   495: iand
    //   496: newarray byte
    //   498: astore 8
    //   500: aload_1
    //   501: astore_2
    //   502: aload_1
    //   503: aload 8
    //   505: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   508: pop
    //   509: aload_1
    //   510: astore_2
    //   511: new 60	java/lang/String
    //   514: dup
    //   515: aload 8
    //   517: ldc -68
    //   519: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   522: astore 8
    //   524: aload_1
    //   525: astore_2
    //   526: aload_3
    //   527: aload 8
    //   529: invokevirtual 215	com/amap/api/mapcore2d/fi:setPoiName	(Ljava/lang/String;)V
    //   532: goto +7 -> 539
    //   535: ldc 23
    //   537: astore 8
    //   539: aload_1
    //   540: astore_2
    //   541: aload_1
    //   542: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   545: sipush 255
    //   548: iand
    //   549: newarray byte
    //   551: astore 9
    //   553: aload_1
    //   554: astore_2
    //   555: aload_1
    //   556: aload 9
    //   558: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   561: pop
    //   562: aload_1
    //   563: astore_2
    //   564: aload_3
    //   565: new 60	java/lang/String
    //   568: dup
    //   569: aload 9
    //   571: ldc -68
    //   573: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   576: invokevirtual 218	com/amap/api/mapcore2d/fi:setAoiName	(Ljava/lang/String;)V
    //   579: aload_1
    //   580: astore_2
    //   581: aload_1
    //   582: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   585: sipush 255
    //   588: iand
    //   589: newarray byte
    //   591: astore 9
    //   593: aload_1
    //   594: astore_2
    //   595: aload_1
    //   596: aload 9
    //   598: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   601: pop
    //   602: aload_1
    //   603: astore_2
    //   604: new 60	java/lang/String
    //   607: dup
    //   608: aload 9
    //   610: ldc -68
    //   612: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   615: astore 9
    //   617: aload_1
    //   618: astore_2
    //   619: aload_3
    //   620: aload 9
    //   622: invokevirtual 221	com/amap/api/mapcore2d/fi:setAdCode	(Ljava/lang/String;)V
    //   625: goto +7 -> 632
    //   628: ldc 23
    //   630: astore 9
    //   632: aload_1
    //   633: astore_2
    //   634: aload_1
    //   635: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   638: sipush 255
    //   641: iand
    //   642: newarray byte
    //   644: astore 10
    //   646: aload_1
    //   647: astore_2
    //   648: aload_1
    //   649: aload 10
    //   651: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   654: pop
    //   655: aload_1
    //   656: astore_2
    //   657: aload_3
    //   658: new 60	java/lang/String
    //   661: dup
    //   662: aload 10
    //   664: ldc -68
    //   666: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   669: invokevirtual 224	com/amap/api/mapcore2d/fi:setCityCode	(Ljava/lang/String;)V
    //   672: aload_1
    //   673: astore_2
    //   674: new 12	java/lang/StringBuilder
    //   677: dup
    //   678: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   681: astore 10
    //   683: aload_1
    //   684: astore_2
    //   685: aload 4
    //   687: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   690: ifne +23 -> 713
    //   693: aload_1
    //   694: astore_2
    //   695: aload 10
    //   697: aload 4
    //   699: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   702: pop
    //   703: aload_1
    //   704: astore_2
    //   705: aload 10
    //   707: ldc -30
    //   709: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   712: pop
    //   713: aload_1
    //   714: astore_2
    //   715: aload 5
    //   717: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   720: ifne +47 -> 767
    //   723: aload_1
    //   724: astore_2
    //   725: aload 4
    //   727: ldc -28
    //   729: invokevirtual 231	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   732: ifeq +15 -> 747
    //   735: aload_1
    //   736: astore_2
    //   737: aload 4
    //   739: aload 5
    //   741: invokevirtual 64	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   744: ifne +23 -> 767
    //   747: aload_1
    //   748: astore_2
    //   749: aload 10
    //   751: aload 5
    //   753: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   756: pop
    //   757: aload_1
    //   758: astore_2
    //   759: aload 10
    //   761: ldc -30
    //   763: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   766: pop
    //   767: aload_1
    //   768: astore_2
    //   769: aload 6
    //   771: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   774: ifne +23 -> 797
    //   777: aload_1
    //   778: astore_2
    //   779: aload 10
    //   781: aload 6
    //   783: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: pop
    //   787: aload_1
    //   788: astore_2
    //   789: aload 10
    //   791: ldc -30
    //   793: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   796: pop
    //   797: aload_1
    //   798: astore_2
    //   799: aload 7
    //   801: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   804: ifne +23 -> 827
    //   807: aload_1
    //   808: astore_2
    //   809: aload 10
    //   811: aload 7
    //   813: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   816: pop
    //   817: aload_1
    //   818: astore_2
    //   819: aload 10
    //   821: ldc -30
    //   823: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   826: pop
    //   827: aload_1
    //   828: astore_2
    //   829: aload 8
    //   831: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   834: ifne +43 -> 877
    //   837: aload_1
    //   838: astore_2
    //   839: aload 9
    //   841: invokestatic 113	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   844: ifne +13 -> 857
    //   847: aload_1
    //   848: astore_2
    //   849: aload 10
    //   851: ldc -23
    //   853: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   856: pop
    //   857: aload_1
    //   858: astore_2
    //   859: aload 10
    //   861: aload 8
    //   863: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: pop
    //   867: aload_1
    //   868: astore_2
    //   869: aload 10
    //   871: ldc -30
    //   873: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: pop
    //   877: aload_1
    //   878: astore_2
    //   879: new 235	android/os/Bundle
    //   882: dup
    //   883: invokespecial 236	android/os/Bundle:<init>	()V
    //   886: astore 4
    //   888: aload_1
    //   889: astore_2
    //   890: aload 4
    //   892: ldc -18
    //   894: aload_3
    //   895: invokevirtual 241	com/amap/api/mapcore2d/fi:getCityCode	()Ljava/lang/String;
    //   898: invokevirtual 245	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   901: aload_1
    //   902: astore_2
    //   903: aload 4
    //   905: ldc -9
    //   907: aload 10
    //   909: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   912: invokevirtual 245	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   915: aload_1
    //   916: astore_2
    //   917: aload 4
    //   919: ldc -7
    //   921: aload_3
    //   922: invokevirtual 252	com/amap/api/mapcore2d/fi:getAdCode	()Ljava/lang/String;
    //   925: invokevirtual 245	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   928: aload_1
    //   929: astore_2
    //   930: aload_3
    //   931: aload 4
    //   933: invokevirtual 256	com/amap/api/mapcore2d/fi:setExtras	(Landroid/os/Bundle;)V
    //   936: aload_1
    //   937: astore_2
    //   938: aload_3
    //   939: aload 10
    //   941: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   944: invokevirtual 258	com/amap/api/mapcore2d/fi:e	(Ljava/lang/String;)V
    //   947: aload_1
    //   948: astore_2
    //   949: aload_3
    //   950: invokevirtual 252	com/amap/api/mapcore2d/fi:getAdCode	()Ljava/lang/String;
    //   953: astore 4
    //   955: aload 4
    //   957: ifnull +43 -> 1000
    //   960: aload_1
    //   961: astore_2
    //   962: aload 4
    //   964: invokevirtual 261	java/lang/String:trim	()Ljava/lang/String;
    //   967: invokevirtual 262	java/lang/String:length	()I
    //   970: ifle +30 -> 1000
    //   973: aload_1
    //   974: astore_2
    //   975: aload 10
    //   977: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   980: ldc -30
    //   982: ldc 23
    //   984: invokevirtual 266	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   987: astore 4
    //   989: aload_1
    //   990: astore_2
    //   991: aload_3
    //   992: aload 4
    //   994: invokevirtual 269	com/amap/api/mapcore2d/fi:setAddress	(Ljava/lang/String;)V
    //   997: goto +15 -> 1012
    //   1000: aload_1
    //   1001: astore_2
    //   1002: aload 10
    //   1004: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1007: astore 4
    //   1009: goto -20 -> 989
    //   1012: aload_1
    //   1013: astore_2
    //   1014: aload_1
    //   1015: aload_1
    //   1016: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1019: sipush 255
    //   1022: iand
    //   1023: newarray byte
    //   1025: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   1028: pop
    //   1029: aload_1
    //   1030: astore_2
    //   1031: aload_1
    //   1032: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1035: iconst_1
    //   1036: if_icmpne +24 -> 1060
    //   1039: aload_1
    //   1040: astore_2
    //   1041: aload_1
    //   1042: invokevirtual 161	java/nio/ByteBuffer:getInt	()I
    //   1045: pop
    //   1046: aload_1
    //   1047: astore_2
    //   1048: aload_1
    //   1049: invokevirtual 161	java/nio/ByteBuffer:getInt	()I
    //   1052: pop
    //   1053: aload_1
    //   1054: astore_2
    //   1055: aload_1
    //   1056: invokevirtual 148	java/nio/ByteBuffer:getShort	()S
    //   1059: pop
    //   1060: aload_1
    //   1061: astore_2
    //   1062: aload_1
    //   1063: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1066: iconst_1
    //   1067: if_icmpne +83 -> 1150
    //   1070: aload_1
    //   1071: astore_2
    //   1072: aload_1
    //   1073: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1076: sipush 255
    //   1079: iand
    //   1080: newarray byte
    //   1082: astore 4
    //   1084: aload_1
    //   1085: astore_2
    //   1086: aload_1
    //   1087: aload 4
    //   1089: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   1092: pop
    //   1093: aload_1
    //   1094: astore_2
    //   1095: aload_3
    //   1096: new 60	java/lang/String
    //   1099: dup
    //   1100: aload 4
    //   1102: ldc -68
    //   1104: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1107: invokevirtual 272	com/amap/api/mapcore2d/fi:setBuildingId	(Ljava/lang/String;)V
    //   1110: aload_1
    //   1111: astore_2
    //   1112: aload_1
    //   1113: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1116: sipush 255
    //   1119: iand
    //   1120: newarray byte
    //   1122: astore 4
    //   1124: aload_1
    //   1125: astore_2
    //   1126: aload_1
    //   1127: aload 4
    //   1129: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   1132: pop
    //   1133: aload_1
    //   1134: astore_2
    //   1135: aload_3
    //   1136: new 60	java/lang/String
    //   1139: dup
    //   1140: aload 4
    //   1142: ldc -68
    //   1144: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1147: invokevirtual 275	com/amap/api/mapcore2d/fi:setFloor	(Ljava/lang/String;)V
    //   1150: aload_1
    //   1151: astore_2
    //   1152: aload_1
    //   1153: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1156: iconst_1
    //   1157: if_icmpne +24 -> 1181
    //   1160: aload_1
    //   1161: astore_2
    //   1162: aload_1
    //   1163: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1166: pop
    //   1167: aload_1
    //   1168: astore_2
    //   1169: aload_1
    //   1170: invokevirtual 161	java/nio/ByteBuffer:getInt	()I
    //   1173: pop
    //   1174: aload_1
    //   1175: astore_2
    //   1176: aload_1
    //   1177: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1180: pop
    //   1181: aload_1
    //   1182: astore_2
    //   1183: aload_1
    //   1184: invokevirtual 144	java/nio/ByteBuffer:get	()B
    //   1187: iconst_1
    //   1188: if_icmpne +13 -> 1201
    //   1191: aload_1
    //   1192: astore_2
    //   1193: aload_3
    //   1194: aload_1
    //   1195: invokevirtual 279	java/nio/ByteBuffer:getLong	()J
    //   1198: invokevirtual 283	com/amap/api/mapcore2d/fi:setTime	(J)V
    //   1201: aload_1
    //   1202: astore_2
    //   1203: aload_1
    //   1204: invokevirtual 148	java/nio/ByteBuffer:getShort	()S
    //   1207: newarray byte
    //   1209: astore 4
    //   1211: aload_1
    //   1212: astore_2
    //   1213: aload_1
    //   1214: aload 4
    //   1216: invokevirtual 186	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   1219: pop
    //   1220: aload_1
    //   1221: astore_2
    //   1222: aload_3
    //   1223: new 60	java/lang/String
    //   1226: dup
    //   1227: aload 4
    //   1229: ldc -68
    //   1231: invokespecial 191	java/lang/String:<init>	([BLjava/lang/String;)V
    //   1234: invokevirtual 285	com/amap/api/mapcore2d/fi:a	(Ljava/lang/String;)V
    //   1237: aload_3
    //   1238: astore_2
    //   1239: aload_1
    //   1240: ifnull +121 -> 1361
    //   1243: aload_3
    //   1244: astore_2
    //   1245: aload_1
    //   1246: invokevirtual 158	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   1249: pop
    //   1250: goto +111 -> 1361
    //   1253: astore_3
    //   1254: goto +12 -> 1266
    //   1257: astore_1
    //   1258: aconst_null
    //   1259: astore_2
    //   1260: goto +130 -> 1390
    //   1263: astore_3
    //   1264: aconst_null
    //   1265: astore_1
    //   1266: aload_1
    //   1267: astore_2
    //   1268: new 21	com/amap/api/mapcore2d/fi
    //   1271: dup
    //   1272: ldc 23
    //   1274: invokespecial 26	com/amap/api/mapcore2d/fi:<init>	(Ljava/lang/String;)V
    //   1277: astore 4
    //   1279: aload_1
    //   1280: astore_2
    //   1281: aload 4
    //   1283: iconst_5
    //   1284: invokevirtual 30	com/amap/api/mapcore2d/fi:setErrorCode	(I)V
    //   1287: aload_1
    //   1288: astore_2
    //   1289: aload_0
    //   1290: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   1293: astore 5
    //   1295: aload_1
    //   1296: astore_2
    //   1297: new 12	java/lang/StringBuilder
    //   1300: dup
    //   1301: ldc_w 287
    //   1304: invokespecial 44	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1307: astore 6
    //   1309: aload_1
    //   1310: astore_2
    //   1311: aload 6
    //   1313: aload_3
    //   1314: invokevirtual 71	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1317: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1320: pop
    //   1321: aload_1
    //   1322: astore_2
    //   1323: aload 5
    //   1325: aload 6
    //   1327: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1330: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1333: pop
    //   1334: aload_1
    //   1335: astore_2
    //   1336: aload 4
    //   1338: aload_0
    //   1339: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   1342: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1345: invokevirtual 124	com/amap/api/mapcore2d/fi:setLocationDetail	(Ljava/lang/String;)V
    //   1348: aload 4
    //   1350: astore_2
    //   1351: aload_1
    //   1352: ifnull +9 -> 1361
    //   1355: aload 4
    //   1357: astore_2
    //   1358: goto -113 -> 1245
    //   1361: aload_0
    //   1362: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   1365: invokevirtual 128	java/lang/StringBuilder:length	()I
    //   1368: ifle +19 -> 1387
    //   1371: aload_0
    //   1372: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   1375: iconst_0
    //   1376: aload_0
    //   1377: getfield 15	com/amap/api/mapcore2d/fr:a	Ljava/lang/StringBuilder;
    //   1380: invokevirtual 128	java/lang/StringBuilder:length	()I
    //   1383: invokevirtual 132	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1386: pop
    //   1387: aload_2
    //   1388: areturn
    //   1389: astore_1
    //   1390: aload_2
    //   1391: ifnull +8 -> 1399
    //   1394: aload_2
    //   1395: invokevirtual 158	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   1398: pop
    //   1399: aload_1
    //   1400: athrow
    //   1401: astore_2
    //   1402: goto -1176 -> 226
    //   1405: astore_2
    //   1406: goto -1131 -> 275
    //   1409: astore_2
    //   1410: goto -1131 -> 279
    //   1413: astore_2
    //   1414: goto -1086 -> 328
    //   1417: astore_2
    //   1418: goto -1086 -> 332
    //   1421: astore_2
    //   1422: goto -1041 -> 381
    //   1425: astore_2
    //   1426: goto -1041 -> 385
    //   1429: astore_2
    //   1430: goto -988 -> 442
    //   1433: astore_2
    //   1434: goto -988 -> 446
    //   1437: astore_2
    //   1438: goto -952 -> 486
    //   1441: astore_2
    //   1442: goto -907 -> 535
    //   1445: astore_2
    //   1446: goto -907 -> 539
    //   1449: astore_2
    //   1450: goto -871 -> 579
    //   1453: astore_2
    //   1454: goto -826 -> 628
    //   1457: astore_2
    //   1458: goto -826 -> 632
    //   1461: astore_2
    //   1462: goto -790 -> 672
    //   1465: astore_2
    //   1466: goto -356 -> 1110
    //   1469: astore_2
    //   1470: goto -320 -> 1150
    //   1473: astore_2
    //   1474: goto -237 -> 1237
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1477	0	this	fr
    //   0	1477	1	paramArrayOfByte	byte[]
    //   64	1331	2	localObject1	Object
    //   1401	1	2	localThrowable1	Throwable
    //   1405	1	2	localThrowable2	Throwable
    //   1409	1	2	localThrowable3	Throwable
    //   1413	1	2	localThrowable4	Throwable
    //   1417	1	2	localThrowable5	Throwable
    //   1421	1	2	localThrowable6	Throwable
    //   1425	1	2	localThrowable7	Throwable
    //   1429	1	2	localThrowable8	Throwable
    //   1433	1	2	localThrowable9	Throwable
    //   1437	1	2	localThrowable10	Throwable
    //   1441	1	2	localThrowable11	Throwable
    //   1445	1	2	localThrowable12	Throwable
    //   1449	1	2	localThrowable13	Throwable
    //   1453	1	2	localThrowable14	Throwable
    //   1457	1	2	localThrowable15	Throwable
    //   1461	1	2	localThrowable16	Throwable
    //   1465	1	2	localThrowable17	Throwable
    //   1469	1	2	localThrowable18	Throwable
    //   1473	1	2	localThrowable19	Throwable
    //   9	1235	3	localFi	fi
    //   1253	1	3	localThrowable20	Throwable
    //   1263	51	3	localThrowable21	Throwable
    //   198	1158	4	localObject2	Object
    //   291	1033	5	localObject3	Object
    //   344	982	6	localObject4	Object
    //   397	415	7	localObject5	Object
    //   458	404	8	localObject6	Object
    //   551	289	9	localObject7	Object
    //   644	359	10	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   65	72	1253	java/lang/Throwable
    //   74	85	1253	java/lang/Throwable
    //   87	92	1253	java/lang/Throwable
    //   105	121	1253	java/lang/Throwable
    //   123	139	1253	java/lang/Throwable
    //   141	150	1253	java/lang/Throwable
    //   152	163	1253	java/lang/Throwable
    //   165	176	1253	java/lang/Throwable
    //   178	186	1253	java/lang/Throwable
    //   188	200	1253	java/lang/Throwable
    //   202	209	1253	java/lang/Throwable
    //   228	240	1253	java/lang/Throwable
    //   242	249	1253	java/lang/Throwable
    //   281	293	1253	java/lang/Throwable
    //   295	302	1253	java/lang/Throwable
    //   334	346	1253	java/lang/Throwable
    //   348	355	1253	java/lang/Throwable
    //   387	399	1253	java/lang/Throwable
    //   401	408	1253	java/lang/Throwable
    //   448	460	1253	java/lang/Throwable
    //   462	469	1253	java/lang/Throwable
    //   488	500	1253	java/lang/Throwable
    //   502	509	1253	java/lang/Throwable
    //   541	553	1253	java/lang/Throwable
    //   555	562	1253	java/lang/Throwable
    //   581	593	1253	java/lang/Throwable
    //   595	602	1253	java/lang/Throwable
    //   634	646	1253	java/lang/Throwable
    //   648	655	1253	java/lang/Throwable
    //   674	683	1253	java/lang/Throwable
    //   685	693	1253	java/lang/Throwable
    //   695	703	1253	java/lang/Throwable
    //   705	713	1253	java/lang/Throwable
    //   715	723	1253	java/lang/Throwable
    //   725	735	1253	java/lang/Throwable
    //   737	747	1253	java/lang/Throwable
    //   749	757	1253	java/lang/Throwable
    //   759	767	1253	java/lang/Throwable
    //   769	777	1253	java/lang/Throwable
    //   779	787	1253	java/lang/Throwable
    //   789	797	1253	java/lang/Throwable
    //   799	807	1253	java/lang/Throwable
    //   809	817	1253	java/lang/Throwable
    //   819	827	1253	java/lang/Throwable
    //   829	837	1253	java/lang/Throwable
    //   839	847	1253	java/lang/Throwable
    //   849	857	1253	java/lang/Throwable
    //   859	867	1253	java/lang/Throwable
    //   869	877	1253	java/lang/Throwable
    //   879	888	1253	java/lang/Throwable
    //   890	901	1253	java/lang/Throwable
    //   903	915	1253	java/lang/Throwable
    //   917	928	1253	java/lang/Throwable
    //   930	936	1253	java/lang/Throwable
    //   938	947	1253	java/lang/Throwable
    //   949	955	1253	java/lang/Throwable
    //   962	973	1253	java/lang/Throwable
    //   975	989	1253	java/lang/Throwable
    //   991	997	1253	java/lang/Throwable
    //   1002	1009	1253	java/lang/Throwable
    //   1014	1029	1253	java/lang/Throwable
    //   1031	1039	1253	java/lang/Throwable
    //   1041	1046	1253	java/lang/Throwable
    //   1048	1053	1253	java/lang/Throwable
    //   1055	1060	1253	java/lang/Throwable
    //   1062	1070	1253	java/lang/Throwable
    //   1072	1084	1253	java/lang/Throwable
    //   1086	1093	1253	java/lang/Throwable
    //   1112	1124	1253	java/lang/Throwable
    //   1126	1133	1253	java/lang/Throwable
    //   1152	1160	1253	java/lang/Throwable
    //   1162	1167	1253	java/lang/Throwable
    //   1169	1174	1253	java/lang/Throwable
    //   1176	1181	1253	java/lang/Throwable
    //   1183	1191	1253	java/lang/Throwable
    //   1193	1201	1253	java/lang/Throwable
    //   1203	1211	1253	java/lang/Throwable
    //   1213	1220	1253	java/lang/Throwable
    //   0	10	1257	finally
    //   14	56	1257	finally
    //   58	63	1257	finally
    //   0	10	1263	java/lang/Throwable
    //   14	56	1263	java/lang/Throwable
    //   58	63	1263	java/lang/Throwable
    //   65	72	1389	finally
    //   74	85	1389	finally
    //   87	92	1389	finally
    //   105	121	1389	finally
    //   123	139	1389	finally
    //   141	150	1389	finally
    //   152	163	1389	finally
    //   165	176	1389	finally
    //   178	186	1389	finally
    //   188	200	1389	finally
    //   202	209	1389	finally
    //   211	226	1389	finally
    //   228	240	1389	finally
    //   242	249	1389	finally
    //   251	264	1389	finally
    //   266	272	1389	finally
    //   281	293	1389	finally
    //   295	302	1389	finally
    //   304	317	1389	finally
    //   319	325	1389	finally
    //   334	346	1389	finally
    //   348	355	1389	finally
    //   357	370	1389	finally
    //   372	378	1389	finally
    //   387	399	1389	finally
    //   401	408	1389	finally
    //   410	423	1389	finally
    //   425	431	1389	finally
    //   433	439	1389	finally
    //   448	460	1389	finally
    //   462	469	1389	finally
    //   471	486	1389	finally
    //   488	500	1389	finally
    //   502	509	1389	finally
    //   511	524	1389	finally
    //   526	532	1389	finally
    //   541	553	1389	finally
    //   555	562	1389	finally
    //   564	579	1389	finally
    //   581	593	1389	finally
    //   595	602	1389	finally
    //   604	617	1389	finally
    //   619	625	1389	finally
    //   634	646	1389	finally
    //   648	655	1389	finally
    //   657	672	1389	finally
    //   674	683	1389	finally
    //   685	693	1389	finally
    //   695	703	1389	finally
    //   705	713	1389	finally
    //   715	723	1389	finally
    //   725	735	1389	finally
    //   737	747	1389	finally
    //   749	757	1389	finally
    //   759	767	1389	finally
    //   769	777	1389	finally
    //   779	787	1389	finally
    //   789	797	1389	finally
    //   799	807	1389	finally
    //   809	817	1389	finally
    //   819	827	1389	finally
    //   829	837	1389	finally
    //   839	847	1389	finally
    //   849	857	1389	finally
    //   859	867	1389	finally
    //   869	877	1389	finally
    //   879	888	1389	finally
    //   890	901	1389	finally
    //   903	915	1389	finally
    //   917	928	1389	finally
    //   930	936	1389	finally
    //   938	947	1389	finally
    //   949	955	1389	finally
    //   962	973	1389	finally
    //   975	989	1389	finally
    //   991	997	1389	finally
    //   1002	1009	1389	finally
    //   1014	1029	1389	finally
    //   1031	1039	1389	finally
    //   1041	1046	1389	finally
    //   1048	1053	1389	finally
    //   1055	1060	1389	finally
    //   1062	1070	1389	finally
    //   1072	1084	1389	finally
    //   1086	1093	1389	finally
    //   1095	1110	1389	finally
    //   1112	1124	1389	finally
    //   1126	1133	1389	finally
    //   1135	1150	1389	finally
    //   1152	1160	1389	finally
    //   1162	1167	1389	finally
    //   1169	1174	1389	finally
    //   1176	1181	1389	finally
    //   1183	1191	1389	finally
    //   1193	1201	1389	finally
    //   1203	1211	1389	finally
    //   1213	1220	1389	finally
    //   1222	1237	1389	finally
    //   1268	1279	1389	finally
    //   1281	1287	1389	finally
    //   1289	1295	1389	finally
    //   1297	1309	1389	finally
    //   1311	1321	1389	finally
    //   1323	1334	1389	finally
    //   1336	1348	1389	finally
    //   211	226	1401	java/lang/Throwable
    //   251	264	1405	java/lang/Throwable
    //   266	272	1409	java/lang/Throwable
    //   304	317	1413	java/lang/Throwable
    //   319	325	1417	java/lang/Throwable
    //   357	370	1421	java/lang/Throwable
    //   372	378	1425	java/lang/Throwable
    //   410	423	1429	java/lang/Throwable
    //   425	431	1433	java/lang/Throwable
    //   433	439	1433	java/lang/Throwable
    //   471	486	1437	java/lang/Throwable
    //   511	524	1441	java/lang/Throwable
    //   526	532	1445	java/lang/Throwable
    //   564	579	1449	java/lang/Throwable
    //   604	617	1453	java/lang/Throwable
    //   619	625	1457	java/lang/Throwable
    //   657	672	1461	java/lang/Throwable
    //   1095	1110	1465	java/lang/Throwable
    //   1135	1150	1469	java/lang/Throwable
    //   1222	1237	1473	java/lang/Throwable
  }
}
