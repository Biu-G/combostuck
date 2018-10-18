package com.amap.api.mapcore2d;

import android.content.Context;
import java.io.File;
import java.util.Date;

public class fd
{
  public fd() {}
  
  public static int a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new File(de.a(paramContext, paramString));
      if (!paramContext.exists()) {
        return 0;
      }
      int i = paramContext.list().length;
      return i;
    }
    catch (Throwable paramContext)
    {
      dd.a(paramContext, "Statistics.Utils", "getFileNum");
    }
    return 0;
  }
  
  public static String a()
  {
    return cz.a(new Date().getTime());
  }
  
  public static String a(Context paramContext, cy paramCy)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      String str = ct.e(paramContext);
      localStringBuilder.append("\"sim\":\"");
      localStringBuilder.append(str);
      localStringBuilder.append("\",\"sdkversion\":\"");
      localStringBuilder.append(paramCy.c());
      localStringBuilder.append("\",\"product\":\"");
      localStringBuilder.append(paramCy.a());
      localStringBuilder.append("\",\"ed\":\"");
      localStringBuilder.append(paramCy.e());
      localStringBuilder.append("\",\"nt\":\"");
      localStringBuilder.append(ct.c(paramContext));
      localStringBuilder.append("\",\"np\":\"");
      localStringBuilder.append(ct.a(paramContext));
      localStringBuilder.append("\",\"mnc\":\"");
      localStringBuilder.append(ct.b(paramContext));
      localStringBuilder.append("\",\"ant\":\"");
      localStringBuilder.append(ct.d(paramContext));
      localStringBuilder.append("\"");
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5)
  {
    paramString1 = new StringBuffer();
    paramString1.append(paramString2);
    paramString1.append(",");
    paramString1.append("\"timestamp\":\"");
    paramString1.append(paramString3);
    paramString1.append("\",\"et\":\"");
    paramString1.append(paramInt);
    paramString1.append("\",\"classname\":\"");
    paramString1.append(paramString4);
    paramString1.append("\",");
    paramString1.append("\"detail\":\"");
    paramString1.append(paramString5);
    paramString1.append("\"");
    return paramString1.toString();
  }
  
  /* Error */
  public static void a(Context paramContext, long paramLong, String paramString)
  {
    // Byte code:
    //   0: new 15	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_3
    //   6: invokestatic 20	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   9: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore_0
    //   13: aload_0
    //   14: invokevirtual 146	java/io/File:getParentFile	()Ljava/io/File;
    //   17: invokevirtual 27	java/io/File:exists	()Z
    //   20: ifne +11 -> 31
    //   23: aload_0
    //   24: invokevirtual 146	java/io/File:getParentFile	()Ljava/io/File;
    //   27: invokevirtual 149	java/io/File:mkdirs	()Z
    //   30: pop
    //   31: new 151	java/io/FileOutputStream
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 154	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   39: astore_3
    //   40: aload_3
    //   41: astore_0
    //   42: aload_3
    //   43: lload_1
    //   44: invokestatic 159	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   47: invokestatic 162	com/amap/api/mapcore2d/cz:a	(Ljava/lang/String;)[B
    //   50: invokevirtual 166	java/io/FileOutputStream:write	([B)V
    //   53: aload_3
    //   54: invokevirtual 169	java/io/FileOutputStream:close	()V
    //   57: return
    //   58: astore 4
    //   60: goto +18 -> 78
    //   63: astore 4
    //   65: goto +33 -> 98
    //   68: astore_3
    //   69: aconst_null
    //   70: astore_0
    //   71: goto +50 -> 121
    //   74: astore 4
    //   76: aconst_null
    //   77: astore_3
    //   78: aload_3
    //   79: astore_0
    //   80: aload 4
    //   82: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   85: aload_3
    //   86: ifnull +33 -> 119
    //   89: aload_3
    //   90: invokevirtual 169	java/io/FileOutputStream:close	()V
    //   93: return
    //   94: astore 4
    //   96: aconst_null
    //   97: astore_3
    //   98: aload_3
    //   99: astore_0
    //   100: aload 4
    //   102: invokevirtual 171	java/io/FileNotFoundException:printStackTrace	()V
    //   105: aload_3
    //   106: ifnull +13 -> 119
    //   109: aload_3
    //   110: invokevirtual 169	java/io/FileOutputStream:close	()V
    //   113: return
    //   114: astore_0
    //   115: aload_0
    //   116: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   119: return
    //   120: astore_3
    //   121: aload_0
    //   122: ifnull +15 -> 137
    //   125: aload_0
    //   126: invokevirtual 169	java/io/FileOutputStream:close	()V
    //   129: goto +8 -> 137
    //   132: astore_0
    //   133: aload_0
    //   134: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   137: aload_3
    //   138: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	paramContext	Context
    //   0	139	1	paramLong	long
    //   0	139	3	paramString	String
    //   58	1	4	localIOException1	java.io.IOException
    //   63	1	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   74	7	4	localIOException2	java.io.IOException
    //   94	7	4	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   42	53	58	java/io/IOException
    //   42	53	63	java/io/FileNotFoundException
    //   31	40	68	finally
    //   31	40	74	java/io/IOException
    //   31	40	94	java/io/FileNotFoundException
    //   53	57	114	java/lang/Throwable
    //   89	93	114	java/lang/Throwable
    //   109	113	114	java/lang/Throwable
    //   42	53	120	finally
    //   80	85	120	finally
    //   100	105	120	finally
    //   125	129	132	java/lang/Throwable
  }
  
  /* Error */
  public static void a(Context paramContext, String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnull +322 -> 323
    //   4: aload_3
    //   5: arraylength
    //   6: ifne +4 -> 10
    //   9: return
    //   10: ldc 2
    //   12: monitorenter
    //   13: new 174	java/util/Random
    //   16: dup
    //   17: invokespecial 175	java/util/Random:<init>	()V
    //   20: astore 7
    //   22: aconst_null
    //   23: astore 5
    //   25: aconst_null
    //   26: astore 4
    //   28: aconst_null
    //   29: astore 6
    //   31: new 15	java/io/File
    //   34: dup
    //   35: aload_0
    //   36: aload_1
    //   37: invokestatic 20	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   40: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   43: iconst_1
    //   44: iconst_1
    //   45: iload_2
    //   46: i2l
    //   47: invokestatic 180	com/amap/api/mapcore2d/el:a	(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;
    //   50: astore_0
    //   51: aload 5
    //   53: astore_1
    //   54: aload_0
    //   55: astore 4
    //   57: new 56	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   64: astore 8
    //   66: aload 5
    //   68: astore_1
    //   69: aload_0
    //   70: astore 4
    //   72: aload 8
    //   74: aload 7
    //   76: bipush 100
    //   78: invokevirtual 184	java/util/Random:nextInt	(I)I
    //   81: invokestatic 189	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   84: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload 5
    //   90: astore_1
    //   91: aload_0
    //   92: astore 4
    //   94: aload 8
    //   96: invokestatic 194	java/lang/System:nanoTime	()J
    //   99: invokestatic 198	java/lang/Long:toString	(J)Ljava/lang/String;
    //   102: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: pop
    //   106: aload 5
    //   108: astore_1
    //   109: aload_0
    //   110: astore 4
    //   112: aload_0
    //   113: aload 8
    //   115: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokevirtual 201	com/amap/api/mapcore2d/el:b	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$a;
    //   121: astore 7
    //   123: aload 5
    //   125: astore_1
    //   126: aload_0
    //   127: astore 4
    //   129: aload 7
    //   131: iconst_0
    //   132: invokevirtual 206	com/amap/api/mapcore2d/el$a:a	(I)Ljava/io/OutputStream;
    //   135: astore 5
    //   137: aload 5
    //   139: aload_3
    //   140: invokevirtual 209	java/io/OutputStream:write	([B)V
    //   143: aload 7
    //   145: invokevirtual 211	com/amap/api/mapcore2d/el$a:a	()V
    //   148: aload_0
    //   149: invokevirtual 213	com/amap/api/mapcore2d/el:e	()V
    //   152: aload 5
    //   154: ifnull +16 -> 170
    //   157: aload 5
    //   159: invokevirtual 214	java/io/OutputStream:close	()V
    //   162: goto +8 -> 170
    //   165: astore_1
    //   166: aload_1
    //   167: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   170: aload_0
    //   171: ifnull +104 -> 275
    //   174: aload_0
    //   175: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   178: goto +97 -> 275
    //   181: astore_0
    //   182: aload_0
    //   183: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   186: goto +89 -> 275
    //   189: astore_3
    //   190: aload 5
    //   192: astore_1
    //   193: goto +90 -> 283
    //   196: astore_1
    //   197: aload 5
    //   199: astore_3
    //   200: aload_1
    //   201: astore 5
    //   203: goto +27 -> 230
    //   206: astore 5
    //   208: aload 6
    //   210: astore_3
    //   211: goto +19 -> 230
    //   214: astore_3
    //   215: aconst_null
    //   216: astore_0
    //   217: aload 4
    //   219: astore_1
    //   220: goto +63 -> 283
    //   223: astore 5
    //   225: aconst_null
    //   226: astore_0
    //   227: aload 6
    //   229: astore_3
    //   230: aload_3
    //   231: astore_1
    //   232: aload_0
    //   233: astore 4
    //   235: aload 5
    //   237: ldc 33
    //   239: ldc -39
    //   241: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   244: aload_3
    //   245: ifnull +15 -> 260
    //   248: aload_3
    //   249: invokevirtual 214	java/io/OutputStream:close	()V
    //   252: goto +8 -> 260
    //   255: astore_1
    //   256: aload_1
    //   257: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   260: aload_0
    //   261: ifnull +14 -> 275
    //   264: aload_0
    //   265: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   268: goto +7 -> 275
    //   271: astore_0
    //   272: goto -90 -> 182
    //   275: ldc 2
    //   277: monitorexit
    //   278: return
    //   279: astore_3
    //   280: aload 4
    //   282: astore_0
    //   283: aload_1
    //   284: ifnull +15 -> 299
    //   287: aload_1
    //   288: invokevirtual 214	java/io/OutputStream:close	()V
    //   291: goto +8 -> 299
    //   294: astore_1
    //   295: aload_1
    //   296: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   299: aload_0
    //   300: ifnull +15 -> 315
    //   303: aload_0
    //   304: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   307: goto +8 -> 315
    //   310: astore_0
    //   311: aload_0
    //   312: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   315: aload_3
    //   316: athrow
    //   317: astore_0
    //   318: ldc 2
    //   320: monitorexit
    //   321: aload_0
    //   322: athrow
    //   323: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	324	0	paramContext	Context
    //   0	324	1	paramString	String
    //   0	324	2	paramInt	int
    //   0	324	3	paramArrayOfByte	byte[]
    //   26	255	4	localContext	Context
    //   23	179	5	localObject1	Object
    //   206	1	5	localThrowable1	Throwable
    //   223	13	5	localThrowable2	Throwable
    //   29	199	6	localObject2	Object
    //   20	124	7	localObject3	Object
    //   64	50	8	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   157	162	165	java/lang/Throwable
    //   174	178	181	java/lang/Throwable
    //   137	152	189	finally
    //   137	152	196	java/lang/Throwable
    //   57	66	206	java/lang/Throwable
    //   72	88	206	java/lang/Throwable
    //   94	106	206	java/lang/Throwable
    //   112	123	206	java/lang/Throwable
    //   129	137	206	java/lang/Throwable
    //   31	51	214	finally
    //   31	51	223	java/lang/Throwable
    //   248	252	255	java/lang/Throwable
    //   264	268	271	java/lang/Throwable
    //   57	66	279	finally
    //   72	88	279	finally
    //   94	106	279	finally
    //   112	123	279	finally
    //   129	137	279	finally
    //   235	244	279	finally
    //   287	291	294	java/lang/Throwable
    //   303	307	310	java/lang/Throwable
    //   13	22	317	finally
    //   157	162	317	finally
    //   166	170	317	finally
    //   174	178	317	finally
    //   182	186	317	finally
    //   248	252	317	finally
    //   256	260	317	finally
    //   264	268	317	finally
    //   275	278	317	finally
    //   287	291	317	finally
    //   295	299	317	finally
    //   303	307	317	finally
    //   311	315	317	finally
    //   315	317	317	finally
    //   318	321	317	finally
  }
  
  /* Error */
  public static byte[] a(Context paramContext, String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 220	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 221	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore 6
    //   9: aload_0
    //   10: aload_1
    //   11: invokestatic 20	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 7
    //   16: aconst_null
    //   17: astore 4
    //   19: aconst_null
    //   20: astore 5
    //   22: aconst_null
    //   23: astore_0
    //   24: new 15	java/io/File
    //   27: dup
    //   28: aload 7
    //   30: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   33: iconst_1
    //   34: iconst_1
    //   35: iload_2
    //   36: i2l
    //   37: invokestatic 180	com/amap/api/mapcore2d/el:a	(Ljava/io/File;IIJ)Lcom/amap/api/mapcore2d/el;
    //   40: astore_1
    //   41: new 15	java/io/File
    //   44: dup
    //   45: aload 7
    //   47: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   50: astore_0
    //   51: aload_0
    //   52: invokevirtual 27	java/io/File:exists	()Z
    //   55: ifeq +57 -> 112
    //   58: aload_0
    //   59: invokevirtual 31	java/io/File:list	()[Ljava/lang/String;
    //   62: astore_0
    //   63: aload_0
    //   64: arraylength
    //   65: istore_3
    //   66: iconst_0
    //   67: istore_2
    //   68: iload_2
    //   69: iload_3
    //   70: if_icmpge +42 -> 112
    //   73: aload_0
    //   74: iload_2
    //   75: aaload
    //   76: astore 4
    //   78: aload 4
    //   80: ldc -33
    //   82: invokevirtual 227	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   85: ifne +6 -> 91
    //   88: goto +216 -> 304
    //   91: aload 6
    //   93: aload_1
    //   94: aload 4
    //   96: ldc -27
    //   98: invokevirtual 233	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   101: iconst_0
    //   102: aaload
    //   103: invokestatic 236	com/amap/api/mapcore2d/fd:a	(Lcom/amap/api/mapcore2d/el;Ljava/lang/String;)[B
    //   106: invokevirtual 237	java/io/ByteArrayOutputStream:write	([B)V
    //   109: goto +195 -> 304
    //   112: aload 6
    //   114: invokevirtual 241	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   117: astore 4
    //   119: aload 6
    //   121: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   124: goto +8 -> 132
    //   127: astore_0
    //   128: aload_0
    //   129: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   132: aload 4
    //   134: astore_0
    //   135: aload_1
    //   136: ifnull +133 -> 269
    //   139: aload_1
    //   140: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   143: aload 4
    //   145: areturn
    //   146: astore_0
    //   147: aload_0
    //   148: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   151: aload 4
    //   153: areturn
    //   154: astore_0
    //   155: goto +116 -> 271
    //   158: astore 4
    //   160: goto +25 -> 185
    //   163: astore 4
    //   165: goto +60 -> 225
    //   168: astore 4
    //   170: aload_0
    //   171: astore_1
    //   172: aload 4
    //   174: astore_0
    //   175: goto +96 -> 271
    //   178: astore_0
    //   179: aload 4
    //   181: astore_1
    //   182: aload_0
    //   183: astore 4
    //   185: aload_1
    //   186: astore_0
    //   187: aload 4
    //   189: ldc 33
    //   191: ldc -12
    //   193: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   196: aload 6
    //   198: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   201: goto +8 -> 209
    //   204: astore_0
    //   205: aload_0
    //   206: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   209: aload_1
    //   210: ifnull +55 -> 265
    //   213: aload_1
    //   214: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   217: goto +48 -> 265
    //   220: astore 4
    //   222: aload 5
    //   224: astore_1
    //   225: aload_1
    //   226: astore_0
    //   227: aload 4
    //   229: ldc 33
    //   231: ldc -12
    //   233: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   236: aload 6
    //   238: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   241: goto +8 -> 249
    //   244: astore_0
    //   245: aload_0
    //   246: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   249: aload_1
    //   250: ifnull +15 -> 265
    //   253: aload_1
    //   254: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   257: goto +8 -> 265
    //   260: astore_0
    //   261: aload_0
    //   262: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   265: iconst_0
    //   266: newarray byte
    //   268: astore_0
    //   269: aload_0
    //   270: areturn
    //   271: aload 6
    //   273: invokevirtual 242	java/io/ByteArrayOutputStream:close	()V
    //   276: goto +10 -> 286
    //   279: astore 4
    //   281: aload 4
    //   283: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   286: aload_1
    //   287: ifnull +15 -> 302
    //   290: aload_1
    //   291: invokevirtual 215	com/amap/api/mapcore2d/el:close	()V
    //   294: goto +8 -> 302
    //   297: astore_1
    //   298: aload_1
    //   299: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   302: aload_0
    //   303: athrow
    //   304: iload_2
    //   305: iconst_1
    //   306: iadd
    //   307: istore_2
    //   308: goto -240 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	311	0	paramContext	Context
    //   0	311	1	paramString	String
    //   0	311	2	paramInt	int
    //   65	6	3	i	int
    //   17	135	4	arrayOfByte	byte[]
    //   158	1	4	localThrowable	Throwable
    //   163	1	4	localIOException1	java.io.IOException
    //   168	12	4	localObject1	Object
    //   183	5	4	localContext	Context
    //   220	8	4	localIOException2	java.io.IOException
    //   279	3	4	localIOException3	java.io.IOException
    //   20	203	5	localObject2	Object
    //   7	265	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   14	32	7	str	String
    // Exception table:
    //   from	to	target	type
    //   119	124	127	java/io/IOException
    //   139	143	146	java/lang/Throwable
    //   41	66	154	finally
    //   78	88	154	finally
    //   91	109	154	finally
    //   112	119	154	finally
    //   41	66	158	java/lang/Throwable
    //   78	88	158	java/lang/Throwable
    //   91	109	158	java/lang/Throwable
    //   112	119	158	java/lang/Throwable
    //   41	66	163	java/io/IOException
    //   78	88	163	java/io/IOException
    //   91	109	163	java/io/IOException
    //   112	119	163	java/io/IOException
    //   24	41	168	finally
    //   187	196	168	finally
    //   227	236	168	finally
    //   24	41	178	java/lang/Throwable
    //   196	201	204	java/io/IOException
    //   24	41	220	java/io/IOException
    //   236	241	244	java/io/IOException
    //   213	217	260	java/lang/Throwable
    //   253	257	260	java/lang/Throwable
    //   271	276	279	java/io/IOException
    //   290	294	297	java/lang/Throwable
  }
  
  static byte[] a(el paramEl, String paramString)
  {
    return a(paramEl, paramString, true);
  }
  
  /* Error */
  static byte[] a(el paramEl, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: newarray byte
    //   3: astore 6
    //   5: aconst_null
    //   6: astore 5
    //   8: aconst_null
    //   9: astore 4
    //   11: aconst_null
    //   12: astore 8
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 250	com/amap/api/mapcore2d/el:a	(Ljava/lang/String;)Lcom/amap/api/mapcore2d/el$b;
    //   19: astore_3
    //   20: aload_3
    //   21: ifnonnull +22 -> 43
    //   24: aload_3
    //   25: ifnull +15 -> 40
    //   28: aload_3
    //   29: invokevirtual 253	com/amap/api/mapcore2d/el$b:close	()V
    //   32: aload 6
    //   34: areturn
    //   35: astore_0
    //   36: aload_0
    //   37: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   40: aload 6
    //   42: areturn
    //   43: aload 5
    //   45: astore 4
    //   47: aload_3
    //   48: astore 5
    //   50: aload_3
    //   51: iconst_0
    //   52: invokevirtual 256	com/amap/api/mapcore2d/el$b:a	(I)Ljava/io/InputStream;
    //   55: astore 7
    //   57: aload 7
    //   59: ifnonnull +40 -> 99
    //   62: aload 7
    //   64: ifnull +16 -> 80
    //   67: aload 7
    //   69: invokevirtual 259	java/io/InputStream:close	()V
    //   72: goto +8 -> 80
    //   75: astore_0
    //   76: aload_0
    //   77: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   80: aload_3
    //   81: ifnull +15 -> 96
    //   84: aload_3
    //   85: invokevirtual 253	com/amap/api/mapcore2d/el$b:close	()V
    //   88: aload 6
    //   90: areturn
    //   91: astore_0
    //   92: aload_0
    //   93: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   96: aload 6
    //   98: areturn
    //   99: aload 7
    //   101: invokevirtual 263	java/io/InputStream:available	()I
    //   104: newarray byte
    //   106: astore 4
    //   108: aload 7
    //   110: aload 4
    //   112: invokevirtual 267	java/io/InputStream:read	([B)I
    //   115: pop
    //   116: iload_2
    //   117: ifeq +9 -> 126
    //   120: aload_0
    //   121: aload_1
    //   122: invokevirtual 270	com/amap/api/mapcore2d/el:c	(Ljava/lang/String;)Z
    //   125: pop
    //   126: aload 7
    //   128: ifnull +16 -> 144
    //   131: aload 7
    //   133: invokevirtual 259	java/io/InputStream:close	()V
    //   136: goto +8 -> 144
    //   139: astore_0
    //   140: aload_0
    //   141: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   144: aload_3
    //   145: ifnull +15 -> 160
    //   148: aload_3
    //   149: invokevirtual 253	com/amap/api/mapcore2d/el$b:close	()V
    //   152: aload 4
    //   154: areturn
    //   155: astore_0
    //   156: aload_0
    //   157: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   160: aload 4
    //   162: areturn
    //   163: astore_1
    //   164: aload 4
    //   166: astore_0
    //   167: goto +15 -> 182
    //   170: astore_0
    //   171: aload 7
    //   173: astore 4
    //   175: goto +90 -> 265
    //   178: astore_1
    //   179: aload 6
    //   181: astore_0
    //   182: aload_0
    //   183: astore 6
    //   185: aload 7
    //   187: astore_0
    //   188: goto +22 -> 210
    //   191: astore_1
    //   192: aload 8
    //   194: astore_0
    //   195: goto +15 -> 210
    //   198: astore_0
    //   199: aconst_null
    //   200: astore_3
    //   201: goto +64 -> 265
    //   204: astore_1
    //   205: aconst_null
    //   206: astore_3
    //   207: aload 8
    //   209: astore_0
    //   210: aload_0
    //   211: astore 4
    //   213: aload_3
    //   214: astore 5
    //   216: aload_1
    //   217: ldc_w 272
    //   220: ldc_w 274
    //   223: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   226: aload_0
    //   227: ifnull +15 -> 242
    //   230: aload_0
    //   231: invokevirtual 259	java/io/InputStream:close	()V
    //   234: goto +8 -> 242
    //   237: astore_0
    //   238: aload_0
    //   239: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   242: aload_3
    //   243: ifnull +15 -> 258
    //   246: aload_3
    //   247: invokevirtual 253	com/amap/api/mapcore2d/el$b:close	()V
    //   250: aload 6
    //   252: areturn
    //   253: astore_0
    //   254: aload_0
    //   255: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   258: aload 6
    //   260: areturn
    //   261: astore_0
    //   262: aload 5
    //   264: astore_3
    //   265: aload 4
    //   267: ifnull +16 -> 283
    //   270: aload 4
    //   272: invokevirtual 259	java/io/InputStream:close	()V
    //   275: goto +8 -> 283
    //   278: astore_1
    //   279: aload_1
    //   280: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   283: aload_3
    //   284: ifnull +15 -> 299
    //   287: aload_3
    //   288: invokevirtual 253	com/amap/api/mapcore2d/el$b:close	()V
    //   291: goto +8 -> 299
    //   294: astore_1
    //   295: aload_1
    //   296: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   299: aload_0
    //   300: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	301	0	paramEl	el
    //   0	301	1	paramString	String
    //   0	301	2	paramBoolean	boolean
    //   19	269	3	localObject1	Object
    //   9	262	4	localObject2	Object
    //   6	257	5	localObject3	Object
    //   3	256	6	localObject4	Object
    //   55	131	7	localInputStream	java.io.InputStream
    //   12	196	8	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   28	32	35	java/lang/Throwable
    //   67	72	75	java/lang/Throwable
    //   84	88	91	java/lang/Throwable
    //   131	136	139	java/lang/Throwable
    //   148	152	155	java/lang/Throwable
    //   108	116	163	java/lang/Throwable
    //   120	126	163	java/lang/Throwable
    //   99	108	170	finally
    //   108	116	170	finally
    //   120	126	170	finally
    //   99	108	178	java/lang/Throwable
    //   50	57	191	java/lang/Throwable
    //   14	20	198	finally
    //   14	20	204	java/lang/Throwable
    //   230	234	237	java/lang/Throwable
    //   246	250	253	java/lang/Throwable
    //   50	57	261	finally
    //   216	226	261	finally
    //   270	275	278	java/lang/Throwable
    //   287	291	294	java/lang/Throwable
  }
  
  /* Error */
  public static long b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 15	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_1
    //   6: invokestatic 20	com/amap/api/mapcore2d/de:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   9: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore 5
    //   14: aload 5
    //   16: invokevirtual 27	java/io/File:exists	()Z
    //   19: ifne +5 -> 24
    //   22: lconst_0
    //   23: lreturn
    //   24: new 277	java/io/FileInputStream
    //   27: dup
    //   28: aload 5
    //   30: invokespecial 278	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   33: astore_1
    //   34: aload_1
    //   35: astore_0
    //   36: aload_1
    //   37: invokevirtual 279	java/io/FileInputStream:available	()I
    //   40: newarray byte
    //   42: astore 4
    //   44: aload_1
    //   45: astore_0
    //   46: aload_1
    //   47: aload 4
    //   49: invokevirtual 280	java/io/FileInputStream:read	([B)I
    //   52: pop
    //   53: aload_1
    //   54: astore_0
    //   55: aload 4
    //   57: invokestatic 283	com/amap/api/mapcore2d/cz:a	([B)Ljava/lang/String;
    //   60: invokestatic 287	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   63: lstore_2
    //   64: aload_1
    //   65: invokevirtual 288	java/io/FileInputStream:close	()V
    //   68: lload_2
    //   69: lreturn
    //   70: astore_0
    //   71: aload_0
    //   72: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   75: lload_2
    //   76: lreturn
    //   77: astore 4
    //   79: goto +23 -> 102
    //   82: astore 4
    //   84: goto +75 -> 159
    //   87: astore 4
    //   89: goto +97 -> 186
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_0
    //   95: goto +122 -> 217
    //   98: astore 4
    //   100: aconst_null
    //   101: astore_1
    //   102: aload_1
    //   103: astore_0
    //   104: aload 4
    //   106: ldc_w 290
    //   109: ldc_w 292
    //   112: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload_1
    //   116: astore_0
    //   117: aload 5
    //   119: invokevirtual 27	java/io/File:exists	()Z
    //   122: ifeq +23 -> 145
    //   125: aload_1
    //   126: astore_0
    //   127: aload 5
    //   129: invokevirtual 295	java/io/File:delete	()Z
    //   132: pop
    //   133: goto +12 -> 145
    //   136: astore 4
    //   138: aload_1
    //   139: astore_0
    //   140: aload 4
    //   142: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   145: aload_1
    //   146: ifnull +68 -> 214
    //   149: aload_1
    //   150: invokevirtual 288	java/io/FileInputStream:close	()V
    //   153: lconst_0
    //   154: lreturn
    //   155: astore 4
    //   157: aconst_null
    //   158: astore_1
    //   159: aload_1
    //   160: astore_0
    //   161: aload 4
    //   163: ldc_w 290
    //   166: ldc_w 292
    //   169: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   172: aload_1
    //   173: ifnull +41 -> 214
    //   176: aload_1
    //   177: invokevirtual 288	java/io/FileInputStream:close	()V
    //   180: lconst_0
    //   181: lreturn
    //   182: astore 4
    //   184: aconst_null
    //   185: astore_1
    //   186: aload_1
    //   187: astore_0
    //   188: aload 4
    //   190: ldc_w 290
    //   193: ldc_w 292
    //   196: invokestatic 40	com/amap/api/mapcore2d/dd:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   199: aload_1
    //   200: ifnull +14 -> 214
    //   203: aload_1
    //   204: invokevirtual 288	java/io/FileInputStream:close	()V
    //   207: lconst_0
    //   208: lreturn
    //   209: astore_0
    //   210: aload_0
    //   211: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   214: lconst_0
    //   215: lreturn
    //   216: astore_1
    //   217: aload_0
    //   218: ifnull +15 -> 233
    //   221: aload_0
    //   222: invokevirtual 288	java/io/FileInputStream:close	()V
    //   225: goto +8 -> 233
    //   228: astore_0
    //   229: aload_0
    //   230: invokevirtual 111	java/lang/Throwable:printStackTrace	()V
    //   233: aload_1
    //   234: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	235	0	paramContext	Context
    //   0	235	1	paramString	String
    //   63	13	2	l	long
    //   42	14	4	arrayOfByte	byte[]
    //   77	1	4	localThrowable1	Throwable
    //   82	1	4	localIOException1	java.io.IOException
    //   87	1	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   98	7	4	localThrowable2	Throwable
    //   136	5	4	localThrowable3	Throwable
    //   155	7	4	localIOException2	java.io.IOException
    //   182	7	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   12	116	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   64	68	70	java/lang/Throwable
    //   36	44	77	java/lang/Throwable
    //   46	53	77	java/lang/Throwable
    //   55	64	77	java/lang/Throwable
    //   36	44	82	java/io/IOException
    //   46	53	82	java/io/IOException
    //   55	64	82	java/io/IOException
    //   36	44	87	java/io/FileNotFoundException
    //   46	53	87	java/io/FileNotFoundException
    //   55	64	87	java/io/FileNotFoundException
    //   24	34	92	finally
    //   24	34	98	java/lang/Throwable
    //   117	125	136	java/lang/Throwable
    //   127	133	136	java/lang/Throwable
    //   24	34	155	java/io/IOException
    //   24	34	182	java/io/FileNotFoundException
    //   149	153	209	java/lang/Throwable
    //   176	180	209	java/lang/Throwable
    //   203	207	209	java/lang/Throwable
    //   36	44	216	finally
    //   46	53	216	finally
    //   55	64	216	finally
    //   104	115	216	finally
    //   117	125	216	finally
    //   127	133	216	finally
    //   140	145	216	finally
    //   161	172	216	finally
    //   188	199	216	finally
    //   221	225	228	java/lang/Throwable
  }
}
